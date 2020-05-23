module SDL2_bindings

using CEnum: @cenum

# Junk for macros that we should just filter.
const __FILE__ = Cvoid
const __LINE__ = Cvoid
const __BYTE_ORDER = Cvoid
const x = Cvoid

# Forward declare some methods.
function UpperBlit end
function UpperBlitScaled end
function BlitMap end

# This type is not supported by Clang.jl or Julia yet.
const AudioCVT = Cvoid

# Renamed WindowShapeMode
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_types.jl"))
# Qualified some type names
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_funcs.jl"))

end # module
