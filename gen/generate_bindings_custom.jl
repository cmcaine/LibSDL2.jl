using Clang
using Clang: LibClang

const dir = @__DIR__


"get file and line number"
function expand_location(cursor)
    loc = location(cursor)
    line = Cint[0]
    column = Cint[0]
    offset = Cint[0]
    LibClang.clang_getExpansionLocation(loc, C_NULL, line, column, offset)
    return filename(cursor), line[] #, column[], offset[]
end


function extract_comment(fn, line)
    lines = readlines(fn)
    commentlines = []
    if line - 1 < 1
        return ""
    end
    if strip(lines[line-1]) == "*/"
        for idx in line-2:-1:1
            !startswith(strip(lines[idx]), "*") && break
            push!(commentlines, replace(lines[idx], r"^\s*\* ? ?" => ""))
        end
        reverse!(commentlines)
    end
    return join(commentlines, "\n")
end


function doxygen2julia(str)
    str = replace(str, r"\\c ([^ ]+)" => s"`\1`")
    str = replace(str, "\\param " => "param: ")
    str = replace(str, "\\brief " => "")
    str = replace(str, "\\return " => "Return ")
    str = replace(str, r"\\sa (.*)" => s" - `\1`")
    str = replace(str, "\\code" => "```C")
    str = replace(str, "\\endcode" => "```")
    str = replace(str, "\\note " => "!!!note\n\n    ")
    str = replace(str, "\\warning " => "!!!warning\n\n    ")
    str = replace(str, "\\li " => " - ")
    str = replace(str, "\\\\" => Char(0))
    str = replace(str, r"\\([^\\])" => s":\1")
    str = replace(str, "\0" => "\\\\")
    str
end


function docstring(cursor)
    filename(cursor) == "" && return nothing
    fn, line = expand_location(cursor)
    body = doxygen2julia(extract_comment(fn, line))
    body == "" && return nothing
    # TODO: get the real signature of the thing, if it's a function.
    # rewrite can get that, probably.
    sig = replace(repr(cursor), r"CLCursor [^ ]* " => "")
    return """
        $sig

    $body
    """
end


function main()
    sdl2_version = "2.0.12"

    LIBSDL_INCLUDE = "SDL2-$sdl2_version/include/"

    # readdir() sorts the names, and Clang seems to generate the bindinds
    # sequentially in this order, so that should make our diffs easy to read
    # between versions
    LIBSDL_HEADERS = [joinpath(LIBSDL_INCLUDE, header) for header in readdir(LIBSDL_INCLUDE) if endswith(header, ".h")]

    # I think Jonathan excluded these, too.
    filter!(!fn -> occursin("test", fn), LIBSDL_HEADERS)
    filter!(!fn -> occursin("opengl", fn), LIBSDL_HEADERS)
    filter!(!fn -> occursin("config", fn), LIBSDL_HEADERS)
    filter!(!fn -> occursin("SDL_log", fn), LIBSDL_HEADERS)

    shitlist = [
        "SDL_FILE",
        "SDL_LINE",
        "BYTECAP",
        "OUT_Z_CAP",
        "OUT_CAP",
       ]

    docstrings = Dict()

    # create a work context
    ctx = DefaultContext()

    # parse headers
    parse_headers!(ctx, LIBSDL_HEADERS,
                   args=["-I", joinpath(LIBSDL_INCLUDE, ".."), map(x->"-I"*x, find_std_headers())...],
                   includes=vcat(LIBSDL_INCLUDE, CLANG_INCLUDE),
                   )

    # settings
    ctx.libname = "libsdl2"
    ctx.options["is_function_strictly_typed"] = false
    ctx.options["is_struct_mutable"] = true

    # write output
    api_file = joinpath(@__DIR__, "new_bindings", "libsdl2_api.jl")
    api_stream = open(api_file, "w")

    trans_unit = first(ctx.trans_units)

    for trans_unit in ctx.trans_units
        root_cursor = getcursor(trans_unit)
        push!(ctx.cursor_stack, root_cursor)
        header = spelling(root_cursor)
        @info "wrapping header: $header ..."
        # loop over all of the child cursors and wrap them, if appropriate.
        ctx.children = children(root_cursor)
        for (i, child) in enumerate(ctx.children)
            child_name = name(child)
            child_header = filename(child)
            ctx.children_index = i
            # choose which cursor to wrap
            startswith(child_name, "__") && continue  # skip compiler definitions
            child_name in keys(ctx.common_buffer) && continue  # already wrapped
            child_header != header && continue  # skip if cursor filename is not in the headers to be wrapped

            if any(occursin.(shitlist, child_name))
                @info "Ignoring $child_name"
                continue
            end

            docname = replace(child_name, r"\(.*\)" => "")
            if !isempty(docname)
                doc = docstring(child)
                if !isnothing(doc)
                    docstrings[docname] = doc
                end
            end

            wrap!(ctx, child)
        end
        @info "writing $(api_file)"
        println(api_stream, "# Julia wrapper for header: $(basename(header))")
        println(api_stream, "# Automatically generated using Clang.jl\n")
        #= ctx.api_buffer = rewrite(ctx.api_buffer) =#
        print_buffer(api_stream, ctx.api_buffer)
        empty!(ctx.api_buffer)  # clean up api_buffer for the next header
    end
    close(api_stream)

    # write "common" definitions: types, typealiases, etc.
    common_file = "$dir/new_bindings/libsdl2_types.jl"
    open(common_file, "w") do f
        println(f, "# Automatically generated using Clang.jl\n")
        print_buffer(f, dump_to_buffer(ctx.common_buffer))
    end

    docsfile = "$dir/new_bindings/libsdl2_docs.jl"
    open(docsfile, "w") do f
        println(f, "# Automatically generated using Clang.jl\n")
        for (name, doc) in docstrings
            # This is pretty ugly, but it gets the job done.
            println(f, """if isdefined(@__MODULE__, Symbol("$name"))
                        @eval @doc \"""
                    $doc
                    \$(
                        if $name === Nothing
                            "Treat as a void pointer\\n"
                        else
                            replace(string(@doc $name), r"^No documentation found.\\n" => "")
                        end
                    )
                    \""" $name
                    end
                    """)
        end
    end

    # remove SDL_ and copy over.
    function rm_SDL_(fn)
        str = String(read(fn))
        str = replace(str, r"(::|[^:])SDL_" => s"\1");
        write(fn, str)
    end
    rm_SDL_(docsfile)
    rm_SDL_(api_file)
    rm_SDL_(common_file)

    return nothing
end

# uncomment the following code to generate dependency and template files
# copydeps(dirname(api_file))
# print_template(joinpath(dirname(api_file), "LibTemplate.jl"))



#=
# Seems to work.
for c in ctx.children
    filename(c) == "" && continue
    fn, line = expand_location(c)
    body = doxygen2julia(extract_comment(fn, line))
    body == "" && continue
    # TODO: get the real signature of the thing, if it's a function.
    # rewrite can get that, probably.
    sig = replace(repr(c), r"CLCursor [^ ]* " => "")
    println("""
        $sig

    $body
    """)
end
=#

#= function rewrite!(e::Expr) =#
#=     # Add deprecated warning to some functions =#
#=     #   ref: [Remove unused CompilationDatabase::MappedSources](https://reviews.llvm.org/D32351) =#
#=     fname = e.args[1].args[1] =#
#=     deprecated_func = [ =#
#=         # :clang_CompileCommand_getNumMappedSources, # not export =#
#=         :clang_CompileCommand_getMappedSourcePath, =#
#=         :clang_CompileCommand_getMappedSourceContent, =#
#=     ] =#

#=     if e.head == :function && fname in deprecated_func =#
#=         msg = """ =#
#=         `$fname` Left here for backward compatibility. =#
#=         No mapped sources exists in the C++ backend anymore. =#
#=         This function just return Null `CXString`. =#
#=         See: =#
#=         - [Remove unused CompilationDatabase::MappedSources](https://reviews.llvm.org/D32351) =#
#=         """ =#
#=         insert!(e.args[2].args, 1, Expr(:macrocall, Symbol("@warn"), :Base, msg)) =#
#=     end =#
#=     e =#
#= end =#
#= rewrite!(x) = x =#
#= rewrite(v::Vector) = map(rewrite!, v) =#

