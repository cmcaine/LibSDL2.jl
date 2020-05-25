module LibSDL2

using CEnum: @cenum

# This is temporary, don't worry.
if isfile("/usr/lib/libSDL2.so")
    @info "Using system libSDL2"
    # Override this with `@eval LibSDL2 const libsdl2 = $(SDL2_jll.libsdl2)`
    const libsdl2 = "libSDL2"
else
    @info "Using SDL2_jll"
    @eval using SDL2_jll
    const libsdl2 = SDL2_jll.libsdl2
end

# Forward declare some methods.
function UpperBlit end
function UpperBlitScaled end
function BlitMap end

# This type is not supported by Clang.jl or Julia yet.
const AudioCVT = Cvoid

include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_types.jl"))
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_funcs.jl"))
# Low stakes gripe: This adds 2s to precompilation time, but I could fully generate it
# ahead of time with a bit of effort.
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_docs.jl"))

# Macros ported by NHDaly
MUSTLOCK(S::Ptr{Surface}) = ((unsafe_load(S).flags & RLEACCEL) != 0)
LoadBMP(file) = LoadBMP_RW(RWFromFile(file, "rb"), 1)
SaveBMP(surface, file) = SaveBMP_RW(surface, RWFromFile(file, "wb" ), 1)

WINDOWPOS_CENTERED_DISPLAY(X) = ( WINDOWPOS_CENTERED_MASK | (X) )
WINDOWPOS_CENTERED() = WINDOWPOS_CENTERED_DISPLAY(0)
WINDOWPOS_ISCENTERED(X) = ( ( (X) & 0xFFFF0000 ) == WINDOWPOS_CENTERED_MASK )

SCANCODE_TO_KEYCODE(X) = (X | SDLK_SCANCODE_MASK)

end # module
