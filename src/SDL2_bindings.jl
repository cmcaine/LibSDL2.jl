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

# Renamed WindowShapeMode, a few edits to Events
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_types.jl"))
# Qualified some type names
include(joinpath(@__DIR__, "..", "gen", "bindings", "libsdl2_funcs.jl"))
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
