# Automatically generated using Clang.jl
# Then edited slightly


const INIT_TIMER = UInt32(0x00000001)
const INIT_AUDIO = UInt32(0x00000010)
const INIT_VIDEO = UInt32(0x00000020)
const INIT_JOYSTICK = UInt32(0x00000200)
const INIT_HAPTIC = UInt32(0x00001000)
const INIT_GAMECONTROLLER = UInt32(0x00002000)
const INIT_EVENTS = UInt32(0x00004000)
const INIT_SENSOR = UInt32(0x00008000)
const INIT_NOPARACHUTE = UInt32(0x00100000)
const INIT_EVERYTHING = ((((((INIT_TIMER | INIT_AUDIO) | INIT_VIDEO) | INIT_EVENTS) | INIT_JOYSTICK) | INIT_HAPTIC) | INIT_GAMECONTROLLER) | INIT_SENSOR
const ASSERT_LEVEL = 2

# Skipping MacroDefinition: TriggerBreakpoint ( ) __asm__ __volatile__ ( "int $3\n\t" )

const NULL_WHILE_LOOP_CONDITION = 0

# Skipping MacroDefinition: disabled_assert ( condition ) do { ( void ) sizeof ( ( condition ) ) ; } while ( NULL_WHILE_LOOP_CONDITION )
# Skipping MacroDefinition: enabled_assert ( condition ) do { while ( ! ( condition ) ) { static struct AssertData sdl_assert_data = { 0 , 0 , # condition , 0 , 0 , 0 , 0 } ; const AssertState sdl_assert_state = ReportAssertion ( & sdl_assert_data , FUNCTION , FILE , LINE ) ; if ( sdl_assert_state == ASSERTION_RETRY ) { continue ; /* go again. */ } else if ( sdl_assert_state == ASSERTION_BREAK ) { TriggerBreakpoint ( ) ; } break ; /* not retrying. */ } } while ( NULL_WHILE_LOOP_CONDITION )
# Skipping MacroDefinition: assert ( condition ) enabled_assert ( condition )
# Skipping MacroDefinition: assert_release ( condition ) enabled_assert ( condition )
# Skipping MacroDefinition: assert_paranoid ( condition ) disabled_assert ( condition )
# Skipping MacroDefinition: assert_always ( condition ) enabled_assert ( condition )

@cenum AssertState::UInt32 begin
    ASSERTION_RETRY = 0
    ASSERTION_BREAK = 1
    ASSERTION_ABORT = 2
    ASSERTION_IGNORE = 3
    ASSERTION_ALWAYS_IGNORE = 4
end


const assert_state = AssertState

mutable struct AssertData
    always_ignore::Cint
    trigger_count::UInt32
    condition::Cstring
    filename::Cstring
    linenum::Cint
    _function::Cstring
    next::Ptr{AssertData}
end

const assert_data = AssertData
const AssertionHandler = Ptr{Cvoid}

# Skipping MacroDefinition: CompilerBarrier ( ) __asm__ __volatile__ ( "" : : : "memory" )
# Skipping MacroDefinition: MemoryBarrierRelease ( ) CompilerBarrier ( )
# Skipping MacroDefinition: MemoryBarrierAcquire ( ) CompilerBarrier ( )
# Skipping MacroDefinition: AtomicIncRef ( a ) AtomicAdd ( a , 1 )
# Skipping MacroDefinition: AtomicDecRef ( a ) ( AtomicAdd ( a , - 1 ) == 1 )

const SpinLock = Cint

mutable struct atomic_t
    value::Cint
end

const AUDIO_MASK_BITSIZE = Float32(0x0f)
const AUDIO_MASK_DATATYPE = 1 << 8
const AUDIO_MASK_ENDIAN = 1 << 12
const AUDIO_MASK_SIGNED = 1 << 15

# Skipping MacroDefinition: AUDIO_BITSIZE ( x ) ( x & AUDIO_MASK_BITSIZE )
# Skipping MacroDefinition: AUDIO_ISFLOAT ( x ) ( x & AUDIO_MASK_DATATYPE )
# Skipping MacroDefinition: AUDIO_ISBIGENDIAN ( x ) ( x & AUDIO_MASK_ENDIAN )
# Skipping MacroDefinition: AUDIO_ISSIGNED ( x ) ( x & AUDIO_MASK_SIGNED )
# Skipping MacroDefinition: AUDIO_ISINT ( x ) ( ! AUDIO_ISFLOAT ( x ) )
# Skipping MacroDefinition: AUDIO_ISLITTLEENDIAN ( x ) ( ! AUDIO_ISBIGENDIAN ( x ) )
# Skipping MacroDefinition: AUDIO_ISUNSIGNED ( x ) ( ! AUDIO_ISSIGNED ( x ) )

const AUDIO_U8 = 0x0008
const AUDIO_S8 = 0x8008
const AUDIO_U16LSB = 0x0010
const AUDIO_S16LSB = 0x8010
const AUDIO_U16MSB = 0x1010
const AUDIO_S16MSB = 0x9010
const AUDIO_U16 = AUDIO_U16LSB
const AUDIO_S16 = AUDIO_S16LSB
const AUDIO_S32LSB = 0x8020
const AUDIO_S32MSB = 0x9020
const AUDIO_S32 = AUDIO_S32LSB
const AUDIO_F32LSB = 0x8120
const AUDIO_F32MSB = 0x9120
const AUDIO_F32 = AUDIO_F32LSB
const AUDIO_U16SYS = AUDIO_U16LSB
const AUDIO_S16SYS = AUDIO_S16LSB
const AUDIO_S32SYS = AUDIO_S32LSB
const AUDIO_F32SYS = AUDIO_F32LSB
const AUDIO_ALLOW_FREQUENCY_CHANGE = 0x00000001
const AUDIO_ALLOW_FORMAT_CHANGE = 0x00000002
const AUDIO_ALLOW_CHANNELS_CHANGE = 0x00000004
const AUDIO_ALLOW_SAMPLES_CHANGE = 0x00000008
const AUDIO_ALLOW_ANY_CHANGE = ((AUDIO_ALLOW_FREQUENCY_CHANGE | AUDIO_ALLOW_FORMAT_CHANGE) | AUDIO_ALLOW_CHANNELS_CHANGE) | AUDIO_ALLOW_SAMPLES_CHANGE
const AUDIOCVT_MAX_FILTERS = 9

# Skipping MacroDefinition: AUDIOCVT_PACKED __attribute__ ( ( packed ) )
# Skipping MacroDefinition: LoadWAV ( file , spec , audio_buf , audio_len ) LoadWAV_RW ( RWFromFile ( file , "rb" ) , 1 , spec , audio_buf , audio_len )

const MIX_MAXVOLUME = 128
const Uint16 = UInt16
const AudioFormat = Uint16
const AudioCallback = Ptr{Cvoid}
const Uint8 = UInt8
const Uint32 = UInt32

mutable struct AudioSpec
    freq::Cint
    format::AudioFormat
    channels::Uint8
    silence::Uint8
    samples::Uint16
    padding::Uint16
    size::Uint32
    callback::AudioCallback
    userdata::Ptr{Cvoid}
end

const AudioFilter = Ptr{Cvoid}
const AudioDeviceID = Uint32

@cenum AudioStatus::UInt32 begin
    AUDIO_STOPPED = 0
    AUDIO_PLAYING = 1
    AUDIO_PAUSED = 2
end


const _AudioStream = Cvoid
const AudioStream = _AudioStream

@cenum BlendMode::UInt32 begin
    BLENDMODE_NONE = 0
    BLENDMODE_BLEND = 1
    BLENDMODE_ADD = 2
    BLENDMODE_MOD = 4
    BLENDMODE_MUL = 8
    BLENDMODE_INVALID = 2147483647
end

@cenum BlendOperation::UInt32 begin
    BLENDOPERATION_ADD = 1
    BLENDOPERATION_SUBTRACT = 2
    BLENDOPERATION_REV_SUBTRACT = 3
    BLENDOPERATION_MINIMUM = 4
    BLENDOPERATION_MAXIMUM = 5
end

@cenum BlendFactor::UInt32 begin
    BLENDFACTOR_ZERO = 1
    BLENDFACTOR_ONE = 2
    BLENDFACTOR_SRC_COLOR = 3
    BLENDFACTOR_ONE_MINUS_SRC_COLOR = 4
    BLENDFACTOR_SRC_ALPHA = 5
    BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 6
    BLENDFACTOR_DST_COLOR = 7
    BLENDFACTOR_ONE_MINUS_DST_COLOR = 8
    BLENDFACTOR_DST_ALPHA = 9
    BLENDFACTOR_ONE_MINUS_DST_ALPHA = 10
end


const CACHELINE_SIZE = 128
const LIL_ENDIAN = 1234
const BIG_ENDIAN = 4321

# Skipping MacroDefinition: SwapLE16 ( X ) ( X )
# Skipping MacroDefinition: SwapLE32 ( X ) ( X )
# Skipping MacroDefinition: SwapLE64 ( X ) ( X )
# Skipping MacroDefinition: SwapFloatLE ( X ) ( X )
# Skipping MacroDefinition: SwapBE16 ( X ) Swap16 ( X )
# Skipping MacroDefinition: SwapBE32 ( X ) Swap32 ( X )
# Skipping MacroDefinition: SwapBE64 ( X ) Swap64 ( X )
# Skipping MacroDefinition: SwapFloatBE ( X ) SwapFloat ( X )
# Skipping MacroDefinition: OutOfMemory ( ) Error ( ENOMEM )
# Skipping MacroDefinition: Unsupported ( ) Error ( UNSUPPORTED )
# Skipping MacroDefinition: InvalidParamError ( param ) SetError ( "Parameter '%s' is invalid" , ( param ) )

@cenum errorcode::UInt32 begin
    ENOMEM = 0
    EFREAD = 1
    EFWRITE = 2
    EFSEEK = 3
    UNSUPPORTED = 4
    LASTERROR = 5
end


const RELEASED = 0
const PRESSED = 1
const TEXTEDITINGEVENT_TEXT_SIZE = 32
const TEXTINPUTEVENT_TEXT_SIZE = 32
const QUERY = -1
const IGNORE = 0
const DISABLE = 0
const ENABLE = 1

# Skipping MacroDefinition: GetEventState ( type ) EventState ( type , QUERY )

@cenum EventType::UInt32 begin
    FIRSTEVENT = 0
    QUIT = 256
    APP_TERMINATING = 257
    APP_LOWMEMORY = 258
    APP_WILLENTERBACKGROUND = 259
    APP_DIDENTERBACKGROUND = 260
    APP_WILLENTERFOREGROUND = 261
    APP_DIDENTERFOREGROUND = 262
    DISPLAYEVENT = 336
    WINDOWEVENT = 512
    SYSWMEVENT = 513
    KEYDOWN = 768
    KEYUP = 769
    TEXTEDITING = 770
    TEXTINPUT = 771
    KEYMAPCHANGED = 772
    MOUSEMOTION = 1024
    MOUSEBUTTONDOWN = 1025
    MOUSEBUTTONUP = 1026
    MOUSEWHEEL = 1027
    JOYAXISMOTION = 1536
    JOYBALLMOTION = 1537
    JOYHATMOTION = 1538
    JOYBUTTONDOWN = 1539
    JOYBUTTONUP = 1540
    JOYDEVICEADDED = 1541
    JOYDEVICEREMOVED = 1542
    CONTROLLERAXISMOTION = 1616
    CONTROLLERBUTTONDOWN = 1617
    CONTROLLERBUTTONUP = 1618
    CONTROLLERDEVICEADDED = 1619
    CONTROLLERDEVICEREMOVED = 1620
    CONTROLLERDEVICEREMAPPED = 1621
    FINGERDOWN = 1792
    FINGERUP = 1793
    FINGERMOTION = 1794
    DOLLARGESTURE = 2048
    DOLLARRECORD = 2049
    MULTIGESTURE = 2050
    CLIPBOARDUPDATE = 2304
    DROPFILE = 4096
    DROPTEXT = 4097
    DROPBEGIN = 4098
    DROPCOMPLETE = 4099
    AUDIODEVICEADDED = 4352
    AUDIODEVICEREMOVED = 4353
    SENSORUPDATE = 4608
    RENDER_TARGETS_RESET = 8192
    RENDER_DEVICE_RESET = 8193
    USEREVENT = 32768
    LASTEVENT = 65535
end


mutable struct CommonEvent
    type::EventType
    timestamp::Uint32
end

const Sint32 = Int32

mutable struct DisplayEvent
    type::EventType
    timestamp::Uint32
    display::Uint32
    event::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    data1::Sint32
end

mutable struct WindowEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    event::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    data1::Sint32
    data2::Sint32
end

@cenum Scancode::UInt32 begin
    SCANCODE_UNKNOWN = 0
    SCANCODE_A = 4
    SCANCODE_B = 5
    SCANCODE_C = 6
    SCANCODE_D = 7
    SCANCODE_E = 8
    SCANCODE_F = 9
    SCANCODE_G = 10
    SCANCODE_H = 11
    SCANCODE_I = 12
    SCANCODE_J = 13
    SCANCODE_K = 14
    SCANCODE_L = 15
    SCANCODE_M = 16
    SCANCODE_N = 17
    SCANCODE_O = 18
    SCANCODE_P = 19
    SCANCODE_Q = 20
    SCANCODE_R = 21
    SCANCODE_S = 22
    SCANCODE_T = 23
    SCANCODE_U = 24
    SCANCODE_V = 25
    SCANCODE_W = 26
    SCANCODE_X = 27
    SCANCODE_Y = 28
    SCANCODE_Z = 29
    SCANCODE_1 = 30
    SCANCODE_2 = 31
    SCANCODE_3 = 32
    SCANCODE_4 = 33
    SCANCODE_5 = 34
    SCANCODE_6 = 35
    SCANCODE_7 = 36
    SCANCODE_8 = 37
    SCANCODE_9 = 38
    SCANCODE_0 = 39
    SCANCODE_RETURN = 40
    SCANCODE_ESCAPE = 41
    SCANCODE_BACKSPACE = 42
    SCANCODE_TAB = 43
    SCANCODE_SPACE = 44
    SCANCODE_MINUS = 45
    SCANCODE_EQUALS = 46
    SCANCODE_LEFTBRACKET = 47
    SCANCODE_RIGHTBRACKET = 48
    SCANCODE_BACKSLASH = 49
    SCANCODE_NONUSHASH = 50
    SCANCODE_SEMICOLON = 51
    SCANCODE_APOSTROPHE = 52
    SCANCODE_GRAVE = 53
    SCANCODE_COMMA = 54
    SCANCODE_PERIOD = 55
    SCANCODE_SLASH = 56
    SCANCODE_CAPSLOCK = 57
    SCANCODE_F1 = 58
    SCANCODE_F2 = 59
    SCANCODE_F3 = 60
    SCANCODE_F4 = 61
    SCANCODE_F5 = 62
    SCANCODE_F6 = 63
    SCANCODE_F7 = 64
    SCANCODE_F8 = 65
    SCANCODE_F9 = 66
    SCANCODE_F10 = 67
    SCANCODE_F11 = 68
    SCANCODE_F12 = 69
    SCANCODE_PRINTSCREEN = 70
    SCANCODE_SCROLLLOCK = 71
    SCANCODE_PAUSE = 72
    SCANCODE_INSERT = 73
    SCANCODE_HOME = 74
    SCANCODE_PAGEUP = 75
    SCANCODE_DELETE = 76
    SCANCODE_END = 77
    SCANCODE_PAGEDOWN = 78
    SCANCODE_RIGHT = 79
    SCANCODE_LEFT = 80
    SCANCODE_DOWN = 81
    SCANCODE_UP = 82
    SCANCODE_NUMLOCKCLEAR = 83
    SCANCODE_KP_DIVIDE = 84
    SCANCODE_KP_MULTIPLY = 85
    SCANCODE_KP_MINUS = 86
    SCANCODE_KP_PLUS = 87
    SCANCODE_KP_ENTER = 88
    SCANCODE_KP_1 = 89
    SCANCODE_KP_2 = 90
    SCANCODE_KP_3 = 91
    SCANCODE_KP_4 = 92
    SCANCODE_KP_5 = 93
    SCANCODE_KP_6 = 94
    SCANCODE_KP_7 = 95
    SCANCODE_KP_8 = 96
    SCANCODE_KP_9 = 97
    SCANCODE_KP_0 = 98
    SCANCODE_KP_PERIOD = 99
    SCANCODE_NONUSBACKSLASH = 100
    SCANCODE_APPLICATION = 101
    SCANCODE_POWER = 102
    SCANCODE_KP_EQUALS = 103
    SCANCODE_F13 = 104
    SCANCODE_F14 = 105
    SCANCODE_F15 = 106
    SCANCODE_F16 = 107
    SCANCODE_F17 = 108
    SCANCODE_F18 = 109
    SCANCODE_F19 = 110
    SCANCODE_F20 = 111
    SCANCODE_F21 = 112
    SCANCODE_F22 = 113
    SCANCODE_F23 = 114
    SCANCODE_F24 = 115
    SCANCODE_EXECUTE = 116
    SCANCODE_HELP = 117
    SCANCODE_MENU = 118
    SCANCODE_SELECT = 119
    SCANCODE_STOP = 120
    SCANCODE_AGAIN = 121
    SCANCODE_UNDO = 122
    SCANCODE_CUT = 123
    SCANCODE_COPY = 124
    SCANCODE_PASTE = 125
    SCANCODE_FIND = 126
    SCANCODE_MUTE = 127
    SCANCODE_VOLUMEUP = 128
    SCANCODE_VOLUMEDOWN = 129
    SCANCODE_KP_COMMA = 133
    SCANCODE_KP_EQUALSAS400 = 134
    SCANCODE_INTERNATIONAL1 = 135
    SCANCODE_INTERNATIONAL2 = 136
    SCANCODE_INTERNATIONAL3 = 137
    SCANCODE_INTERNATIONAL4 = 138
    SCANCODE_INTERNATIONAL5 = 139
    SCANCODE_INTERNATIONAL6 = 140
    SCANCODE_INTERNATIONAL7 = 141
    SCANCODE_INTERNATIONAL8 = 142
    SCANCODE_INTERNATIONAL9 = 143
    SCANCODE_LANG1 = 144
    SCANCODE_LANG2 = 145
    SCANCODE_LANG3 = 146
    SCANCODE_LANG4 = 147
    SCANCODE_LANG5 = 148
    SCANCODE_LANG6 = 149
    SCANCODE_LANG7 = 150
    SCANCODE_LANG8 = 151
    SCANCODE_LANG9 = 152
    SCANCODE_ALTERASE = 153
    SCANCODE_SYSREQ = 154
    SCANCODE_CANCEL = 155
    SCANCODE_CLEAR = 156
    SCANCODE_PRIOR = 157
    SCANCODE_RETURN2 = 158
    SCANCODE_SEPARATOR = 159
    SCANCODE_OUT = 160
    SCANCODE_OPER = 161
    SCANCODE_CLEARAGAIN = 162
    SCANCODE_CRSEL = 163
    SCANCODE_EXSEL = 164
    SCANCODE_KP_00 = 176
    SCANCODE_KP_000 = 177
    SCANCODE_THOUSANDSSEPARATOR = 178
    SCANCODE_DECIMALSEPARATOR = 179
    SCANCODE_CURRENCYUNIT = 180
    SCANCODE_CURRENCYSUBUNIT = 181
    SCANCODE_KP_LEFTPAREN = 182
    SCANCODE_KP_RIGHTPAREN = 183
    SCANCODE_KP_LEFTBRACE = 184
    SCANCODE_KP_RIGHTBRACE = 185
    SCANCODE_KP_TAB = 186
    SCANCODE_KP_BACKSPACE = 187
    SCANCODE_KP_A = 188
    SCANCODE_KP_B = 189
    SCANCODE_KP_C = 190
    SCANCODE_KP_D = 191
    SCANCODE_KP_E = 192
    SCANCODE_KP_F = 193
    SCANCODE_KP_XOR = 194
    SCANCODE_KP_POWER = 195
    SCANCODE_KP_PERCENT = 196
    SCANCODE_KP_LESS = 197
    SCANCODE_KP_GREATER = 198
    SCANCODE_KP_AMPERSAND = 199
    SCANCODE_KP_DBLAMPERSAND = 200
    SCANCODE_KP_VERTICALBAR = 201
    SCANCODE_KP_DBLVERTICALBAR = 202
    SCANCODE_KP_COLON = 203
    SCANCODE_KP_HASH = 204
    SCANCODE_KP_SPACE = 205
    SCANCODE_KP_AT = 206
    SCANCODE_KP_EXCLAM = 207
    SCANCODE_KP_MEMSTORE = 208
    SCANCODE_KP_MEMRECALL = 209
    SCANCODE_KP_MEMCLEAR = 210
    SCANCODE_KP_MEMADD = 211
    SCANCODE_KP_MEMSUBTRACT = 212
    SCANCODE_KP_MEMMULTIPLY = 213
    SCANCODE_KP_MEMDIVIDE = 214
    SCANCODE_KP_PLUSMINUS = 215
    SCANCODE_KP_CLEAR = 216
    SCANCODE_KP_CLEARENTRY = 217
    SCANCODE_KP_BINARY = 218
    SCANCODE_KP_OCTAL = 219
    SCANCODE_KP_DECIMAL = 220
    SCANCODE_KP_HEXADECIMAL = 221
    SCANCODE_LCTRL = 224
    SCANCODE_LSHIFT = 225
    SCANCODE_LALT = 226
    SCANCODE_LGUI = 227
    SCANCODE_RCTRL = 228
    SCANCODE_RSHIFT = 229
    SCANCODE_RALT = 230
    SCANCODE_RGUI = 231
    SCANCODE_MODE = 257
    SCANCODE_AUDIONEXT = 258
    SCANCODE_AUDIOPREV = 259
    SCANCODE_AUDIOSTOP = 260
    SCANCODE_AUDIOPLAY = 261
    SCANCODE_AUDIOMUTE = 262
    SCANCODE_MEDIASELECT = 263
    SCANCODE_WWW = 264
    SCANCODE_MAIL = 265
    SCANCODE_CALCULATOR = 266
    SCANCODE_COMPUTER = 267
    SCANCODE_AC_SEARCH = 268
    SCANCODE_AC_HOME = 269
    SCANCODE_AC_BACK = 270
    SCANCODE_AC_FORWARD = 271
    SCANCODE_AC_STOP = 272
    SCANCODE_AC_REFRESH = 273
    SCANCODE_AC_BOOKMARKS = 274
    SCANCODE_BRIGHTNESSDOWN = 275
    SCANCODE_BRIGHTNESSUP = 276
    SCANCODE_DISPLAYSWITCH = 277
    SCANCODE_KBDILLUMTOGGLE = 278
    SCANCODE_KBDILLUMDOWN = 279
    SCANCODE_KBDILLUMUP = 280
    SCANCODE_EJECT = 281
    SCANCODE_SLEEP = 282
    SCANCODE_APP1 = 283
    SCANCODE_APP2 = 284
    SCANCODE_AUDIOREWIND = 285
    SCANCODE_AUDIOFASTFORWARD = 286
    NUM_SCANCODES = 512
end


const Keycode = Sint32

mutable struct Keysym
    scancode::Scancode
    sym::Keycode
    mod::Uint16
    unused::Uint32
end

mutable struct KeyboardEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    state::Uint8
    repeat::Uint8
    padding2::Uint8
    padding3::Uint8
    keysym::Keysym
end

mutable struct TextEditingEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, UInt8}
    start::Sint32
    length::Sint32
end

mutable struct TextInputEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    text::NTuple{32, UInt8}
end

mutable struct MouseMotionEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    state::Uint32
    x::Sint32
    y::Sint32
    xrel::Sint32
    yrel::Sint32
end

mutable struct MouseButtonEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    button::Uint8
    state::Uint8
    clicks::Uint8
    padding1::Uint8
    x::Sint32
    y::Sint32
end

mutable struct MouseWheelEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    which::Uint32
    x::Sint32
    y::Sint32
    direction::Uint32
end

const JoystickID = Sint32
const Sint16 = Int16

mutable struct JoyAxisEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

mutable struct JoyBallEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    ball::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    xrel::Sint16
    yrel::Sint16
end

mutable struct JoyHatEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    hat::Uint8
    value::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct JoyButtonEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct JoyDeviceEvent
    type::EventType
    timestamp::Uint32
    which::Sint32
end

mutable struct ControllerAxisEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    axis::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
    value::Sint16
    padding4::Uint16
end

mutable struct ControllerButtonEvent
    type::EventType
    timestamp::Uint32
    which::JoystickID
    button::Uint8
    state::Uint8
    padding1::Uint8
    padding2::Uint8
end

mutable struct ControllerDeviceEvent
    type::EventType
    timestamp::Uint32
    which::Sint32
end

mutable struct AudioDeviceEvent
    type::EventType
    timestamp::Uint32
    which::Uint32
    iscapture::Uint8
    padding1::Uint8
    padding2::Uint8
    padding3::Uint8
end

const Sint64 = Int64
const TouchID = Sint64
const FingerID = Sint64

mutable struct TouchFingerEvent
    type::EventType
    timestamp::Uint32
    touchId::TouchID
    fingerId::FingerID
    x::Cfloat
    y::Cfloat
    dx::Cfloat
    dy::Cfloat
    pressure::Cfloat
    windowID::Uint32
end

mutable struct MultiGestureEvent
    type::EventType
    timestamp::Uint32
    touchId::TouchID
    dTheta::Cfloat
    dDist::Cfloat
    x::Cfloat
    y::Cfloat
    numFingers::Uint16
    padding::Uint16
end

const GestureID = Sint64

mutable struct DollarGestureEvent
    type::EventType
    timestamp::Uint32
    touchId::TouchID
    gestureId::GestureID
    numFingers::Uint32
    error::Cfloat
    x::Cfloat
    y::Cfloat
end

mutable struct DropEvent
    type::EventType
    timestamp::Uint32
    file::Cstring
    windowID::Uint32
end

mutable struct SensorEvent
    type::EventType
    timestamp::Uint32
    which::Sint32
    data::NTuple{6, Cfloat}
end

mutable struct QuitEvent
    type::EventType
    timestamp::Uint32
end

mutable struct OSEvent
    type::EventType
    timestamp::Uint32
end

mutable struct UserEvent
    type::EventType
    timestamp::Uint32
    windowID::Uint32
    code::Sint32
    data1::Ptr{Cvoid}
    data2::Ptr{Cvoid}
end

mutable struct version
    major::Uint8
    minor::Uint8
    patch::Uint8
end

@cenum SYSWM_TYPE::UInt32 begin
    SYSWM_UNKNOWN = 0
    SYSWM_WINDOWS = 1
    SYSWM_X11 = 2
    SYSWM_DIRECTFB = 3
    SYSWM_COCOA = 4
    SYSWM_UIKIT = 5
    SYSWM_WAYLAND = 6
    SYSWM_MIR = 7
    SYSWM_WINRT = 8
    SYSWM_ANDROID = 9
    SYSWM_VIVANTE = 10
    SYSWM_OS2 = 11
    SYSWM_HAIKU = 12
end


mutable struct ANONYMOUS6_msg
    dummy::Cint
end

mutable struct SysWMmsg
    version::version
    subsystem::SYSWM_TYPE
    msg::ANONYMOUS6_msg
end

mutable struct SysWMEvent
    type::EventType
    timestamp::Uint32
    msg::Ptr{SysWMmsg}
end

#= added common fields =#
mutable struct Event
    type::EventType
    timestamp::Uint32
    padding::NTuple{48, Uint8}
end

const compile_time_assert_Event = NTuple{1, Cint}

@cenum eventaction::UInt32 begin
    ADDEVENT = 0
    PEEKEVENT = 1
    GETEVENT = 2
end


const EventFilter = Ptr{Cvoid}

# Skipping MacroDefinition: GameControllerAddMappingsFromFile ( file ) GameControllerAddMappingsFromRW ( RWFromFile ( file , "rb" ) , 1 )

const _GameController = Cvoid
const GameController = _GameController

@cenum GameControllerType::UInt32 begin
    CONTROLLER_TYPE_UNKNOWN = 0
    CONTROLLER_TYPE_XBOX360 = 1
    CONTROLLER_TYPE_XBOXONE = 2
    CONTROLLER_TYPE_PS3 = 3
    CONTROLLER_TYPE_PS4 = 4
    CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 5
end

@cenum GameControllerBindType::UInt32 begin
    CONTROLLER_BINDTYPE_NONE = 0
    CONTROLLER_BINDTYPE_BUTTON = 1
    CONTROLLER_BINDTYPE_AXIS = 2
    CONTROLLER_BINDTYPE_HAT = 3
end


mutable struct ANONYMOUS2_hat
    hat::Cint
    hat_mask::Cint
end

mutable struct ANONYMOUS1_value
    hat::ANONYMOUS2_hat
end

mutable struct GameControllerButtonBind
    bindType::GameControllerBindType
    value::ANONYMOUS1_value
end

@cenum GameControllerAxis::Int32 begin
    CONTROLLER_AXIS_INVALID = -1
    CONTROLLER_AXIS_LEFTX = 0
    CONTROLLER_AXIS_LEFTY = 1
    CONTROLLER_AXIS_RIGHTX = 2
    CONTROLLER_AXIS_RIGHTY = 3
    CONTROLLER_AXIS_TRIGGERLEFT = 4
    CONTROLLER_AXIS_TRIGGERRIGHT = 5
    CONTROLLER_AXIS_MAX = 6
end

@cenum GameControllerButton::Int32 begin
    CONTROLLER_BUTTON_INVALID = -1
    CONTROLLER_BUTTON_A = 0
    CONTROLLER_BUTTON_B = 1
    CONTROLLER_BUTTON_X = 2
    CONTROLLER_BUTTON_Y = 3
    CONTROLLER_BUTTON_BACK = 4
    CONTROLLER_BUTTON_GUIDE = 5
    CONTROLLER_BUTTON_START = 6
    CONTROLLER_BUTTON_LEFTSTICK = 7
    CONTROLLER_BUTTON_RIGHTSTICK = 8
    CONTROLLER_BUTTON_LEFTSHOULDER = 9
    CONTROLLER_BUTTON_RIGHTSHOULDER = 10
    CONTROLLER_BUTTON_DPAD_UP = 11
    CONTROLLER_BUTTON_DPAD_DOWN = 12
    CONTROLLER_BUTTON_DPAD_LEFT = 13
    CONTROLLER_BUTTON_DPAD_RIGHT = 14
    CONTROLLER_BUTTON_MAX = 15
end


const HAPTIC_CONSTANT = UInt32(1) << 0
const HAPTIC_SINE = UInt32(1) << 1
const HAPTIC_LEFTRIGHT = UInt32(1) << 2
const HAPTIC_TRIANGLE = UInt32(1) << 3
const HAPTIC_SAWTOOTHUP = UInt32(1) << 4
const HAPTIC_SAWTOOTHDOWN = UInt32(1) << 5
const HAPTIC_RAMP = UInt32(1) << 6
const HAPTIC_SPRING = UInt32(1) << 7
const HAPTIC_DAMPER = UInt32(1) << 8
const HAPTIC_INERTIA = UInt32(1) << 9
const HAPTIC_FRICTION = UInt32(1) << 10
const HAPTIC_CUSTOM = UInt32(1) << 11
const HAPTIC_GAIN = UInt32(1) << 12
const HAPTIC_AUTOCENTER = UInt32(1) << 13
const HAPTIC_STATUS = UInt32(1) << 14
const HAPTIC_PAUSE = UInt32(1) << 15
const HAPTIC_POLAR = 0
const HAPTIC_CARTESIAN = 1
const HAPTIC_SPHERICAL = 2
const HAPTIC_INFINITY = UInt32(4294967295)
const _Haptic = Cvoid
const Haptic = _Haptic

mutable struct HapticDirection
    type::Uint8
    dir::NTuple{3, Sint32}
end

mutable struct HapticConstant
    type::Uint16
    direction::HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    level::Sint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

mutable struct HapticPeriodic
    type::Uint16
    direction::HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    period::Uint16
    magnitude::Sint16
    offset::Sint16
    phase::Uint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

mutable struct HapticCondition
    type::Uint16
    direction::HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    right_sat::NTuple{3, Uint16}
    left_sat::NTuple{3, Uint16}
    right_coeff::NTuple{3, Sint16}
    left_coeff::NTuple{3, Sint16}
    deadband::NTuple{3, Uint16}
    center::NTuple{3, Sint16}
end

mutable struct HapticRamp
    type::Uint16
    direction::HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    start::Sint16
    _end::Sint16
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

mutable struct HapticLeftRight
    type::Uint16
    length::Uint32
    large_magnitude::Uint16
    small_magnitude::Uint16
end

mutable struct HapticCustom
    type::Uint16
    direction::HapticDirection
    length::Uint32
    delay::Uint16
    button::Uint16
    interval::Uint16
    channels::Uint8
    period::Uint16
    samples::Uint16
    data::Ptr{Uint16}
    attack_length::Uint16
    attack_level::Uint16
    fade_length::Uint16
    fade_level::Uint16
end

mutable struct HapticEffect
    condition::HapticCondition
end

const HINT_FRAMEBUFFER_ACCELERATION = "FRAMEBUFFER_ACCELERATION"
const HINT_RENDER_DRIVER = "RENDER_DRIVER"
const HINT_RENDER_OPENGL_SHADERS = "RENDER_OPENGL_SHADERS"
const HINT_RENDER_DIRECT3D_THREADSAFE = "RENDER_DIRECT3D_THREADSAFE"
const HINT_RENDER_DIRECT3D11_DEBUG = "RENDER_DIRECT3D11_DEBUG"
const HINT_RENDER_LOGICAL_SIZE_MODE = "RENDER_LOGICAL_SIZE_MODE"
const HINT_RENDER_SCALE_QUALITY = "RENDER_SCALE_QUALITY"
const HINT_RENDER_VSYNC = "RENDER_VSYNC"
const HINT_VIDEO_ALLOW_SCREENSAVER = "VIDEO_ALLOW_SCREENSAVER"
const HINT_VIDEO_EXTERNAL_CONTEXT = "VIDEO_EXTERNAL_CONTEXT"
const HINT_VIDEO_X11_XVIDMODE = "VIDEO_X11_XVIDMODE"
const HINT_VIDEO_X11_XINERAMA = "VIDEO_X11_XINERAMA"
const HINT_VIDEO_X11_XRANDR = "VIDEO_X11_XRANDR"
const HINT_VIDEO_X11_WINDOW_VISUALID = "VIDEO_X11_WINDOW_VISUALID"
const HINT_VIDEO_X11_NET_WM_PING = "VIDEO_X11_NET_WM_PING"
const HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR = "VIDEO_X11_NET_WM_BYPASS_COMPOSITOR"
const HINT_VIDEO_X11_FORCE_EGL = "VIDEO_X11_FORCE_EGL"
const HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN = "WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"
const HINT_WINDOWS_INTRESOURCE_ICON = "WINDOWS_INTRESOURCE_ICON"
const HINT_WINDOWS_INTRESOURCE_ICON_SMALL = "WINDOWS_INTRESOURCE_ICON_SMALL"
const HINT_WINDOWS_ENABLE_MESSAGELOOP = "WINDOWS_ENABLE_MESSAGELOOP"
const HINT_GRAB_KEYBOARD = "GRAB_KEYBOARD"
const HINT_MOUSE_DOUBLE_CLICK_TIME = "MOUSE_DOUBLE_CLICK_TIME"
const HINT_MOUSE_DOUBLE_CLICK_RADIUS = "MOUSE_DOUBLE_CLICK_RADIUS"
const HINT_MOUSE_NORMAL_SPEED_SCALE = "MOUSE_NORMAL_SPEED_SCALE"
const HINT_MOUSE_RELATIVE_SPEED_SCALE = "MOUSE_RELATIVE_SPEED_SCALE"
const HINT_MOUSE_RELATIVE_MODE_WARP = "MOUSE_RELATIVE_MODE_WARP"
const HINT_MOUSE_FOCUS_CLICKTHROUGH = "MOUSE_FOCUS_CLICKTHROUGH"
const HINT_TOUCH_MOUSE_EVENTS = "TOUCH_MOUSE_EVENTS"
const HINT_MOUSE_TOUCH_EVENTS = "MOUSE_TOUCH_EVENTS"
const HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS = "VIDEO_MINIMIZE_ON_FOCUS_LOSS"
const HINT_IDLE_TIMER_DISABLED = "IOS_IDLE_TIMER_DISABLED"
const HINT_ORIENTATIONS = "IOS_ORIENTATIONS"
const HINT_APPLE_TV_CONTROLLER_UI_EVENTS = "APPLE_TV_CONTROLLER_UI_EVENTS"
const HINT_APPLE_TV_REMOTE_ALLOW_ROTATION = "APPLE_TV_REMOTE_ALLOW_ROTATION"
const HINT_IOS_HIDE_HOME_INDICATOR = "IOS_HIDE_HOME_INDICATOR"
const HINT_ACCELEROMETER_AS_JOYSTICK = "ACCELEROMETER_AS_JOYSTICK"
const HINT_TV_REMOTE_AS_JOYSTICK = "TV_REMOTE_AS_JOYSTICK"
const HINT_XINPUT_ENABLED = "XINPUT_ENABLED"
const HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING = "XINPUT_USE_OLD_JOYSTICK_MAPPING"
const HINT_GAMECONTROLLERTYPE = "GAMECONTROLLERTYPE"
const HINT_GAMECONTROLLERCONFIG = "GAMECONTROLLERCONFIG"
const HINT_GAMECONTROLLERCONFIG_FILE = "GAMECONTROLLERCONFIG_FILE"
const HINT_GAMECONTROLLER_IGNORE_DEVICES = "GAMECONTROLLER_IGNORE_DEVICES"
const HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT = "GAMECONTROLLER_IGNORE_DEVICES_EXCEPT"
const HINT_GAMECONTROLLER_USE_BUTTON_LABELS = "GAMECONTROLLER_USE_BUTTON_LABELS"
const HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS = "JOYSTICK_ALLOW_BACKGROUND_EVENTS"
const HINT_JOYSTICK_HIDAPI = "JOYSTICK_HIDAPI"
const HINT_JOYSTICK_HIDAPI_PS4 = "JOYSTICK_HIDAPI_PS4"
const HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = "JOYSTICK_HIDAPI_PS4_RUMBLE"
const HINT_JOYSTICK_HIDAPI_STEAM = "JOYSTICK_HIDAPI_STEAM"
const HINT_JOYSTICK_HIDAPI_SWITCH = "JOYSTICK_HIDAPI_SWITCH"
const HINT_JOYSTICK_HIDAPI_XBOX = "JOYSTICK_HIDAPI_XBOX"
const HINT_JOYSTICK_HIDAPI_GAMECUBE = "JOYSTICK_HIDAPI_GAMECUBE"
const HINT_ENABLE_STEAM_CONTROLLERS = "ENABLE_STEAM_CONTROLLERS"
const HINT_ALLOW_TOPMOST = "ALLOW_TOPMOST"
const HINT_TIMER_RESOLUTION = "TIMER_RESOLUTION"
const HINT_QTWAYLAND_CONTENT_ORIENTATION = "QTWAYLAND_CONTENT_ORIENTATION"
const HINT_QTWAYLAND_WINDOW_FLAGS = "QTWAYLAND_WINDOW_FLAGS"
const HINT_THREAD_STACK_SIZE = "THREAD_STACK_SIZE"
const HINT_VIDEO_HIGHDPI_DISABLED = "VIDEO_HIGHDPI_DISABLED"
const HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK = "MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"
const HINT_VIDEO_WIN_D3DCOMPILER = "VIDEO_WIN_D3DCOMPILER"
const HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT = "VIDEO_WINDOW_SHARE_PIXEL_FORMAT"
const HINT_WINRT_PRIVACY_POLICY_URL = "WINRT_PRIVACY_POLICY_URL"
const HINT_WINRT_PRIVACY_POLICY_LABEL = "WINRT_PRIVACY_POLICY_LABEL"
const HINT_WINRT_HANDLE_BACK_BUTTON = "WINRT_HANDLE_BACK_BUTTON"
const HINT_VIDEO_MAC_FULLSCREEN_SPACES = "VIDEO_MAC_FULLSCREEN_SPACES"
const HINT_MAC_BACKGROUND_APP = "MAC_BACKGROUND_APP"
const HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION = "ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"
const HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION = "ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"
const HINT_IME_INTERNAL_EDITING = "IME_INTERNAL_EDITING"
const HINT_ANDROID_TRAP_BACK_BUTTON = "ANDROID_TRAP_BACK_BUTTON"
const HINT_ANDROID_BLOCK_ON_PAUSE = "ANDROID_BLOCK_ON_PAUSE"
const HINT_RETURN_KEY_HIDES_IME = "RETURN_KEY_HIDES_IME"
const HINT_EMSCRIPTEN_KEYBOARD_ELEMENT = "EMSCRIPTEN_KEYBOARD_ELEMENT"
const HINT_NO_SIGNAL_HANDLERS = "NO_SIGNAL_HANDLERS"
const HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 = "WINDOWS_NO_CLOSE_ON_ALT_F4"
const HINT_BMP_SAVE_LEGACY_FORMAT = "BMP_SAVE_LEGACY_FORMAT"
const HINT_WINDOWS_DISABLE_THREAD_NAMING = "WINDOWS_DISABLE_THREAD_NAMING"
const HINT_RPI_VIDEO_LAYER = "RPI_VIDEO_LAYER"
const HINT_VIDEO_DOUBLE_BUFFER = "VIDEO_DOUBLE_BUFFER"
const HINT_OPENGL_ES_DRIVER = "OPENGL_ES_DRIVER"
const HINT_AUDIO_RESAMPLING_MODE = "AUDIO_RESAMPLING_MODE"
const HINT_AUDIO_CATEGORY = "AUDIO_CATEGORY"
const HINT_RENDER_BATCHING = "RENDER_BATCHING"
const HINT_EVENT_LOGGING = "EVENT_LOGGING"
const HINT_WAVE_RIFF_CHUNK_SIZE = "WAVE_RIFF_CHUNK_SIZE"
const HINT_WAVE_TRUNCATION = "WAVE_TRUNCATION"
const HINT_WAVE_FACT_CHUNK = "WAVE_FACT_CHUNK"
const HINT_DISPLAY_USABLE_BOUNDS = "DISPLAY_USABLE_BOUNDS"

@cenum HintPriority::UInt32 begin
    HINT_DEFAULT = 0
    HINT_NORMAL = 1
    HINT_OVERRIDE = 2
end


const HintCallback = Ptr{Cvoid}
const JOYSTICK_AXIS_MAX = 32767
const JOYSTICK_AXIS_MIN = -32768
const HAT_CENTERED = 0x00
const HAT_UP = 0x01
const HAT_RIGHT = 0x02
const HAT_DOWN = 0x04
const HAT_LEFT = 0x08
const HAT_RIGHTUP = HAT_RIGHT | HAT_UP
const HAT_RIGHTDOWN = HAT_RIGHT | HAT_DOWN
const HAT_LEFTUP = HAT_LEFT | HAT_UP
const HAT_LEFTDOWN = HAT_LEFT | HAT_DOWN
const _Joystick = Cvoid
const Joystick = _Joystick

mutable struct JoystickGUID
    data::NTuple{16, Uint8}
end

@cenum JoystickType::UInt32 begin
    JOYSTICK_TYPE_UNKNOWN = 0
    JOYSTICK_TYPE_GAMECONTROLLER = 1
    JOYSTICK_TYPE_WHEEL = 2
    JOYSTICK_TYPE_ARCADE_STICK = 3
    JOYSTICK_TYPE_FLIGHT_STICK = 4
    JOYSTICK_TYPE_DANCE_PAD = 5
    JOYSTICK_TYPE_GUITAR = 6
    JOYSTICK_TYPE_DRUM_KIT = 7
    JOYSTICK_TYPE_ARCADE_PAD = 8
    JOYSTICK_TYPE_THROTTLE = 9
end

@cenum JoystickPowerLevel::Int32 begin
    JOYSTICK_POWER_UNKNOWN = -1
    JOYSTICK_POWER_EMPTY = 0
    JOYSTICK_POWER_LOW = 1
    JOYSTICK_POWER_MEDIUM = 2
    JOYSTICK_POWER_FULL = 3
    JOYSTICK_POWER_WIRED = 4
    JOYSTICK_POWER_MAX = 5
end


const SDLK_SCANCODE_MASK = 1 << 30

# Skipping MacroDefinition: SCANCODE_TO_KEYCODE ( X ) ( X | SDLK_SCANCODE_MASK )

@cenum Keymod::UInt32 begin
    KMOD_NONE = 0
    KMOD_LSHIFT = 1
    KMOD_RSHIFT = 2
    KMOD_LCTRL = 64
    KMOD_RCTRL = 128
    KMOD_LALT = 256
    KMOD_RALT = 512
    KMOD_LGUI = 1024
    KMOD_RGUI = 2048
    KMOD_NUM = 4096
    KMOD_CAPS = 8192
    KMOD_MODE = 16384
    KMOD_RESERVED = 32768
end


const KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL
const KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT
const KMOD_ALT = KMOD_LALT | KMOD_RALT
const KMOD_GUI = KMOD_LGUI | KMOD_RGUI

@cenum KeyCode::UInt32 begin
    SDLK_UNKNOWN = 0
    SDLK_RETURN = 13
    SDLK_ESCAPE = 27
    SDLK_BACKSPACE = 8
    SDLK_TAB = 9
    SDLK_SPACE = 32
    SDLK_EXCLAIM = 33
    SDLK_QUOTEDBL = 34
    SDLK_HASH = 35
    SDLK_PERCENT = 37
    SDLK_DOLLAR = 36
    SDLK_AMPERSAND = 38
    SDLK_QUOTE = 39
    SDLK_LEFTPAREN = 40
    SDLK_RIGHTPAREN = 41
    SDLK_ASTERISK = 42
    SDLK_PLUS = 43
    SDLK_COMMA = 44
    SDLK_MINUS = 45
    SDLK_PERIOD = 46
    SDLK_SLASH = 47
    SDLK_0 = 48
    SDLK_1 = 49
    SDLK_2 = 50
    SDLK_3 = 51
    SDLK_4 = 52
    SDLK_5 = 53
    SDLK_6 = 54
    SDLK_7 = 55
    SDLK_8 = 56
    SDLK_9 = 57
    SDLK_COLON = 58
    SDLK_SEMICOLON = 59
    SDLK_LESS = 60
    SDLK_EQUALS = 61
    SDLK_GREATER = 62
    SDLK_QUESTION = 63
    SDLK_AT = 64
    SDLK_LEFTBRACKET = 91
    SDLK_BACKSLASH = 92
    SDLK_RIGHTBRACKET = 93
    SDLK_CARET = 94
    SDLK_UNDERSCORE = 95
    SDLK_BACKQUOTE = 96
    SDLK_a = 97
    SDLK_b = 98
    SDLK_c = 99
    SDLK_d = 100
    SDLK_e = 101
    SDLK_f = 102
    SDLK_g = 103
    SDLK_h = 104
    SDLK_i = 105
    SDLK_j = 106
    SDLK_k = 107
    SDLK_l = 108
    SDLK_m = 109
    SDLK_n = 110
    SDLK_o = 111
    SDLK_p = 112
    SDLK_q = 113
    SDLK_r = 114
    SDLK_s = 115
    SDLK_t = 116
    SDLK_u = 117
    SDLK_v = 118
    SDLK_w = 119
    SDLK_x = 120
    SDLK_y = 121
    SDLK_z = 122
    SDLK_CAPSLOCK = 1073741881
    SDLK_F1 = 1073741882
    SDLK_F2 = 1073741883
    SDLK_F3 = 1073741884
    SDLK_F4 = 1073741885
    SDLK_F5 = 1073741886
    SDLK_F6 = 1073741887
    SDLK_F7 = 1073741888
    SDLK_F8 = 1073741889
    SDLK_F9 = 1073741890
    SDLK_F10 = 1073741891
    SDLK_F11 = 1073741892
    SDLK_F12 = 1073741893
    SDLK_PRINTSCREEN = 1073741894
    SDLK_SCROLLLOCK = 1073741895
    SDLK_PAUSE = 1073741896
    SDLK_INSERT = 1073741897
    SDLK_HOME = 1073741898
    SDLK_PAGEUP = 1073741899
    SDLK_DELETE = 127
    SDLK_END = 1073741901
    SDLK_PAGEDOWN = 1073741902
    SDLK_RIGHT = 1073741903
    SDLK_LEFT = 1073741904
    SDLK_DOWN = 1073741905
    SDLK_UP = 1073741906
    SDLK_NUMLOCKCLEAR = 1073741907
    SDLK_KP_DIVIDE = 1073741908
    SDLK_KP_MULTIPLY = 1073741909
    SDLK_KP_MINUS = 1073741910
    SDLK_KP_PLUS = 1073741911
    SDLK_KP_ENTER = 1073741912
    SDLK_KP_1 = 1073741913
    SDLK_KP_2 = 1073741914
    SDLK_KP_3 = 1073741915
    SDLK_KP_4 = 1073741916
    SDLK_KP_5 = 1073741917
    SDLK_KP_6 = 1073741918
    SDLK_KP_7 = 1073741919
    SDLK_KP_8 = 1073741920
    SDLK_KP_9 = 1073741921
    SDLK_KP_0 = 1073741922
    SDLK_KP_PERIOD = 1073741923
    SDLK_APPLICATION = 1073741925
    SDLK_POWER = 1073741926
    SDLK_KP_EQUALS = 1073741927
    SDLK_F13 = 1073741928
    SDLK_F14 = 1073741929
    SDLK_F15 = 1073741930
    SDLK_F16 = 1073741931
    SDLK_F17 = 1073741932
    SDLK_F18 = 1073741933
    SDLK_F19 = 1073741934
    SDLK_F20 = 1073741935
    SDLK_F21 = 1073741936
    SDLK_F22 = 1073741937
    SDLK_F23 = 1073741938
    SDLK_F24 = 1073741939
    SDLK_EXECUTE = 1073741940
    SDLK_HELP = 1073741941
    SDLK_MENU = 1073741942
    SDLK_SELECT = 1073741943
    SDLK_STOP = 1073741944
    SDLK_AGAIN = 1073741945
    SDLK_UNDO = 1073741946
    SDLK_CUT = 1073741947
    SDLK_COPY = 1073741948
    SDLK_PASTE = 1073741949
    SDLK_FIND = 1073741950
    SDLK_MUTE = 1073741951
    SDLK_VOLUMEUP = 1073741952
    SDLK_VOLUMEDOWN = 1073741953
    SDLK_KP_COMMA = 1073741957
    SDLK_KP_EQUALSAS400 = 1073741958
    SDLK_ALTERASE = 1073741977
    SDLK_SYSREQ = 1073741978
    SDLK_CANCEL = 1073741979
    SDLK_CLEAR = 1073741980
    SDLK_PRIOR = 1073741981
    SDLK_RETURN2 = 1073741982
    SDLK_SEPARATOR = 1073741983
    SDLK_OUT = 1073741984
    SDLK_OPER = 1073741985
    SDLK_CLEARAGAIN = 1073741986
    SDLK_CRSEL = 1073741987
    SDLK_EXSEL = 1073741988
    SDLK_KP_00 = 1073742000
    SDLK_KP_000 = 1073742001
    SDLK_THOUSANDSSEPARATOR = 1073742002
    SDLK_DECIMALSEPARATOR = 1073742003
    SDLK_CURRENCYUNIT = 1073742004
    SDLK_CURRENCYSUBUNIT = 1073742005
    SDLK_KP_LEFTPAREN = 1073742006
    SDLK_KP_RIGHTPAREN = 1073742007
    SDLK_KP_LEFTBRACE = 1073742008
    SDLK_KP_RIGHTBRACE = 1073742009
    SDLK_KP_TAB = 1073742010
    SDLK_KP_BACKSPACE = 1073742011
    SDLK_KP_A = 1073742012
    SDLK_KP_B = 1073742013
    SDLK_KP_C = 1073742014
    SDLK_KP_D = 1073742015
    SDLK_KP_E = 1073742016
    SDLK_KP_F = 1073742017
    SDLK_KP_XOR = 1073742018
    SDLK_KP_POWER = 1073742019
    SDLK_KP_PERCENT = 1073742020
    SDLK_KP_LESS = 1073742021
    SDLK_KP_GREATER = 1073742022
    SDLK_KP_AMPERSAND = 1073742023
    SDLK_KP_DBLAMPERSAND = 1073742024
    SDLK_KP_VERTICALBAR = 1073742025
    SDLK_KP_DBLVERTICALBAR = 1073742026
    SDLK_KP_COLON = 1073742027
    SDLK_KP_HASH = 1073742028
    SDLK_KP_SPACE = 1073742029
    SDLK_KP_AT = 1073742030
    SDLK_KP_EXCLAM = 1073742031
    SDLK_KP_MEMSTORE = 1073742032
    SDLK_KP_MEMRECALL = 1073742033
    SDLK_KP_MEMCLEAR = 1073742034
    SDLK_KP_MEMADD = 1073742035
    SDLK_KP_MEMSUBTRACT = 1073742036
    SDLK_KP_MEMMULTIPLY = 1073742037
    SDLK_KP_MEMDIVIDE = 1073742038
    SDLK_KP_PLUSMINUS = 1073742039
    SDLK_KP_CLEAR = 1073742040
    SDLK_KP_CLEARENTRY = 1073742041
    SDLK_KP_BINARY = 1073742042
    SDLK_KP_OCTAL = 1073742043
    SDLK_KP_DECIMAL = 1073742044
    SDLK_KP_HEXADECIMAL = 1073742045
    SDLK_LCTRL = 1073742048
    SDLK_LSHIFT = 1073742049
    SDLK_LALT = 1073742050
    SDLK_LGUI = 1073742051
    SDLK_RCTRL = 1073742052
    SDLK_RSHIFT = 1073742053
    SDLK_RALT = 1073742054
    SDLK_RGUI = 1073742055
    SDLK_MODE = 1073742081
    SDLK_AUDIONEXT = 1073742082
    SDLK_AUDIOPREV = 1073742083
    SDLK_AUDIOSTOP = 1073742084
    SDLK_AUDIOPLAY = 1073742085
    SDLK_AUDIOMUTE = 1073742086
    SDLK_MEDIASELECT = 1073742087
    SDLK_WWW = 1073742088
    SDLK_MAIL = 1073742089
    SDLK_CALCULATOR = 1073742090
    SDLK_COMPUTER = 1073742091
    SDLK_AC_SEARCH = 1073742092
    SDLK_AC_HOME = 1073742093
    SDLK_AC_BACK = 1073742094
    SDLK_AC_FORWARD = 1073742095
    SDLK_AC_STOP = 1073742096
    SDLK_AC_REFRESH = 1073742097
    SDLK_AC_BOOKMARKS = 1073742098
    SDLK_BRIGHTNESSDOWN = 1073742099
    SDLK_BRIGHTNESSUP = 1073742100
    SDLK_DISPLAYSWITCH = 1073742101
    SDLK_KBDILLUMTOGGLE = 1073742102
    SDLK_KBDILLUMDOWN = 1073742103
    SDLK_KBDILLUMUP = 1073742104
    SDLK_EJECT = 1073742105
    SDLK_SLEEP = 1073742106
    SDLK_APP1 = 1073742107
    SDLK_APP2 = 1073742108
    SDLK_AUDIOREWIND = 1073742109
    SDLK_AUDIOFASTFORWARD = 1073742110
end


const main_func = Ptr{Cvoid}

@cenum MessageBoxFlags::UInt32 begin
    MESSAGEBOX_ERROR = 16
    MESSAGEBOX_WARNING = 32
    MESSAGEBOX_INFORMATION = 64
    MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 128
    MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 256
end

@cenum MessageBoxButtonFlags::UInt32 begin
    MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 1
    MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 2
end


mutable struct MessageBoxButtonData
    flags::Uint32
    buttonid::Cint
    text::Cstring
end

mutable struct MessageBoxColor
    r::Uint8
    g::Uint8
    b::Uint8
end

@cenum MessageBoxColorType::UInt32 begin
    MESSAGEBOX_COLOR_BACKGROUND = 0
    MESSAGEBOX_COLOR_TEXT = 1
    MESSAGEBOX_COLOR_BUTTON_BORDER = 2
    MESSAGEBOX_COLOR_BUTTON_BACKGROUND = 3
    MESSAGEBOX_COLOR_BUTTON_SELECTED = 4
    MESSAGEBOX_COLOR_MAX = 5
end


mutable struct MessageBoxColorScheme
    colors::NTuple{5, MessageBoxColor}
end

const Window = Cvoid

mutable struct MessageBoxData
    flags::Uint32
    window::Ptr{Window}
    title::Cstring
    message::Cstring
    numbuttons::Cint
    buttons::Ptr{MessageBoxButtonData}
    colorScheme::Ptr{MessageBoxColorScheme}
end

const MetalView = Ptr{Cvoid}

# Skipping MacroDefinition: BUTTON ( X ) ( 1 << ( ( X ) - 1 ) )

const BUTTON_LEFT = 1
const BUTTON_MIDDLE = 2
const BUTTON_RIGHT = 3
const BUTTON_X1 = 4
const BUTTON_X2 = 5

# Skipping MacroDefinition: BUTTON_LMASK BUTTON ( BUTTON_LEFT )
# Skipping MacroDefinition: BUTTON_MMASK BUTTON ( BUTTON_MIDDLE )
# Skipping MacroDefinition: BUTTON_RMASK BUTTON ( BUTTON_RIGHT )
# Skipping MacroDefinition: BUTTON_X1MASK BUTTON ( BUTTON_X1 )
# Skipping MacroDefinition: BUTTON_X2MASK BUTTON ( BUTTON_X2 )

const Cursor = Cvoid

@cenum SystemCursor::UInt32 begin
    SYSTEM_CURSOR_ARROW = 0
    SYSTEM_CURSOR_IBEAM = 1
    SYSTEM_CURSOR_WAIT = 2
    SYSTEM_CURSOR_CROSSHAIR = 3
    SYSTEM_CURSOR_WAITARROW = 4
    SYSTEM_CURSOR_SIZENWSE = 5
    SYSTEM_CURSOR_SIZENESW = 6
    SYSTEM_CURSOR_SIZEWE = 7
    SYSTEM_CURSOR_SIZENS = 8
    SYSTEM_CURSOR_SIZEALL = 9
    SYSTEM_CURSOR_NO = 10
    SYSTEM_CURSOR_HAND = 11
    NUM_SYSTEM_CURSORS = 12
end

@cenum MouseWheelDirection::UInt32 begin
    MOUSEWHEEL_NORMAL = 0
    MOUSEWHEEL_FLIPPED = 1
end


const MUTEX_TIMEDOUT = 1

# Skipping MacroDefinition: MUTEX_MAXWAIT ( ~ ( Uint32 ) 0 )
# Skipping MacroDefinition: mutexP ( m ) LockMutex ( m )
# Skipping MacroDefinition: mutexV ( m ) UnlockMutex ( m )

const mutex = Cvoid
const semaphore = Cvoid
const sem = semaphore
const cond = Cvoid
const NeedFunctionPrototypes = 1

# Skipping MacroDefinition: NAME ( X )  ## X

const ALPHA_OPAQUE = 255
const ALPHA_TRANSPARENT = 0

# Skipping MacroDefinition: DEFINE_PIXELFOURCC ( A , B , C , D ) FOURCC ( A , B , C , D )
# Skipping MacroDefinition: DEFINE_PIXELFORMAT ( type , order , layout , bits , bytes ) ( ( 1 << 28 ) | ( ( type ) << 24 ) | ( ( order ) << 20 ) | ( ( layout ) << 16 ) | ( ( bits ) << 8 ) | ( ( bytes ) << 0 ) )
# Skipping MacroDefinition: PIXELFLAG ( X ) ( ( ( X ) >> 28 ) & 0x0F )
# Skipping MacroDefinition: PIXELTYPE ( X ) ( ( ( X ) >> 24 ) & 0x0F )
# Skipping MacroDefinition: PIXELORDER ( X ) ( ( ( X ) >> 20 ) & 0x0F )
# Skipping MacroDefinition: PIXELLAYOUT ( X ) ( ( ( X ) >> 16 ) & 0x0F )
# Skipping MacroDefinition: BITSPERPIXEL ( X ) ( ( ( X ) >> 8 ) & 0xFF )
# Skipping MacroDefinition: BYTESPERPIXEL ( X ) ( ISPIXELFORMAT_FOURCC ( X ) ? ( ( ( ( X ) == PIXELFORMAT_YUY2 ) || ( ( X ) == PIXELFORMAT_UYVY ) || ( ( X ) == PIXELFORMAT_YVYU ) ) ? 2 : 1 ) : ( ( ( X ) >> 0 ) & 0xFF ) )
# Skipping MacroDefinition: ISPIXELFORMAT_INDEXED ( format ) ( ! ISPIXELFORMAT_FOURCC ( format ) && ( ( PIXELTYPE ( format ) == PIXELTYPE_INDEX1 ) || ( PIXELTYPE ( format ) == PIXELTYPE_INDEX4 ) || ( PIXELTYPE ( format ) == PIXELTYPE_INDEX8 ) ) )
# Skipping MacroDefinition: ISPIXELFORMAT_PACKED ( format ) ( ! ISPIXELFORMAT_FOURCC ( format ) && ( ( PIXELTYPE ( format ) == PIXELTYPE_PACKED8 ) || ( PIXELTYPE ( format ) == PIXELTYPE_PACKED16 ) || ( PIXELTYPE ( format ) == PIXELTYPE_PACKED32 ) ) )
# Skipping MacroDefinition: ISPIXELFORMAT_ARRAY ( format ) ( ! ISPIXELFORMAT_FOURCC ( format ) && ( ( PIXELTYPE ( format ) == PIXELTYPE_ARRAYU8 ) || ( PIXELTYPE ( format ) == PIXELTYPE_ARRAYU16 ) || ( PIXELTYPE ( format ) == PIXELTYPE_ARRAYU32 ) || ( PIXELTYPE ( format ) == PIXELTYPE_ARRAYF16 ) || ( PIXELTYPE ( format ) == PIXELTYPE_ARRAYF32 ) ) )
# Skipping MacroDefinition: ISPIXELFORMAT_ALPHA ( format ) ( ( ISPIXELFORMAT_PACKED ( format ) && ( ( PIXELORDER ( format ) == PACKEDORDER_ARGB ) || ( PIXELORDER ( format ) == PACKEDORDER_RGBA ) || ( PIXELORDER ( format ) == PACKEDORDER_ABGR ) || ( PIXELORDER ( format ) == PACKEDORDER_BGRA ) ) ) || ( ISPIXELFORMAT_ARRAY ( format ) && ( ( PIXELORDER ( format ) == ARRAYORDER_ARGB ) || ( PIXELORDER ( format ) == ARRAYORDER_RGBA ) || ( PIXELORDER ( format ) == ARRAYORDER_ABGR ) || ( PIXELORDER ( format ) == ARRAYORDER_BGRA ) ) ) )
# Skipping MacroDefinition: ISPIXELFORMAT_FOURCC ( format ) ( ( format ) && ( PIXELFLAG ( format ) != 1 ) )

mutable struct Color
    r::Uint8
    g::Uint8
    b::Uint8
    a::Uint8
end

const Colour = Color

@cenum PixelType::UInt32 begin
    PIXELTYPE_UNKNOWN = 0
    PIXELTYPE_INDEX1 = 1
    PIXELTYPE_INDEX4 = 2
    PIXELTYPE_INDEX8 = 3
    PIXELTYPE_PACKED8 = 4
    PIXELTYPE_PACKED16 = 5
    PIXELTYPE_PACKED32 = 6
    PIXELTYPE_ARRAYU8 = 7
    PIXELTYPE_ARRAYU16 = 8
    PIXELTYPE_ARRAYU32 = 9
    PIXELTYPE_ARRAYF16 = 10
    PIXELTYPE_ARRAYF32 = 11
end

@cenum BitmapOrder::UInt32 begin
    BITMAPORDER_NONE = 0
    BITMAPORDER_4321 = 1
    BITMAPORDER_1234 = 2
end

@cenum PackedOrder::UInt32 begin
    PACKEDORDER_NONE = 0
    PACKEDORDER_XRGB = 1
    PACKEDORDER_RGBX = 2
    PACKEDORDER_ARGB = 3
    PACKEDORDER_RGBA = 4
    PACKEDORDER_XBGR = 5
    PACKEDORDER_BGRX = 6
    PACKEDORDER_ABGR = 7
    PACKEDORDER_BGRA = 8
end

@cenum ArrayOrder::UInt32 begin
    ARRAYORDER_NONE = 0
    ARRAYORDER_RGB = 1
    ARRAYORDER_RGBA = 2
    ARRAYORDER_ARGB = 3
    ARRAYORDER_BGR = 4
    ARRAYORDER_BGRA = 5
    ARRAYORDER_ABGR = 6
end

@cenum PackedLayout::UInt32 begin
    PACKEDLAYOUT_NONE = 0
    PACKEDLAYOUT_332 = 1
    PACKEDLAYOUT_4444 = 2
    PACKEDLAYOUT_1555 = 3
    PACKEDLAYOUT_5551 = 4
    PACKEDLAYOUT_565 = 5
    PACKEDLAYOUT_8888 = 6
    PACKEDLAYOUT_2101010 = 7
    PACKEDLAYOUT_1010102 = 8
end

@cenum PixelFormatEnum::UInt32 begin
    PIXELFORMAT_UNKNOWN = 0
    PIXELFORMAT_INDEX1LSB = 286261504
    PIXELFORMAT_INDEX1MSB = 287310080
    PIXELFORMAT_INDEX4LSB = 303039488
    PIXELFORMAT_INDEX4MSB = 304088064
    PIXELFORMAT_INDEX8 = 318769153
    PIXELFORMAT_RGB332 = 336660481
    PIXELFORMAT_RGB444 = 353504258
    PIXELFORMAT_BGR444 = 357698562
    PIXELFORMAT_RGB555 = 353570562
    PIXELFORMAT_BGR555 = 357764866
    PIXELFORMAT_ARGB4444 = 355602434
    PIXELFORMAT_RGBA4444 = 356651010
    PIXELFORMAT_ABGR4444 = 359796738
    PIXELFORMAT_BGRA4444 = 360845314
    PIXELFORMAT_ARGB1555 = 355667970
    PIXELFORMAT_RGBA5551 = 356782082
    PIXELFORMAT_ABGR1555 = 359862274
    PIXELFORMAT_BGRA5551 = 360976386
    PIXELFORMAT_RGB565 = 353701890
    PIXELFORMAT_BGR565 = 357896194
    PIXELFORMAT_RGB24 = 386930691
    PIXELFORMAT_BGR24 = 390076419
    PIXELFORMAT_RGB888 = 370546692
    PIXELFORMAT_RGBX8888 = 371595268
    PIXELFORMAT_BGR888 = 374740996
    PIXELFORMAT_BGRX8888 = 375789572
    PIXELFORMAT_ARGB8888 = 372645892
    PIXELFORMAT_RGBA8888 = 373694468
    PIXELFORMAT_ABGR8888 = 376840196
    PIXELFORMAT_BGRA8888 = 377888772
    PIXELFORMAT_ARGB2101010 = 372711428
    PIXELFORMAT_RGBA32 = 376840196
    PIXELFORMAT_ARGB32 = 377888772
    PIXELFORMAT_BGRA32 = 372645892
    PIXELFORMAT_ABGR32 = 373694468
    PIXELFORMAT_YV12 = 842094169
    PIXELFORMAT_IYUV = 1448433993
    PIXELFORMAT_YUY2 = 844715353
    PIXELFORMAT_UYVY = 1498831189
    PIXELFORMAT_YVYU = 1431918169
    PIXELFORMAT_NV12 = 842094158
    PIXELFORMAT_NV21 = 825382478
    PIXELFORMAT_EXTERNAL_OES = 542328143
end


mutable struct Palette
    ncolors::Cint
    colors::Ptr{Color}
    version::Uint32
    refcount::Cint
end

mutable struct PixelFormat
    format::Uint32
    palette::Ptr{Palette}
    BitsPerPixel::Uint8
    BytesPerPixel::Uint8
    padding::NTuple{2, Uint8}
    Rmask::Uint32
    Gmask::Uint32
    Bmask::Uint32
    Amask::Uint32
    Rloss::Uint8
    Gloss::Uint8
    Bloss::Uint8
    Aloss::Uint8
    Rshift::Uint8
    Gshift::Uint8
    Bshift::Uint8
    Ashift::Uint8
    refcount::Cint
    next::Ptr{PixelFormat}
end

@cenum PowerState::UInt32 begin
    POWERSTATE_UNKNOWN = 0
    POWERSTATE_ON_BATTERY = 1
    POWERSTATE_NO_BATTERY = 2
    POWERSTATE_CHARGING = 3
    POWERSTATE_CHARGED = 4
end


# Skipping MacroDefinition: QuitRequested ( ) ( PumpEvents ( ) , ( PeepEvents ( NULL , 0 , PEEKEVENT , QUIT , QUIT ) > 0 ) )

mutable struct Point
    x::Cint
    y::Cint
end

mutable struct FPoint
    x::Cfloat
    y::Cfloat
end

mutable struct Rect
    x::Cint
    y::Cint
    w::Cint
    h::Cint
end

mutable struct FRect
    x::Cfloat
    y::Cfloat
    w::Cfloat
    h::Cfloat
end

@cenum RendererFlags::UInt32 begin
    RENDERER_SOFTWARE = 1
    RENDERER_ACCELERATED = 2
    RENDERER_PRESENTVSYNC = 4
    RENDERER_TARGETTEXTURE = 8
end


mutable struct RendererInfo
    name::Cstring
    flags::Uint32
    num_texture_formats::Uint32
    texture_formats::NTuple{16, Uint32}
    max_texture_width::Cint
    max_texture_height::Cint
end

@cenum ScaleMode::UInt32 begin
    ScaleModeNearest = 0
    ScaleModeLinear = 1
    ScaleModeBest = 2
end

@cenum TextureAccess::UInt32 begin
    TEXTUREACCESS_STATIC = 0
    TEXTUREACCESS_STREAMING = 1
    TEXTUREACCESS_TARGET = 2
end

@cenum TextureModulate::UInt32 begin
    TEXTUREMODULATE_NONE = 0
    TEXTUREMODULATE_COLOR = 1
    TEXTUREMODULATE_ALPHA = 2
end

@cenum RendererFlip::UInt32 begin
    FLIP_NONE = 0
    FLIP_HORIZONTAL = 1
    FLIP_VERTICAL = 2
end


const Renderer = Cvoid
const Texture = Cvoid
const REVISION = "hg-13609:34cc7d3b69d3"
const REVISION_NUMBER = 13609
const RWOPS_UNKNOWN = UInt32(0)
const RWOPS_WINFILE = UInt32(1)
const RWOPS_STDFILE = UInt32(2)
const RWOPS_JNIFILE = UInt32(3)
const RWOPS_MEMORY = UInt32(4)
const RWOPS_MEMORY_RO = UInt32(5)
const RW_SEEK_SET = 0
const RW_SEEK_CUR = 1
const RW_SEEK_END = 2

mutable struct ANONYMOUS4_mem
    base::Ptr{Uint8}
    here::Ptr{Uint8}
    stop::Ptr{Uint8}
end

mutable struct ANONYMOUS3_hidden
    mem::ANONYMOUS4_mem
end

mutable struct RWops
    size::Ptr{Cvoid}
    seek::Ptr{Cvoid}
    read::Ptr{Cvoid}
    write::Ptr{Cvoid}
    close::Ptr{Cvoid}
    type::Uint32
    hidden::ANONYMOUS3_hidden
end

const STANDARD_GRAVITY = Float32(9.80665)
const _Sensor = Cvoid
const Sensor = _Sensor
const SensorID = Sint32

@cenum SensorType::Int32 begin
    SENSOR_INVALID = -1
    SENSOR_UNKNOWN = 0
    SENSOR_ACCEL = 1
    SENSOR_GYRO = 2
end


const NONSHAPEABLE_WINDOW = -1
const INVALID_SHAPE_ARGUMENT = -2
const WINDOW_LACKS_SHAPE = -3

# Skipping MacroDefinition: SHAPEMODEALPHA ( mode ) ( mode == ShapeModeDefault || mode == ShapeModeBinarizeAlpha || mode == ShapeModeReverseBinarizeAlpha )

#= renamed =#
@cenum WindowShapeModeEnum::UInt32 begin
    ShapeModeDefault = 0
    ShapeModeBinarizeAlpha = 1
    ShapeModeReverseBinarizeAlpha = 2
    ShapeModeColorKey = 3
end


mutable struct WindowShapeParams
    colorKey::Color
end

mutable struct WindowShapeMode
    #= renamed =#
    mode::WindowShapeModeEnum
    parameters::WindowShapeParams
end

# Skipping MacroDefinition: arraysize ( array ) ( sizeof ( array ) / sizeof ( array [ 0 ] ) )
# Skipping MacroDefinition: TABLESIZE ( table ) arraysize ( table )
# Skipping MacroDefinition: STRINGIFY_ARG ( arg ) # arg
# Skipping MacroDefinition: reinterpret_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: static_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: const_cast ( type , expression ) ( ( type ) ( expression ) )
# Skipping MacroDefinition: FOURCC ( A , B , C , D ) ( ( static_cast ( Uint32 , static_cast ( Uint8 , ( A ) ) ) << 0 ) | ( static_cast ( Uint32 , static_cast ( Uint8 , ( B ) ) ) << 8 ) | ( static_cast ( Uint32 , static_cast ( Uint8 , ( C ) ) ) << 16 ) | ( static_cast ( Uint32 , static_cast ( Uint8 , ( D ) ) ) << 24 ) )
# Skipping MacroDefinition: MAX_SINT8 ( ( Sint8 ) 0x7F )
# Skipping MacroDefinition: MIN_SINT8 ( ( Sint8 ) ( ~ 0x7F ) )
# Skipping MacroDefinition: MAX_UINT8 ( ( Uint8 ) 0xFF )
# Skipping MacroDefinition: MIN_UINT8 ( ( Uint8 ) 0x00 )
# Skipping MacroDefinition: MAX_SINT16 ( ( Sint16 ) 0x7FFF )
# Skipping MacroDefinition: MIN_SINT16 ( ( Sint16 ) ( ~ 0x7FFF ) )
# Skipping MacroDefinition: MAX_UINT16 ( ( Uint16 ) 0xFFFF )
# Skipping MacroDefinition: MIN_UINT16 ( ( Uint16 ) 0x0000 )
# Skipping MacroDefinition: MAX_SINT32 ( ( Sint32 ) 0x7FFFFFFF )
# Skipping MacroDefinition: MIN_SINT32 ( ( Sint32 ) ( ~ 0x7FFFFFFF ) )
# Skipping MacroDefinition: MAX_UINT32 ( ( Uint32 ) 0xFFFFFFFFu )
# Skipping MacroDefinition: MIN_UINT32 ( ( Uint32 ) 0x00000000 )
# Skipping MacroDefinition: MAX_SINT64 ( ( Sint64 ) 0x7FFFFFFFFFFFFFFFll )
# Skipping MacroDefinition: MIN_SINT64 ( ( Sint64 ) ( ~ 0x7FFFFFFFFFFFFFFFll ) )
# Skipping MacroDefinition: MAX_UINT64 ( ( Uint64 ) 0xFFFFFFFFFFFFFFFFull )
# Skipping MacroDefinition: MIN_UINT64 ( ( Uint64 ) ( 0x0000000000000000ull ) )

const PRIs64 = "ld"
const PRIu64 = "lu"
const PRIx64 = "lx"
const PRIX64 = "lX"

# Skipping MacroDefinition: PRINTF_VARARG_FUNC ( fmtargnumber ) __attribute__ ( ( format ( __printf__ , fmtargnumber , fmtargnumber + 1 ) ) )
# Skipping MacroDefinition: SCANF_VARARG_FUNC ( fmtargnumber ) __attribute__ ( ( format ( __scanf__ , fmtargnumber , fmtargnumber + 1 ) ) )
# Skipping MacroDefinition: COMPILE_TIME_ASSERT ( name , x ) typedef int compile_time_assert_ ## name [ ( x ) * 2 - 1 ]
# Skipping MacroDefinition: stack_alloc ( type , count ) ( type * ) malloc ( sizeof ( type ) * ( count ) )
# Skipping MacroDefinition: stack_free ( data ) free ( data )
# Skipping MacroDefinition: min ( x , y ) ( ( ( x ) < ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: max ( x , y ) ( ( ( x ) > ( y ) ) ? ( x ) : ( y ) )
# Skipping MacroDefinition: zero ( x ) memset ( & ( x ) , 0 , sizeof ( ( x ) ) )
# Skipping MacroDefinition: zerop ( x ) memset ( ( x ) , 0 , sizeof ( * ( x ) ) )
# Skipping MacroDefinition: zeroa ( x ) memset ( ( x ) , 0 , sizeof ( ( x ) ) )

const M_PI = 3.141592653589793

# Skipping MacroDefinition: ICONV_ERROR ( size_t ) - 1
# Skipping MacroDefinition: ICONV_E2BIG ( size_t ) - 2
# Skipping MacroDefinition: ICONV_EILSEQ ( size_t ) - 3
# Skipping MacroDefinition: ICONV_EINVAL ( size_t ) - 4
# Skipping MacroDefinition: iconv_utf8_locale ( S ) iconv_string ( "" , "UTF-8" , S , strlen ( S ) + 1 )
# Skipping MacroDefinition: iconv_utf8_ucs2 ( S ) ( Uint16 * ) iconv_string ( "UCS-2-INTERNAL" , "UTF-8" , S , strlen ( S ) + 1 )
# Skipping MacroDefinition: iconv_utf8_ucs4 ( S ) ( Uint32 * ) iconv_string ( "UCS-4-INTERNAL" , "UTF-8" , S , strlen ( S ) + 1 )

@cenum bool::UInt32 begin
    FALSE = 0
    TRUE = 1
end


const Sint8 = Int8
const Uint64 = UInt64
const compile_time_assert_uint8 = NTuple{1, Cint}
const compile_time_assert_sint8 = NTuple{1, Cint}
const compile_time_assert_uint16 = NTuple{1, Cint}
const compile_time_assert_sint16 = NTuple{1, Cint}
const compile_time_assert_uint32 = NTuple{1, Cint}
const compile_time_assert_sint32 = NTuple{1, Cint}
const compile_time_assert_uint64 = NTuple{1, Cint}
const compile_time_assert_sint64 = NTuple{1, Cint}

@cenum DUMMY_ENUM::UInt32 begin
    DUMMY_ENUM_VALUE = 0
end


const compile_time_assert_enum = NTuple{1, Cint}
const malloc_func = Ptr{Cvoid}
const calloc_func = Ptr{Cvoid}
const realloc_func = Ptr{Cvoid}
const free_func = Ptr{Cvoid}
const _iconv_t = Cvoid
const iconv_t = Ptr{_iconv_t}
const SWSURFACE = 0
const PREALLOC = 0x00000001
const RLEACCEL = 0x00000002
const DONTFREE = 0x00000004
const SIMD_ALIGNED = 0x00000008

# Skipping MacroDefinition: MUSTLOCK ( S ) ( ( ( S ) -> flags & RLEACCEL ) != 0 )
# Skipping MacroDefinition: LoadBMP ( file ) LoadBMP_RW ( RWFromFile ( file , "rb" ) , 1 )
# Skipping MacroDefinition: SaveBMP ( surface , file ) SaveBMP_RW ( surface , RWFromFile ( file , "wb" ) , 1 )

const BlitSurface = UpperBlit
const BlitScaled = UpperBlitScaled

mutable struct Surface
    flags::Uint32
    format::Ptr{PixelFormat}
    w::Cint
    h::Cint
    pitch::Cint
    pixels::Ptr{Cvoid}
    userdata::Ptr{Cvoid}
    locked::Cint
    lock_data::Ptr{Cvoid}
    clip_rect::Rect
    map::Ptr{BlitMap}
    refcount::Cint
end

const blit = Ptr{Cvoid}

@cenum YUV_CONVERSION_MODE::UInt32 begin
    YUV_CONVERSION_JPEG = 0
    YUV_CONVERSION_BT601 = 1
    YUV_CONVERSION_BT709 = 2
    YUV_CONVERSION_AUTOMATIC = 3
end


mutable struct ANONYMOUS5_info
    dummy::NTuple{64, Uint8}
end

mutable struct SysWMinfo
    version::version
    subsystem::SYSWM_TYPE
    info::ANONYMOUS5_info
end

mutable struct ANONYMOUS7_info
    dummy::NTuple{64, Uint8}
end

const Thread = Cvoid
const threadID = Culong
const TLSID = UInt32

@cenum ThreadPriority::UInt32 begin
    THREAD_PRIORITY_LOW = 0
    THREAD_PRIORITY_NORMAL = 1
    THREAD_PRIORITY_HIGH = 2
    THREAD_PRIORITY_TIME_CRITICAL = 3
end


const ThreadFunction = Ptr{Cvoid}

# Skipping MacroDefinition: TICKS_PASSED ( A , B ) ( ( Sint32 ) ( ( B ) - ( A ) ) <= 0 )

const TimerCallback = Ptr{Cvoid}
const TimerID = Cint

# Skipping MacroDefinition: TOUCH_MOUSEID ( ( Uint32 ) - 1 )
# Skipping MacroDefinition: MOUSE_TOUCHID ( ( Sint64 ) - 1 )

@cenum TouchDeviceType::Int32 begin
    TOUCH_DEVICE_INVALID = -1
    TOUCH_DEVICE_DIRECT = 0
    TOUCH_DEVICE_INDIRECT_ABSOLUTE = 1
    TOUCH_DEVICE_INDIRECT_RELATIVE = 2
end


mutable struct Finger
    id::FingerID
    x::Cfloat
    y::Cfloat
    pressure::Cfloat
end

const MAJOR_VERSION = 2
const MINOR_VERSION = 0
const PATCHLEVEL = 12

# Skipping MacroDefinition: VERSION ( x ) \
#{ ( x ) -> major = MAJOR_VERSION ; ( x ) -> minor = MINOR_VERSION ; ( x ) -> patch = PATCHLEVEL ; \
#}
# Skipping MacroDefinition: VERSIONNUM ( X , Y , Z ) ( ( X ) * 1000 + ( Y ) * 100 + ( Z ) )
# Skipping MacroDefinition: COMPILEDVERSION VERSIONNUM ( MAJOR_VERSION , MINOR_VERSION , PATCHLEVEL )
# Skipping MacroDefinition: VERSION_ATLEAST ( X , Y , Z ) ( COMPILEDVERSION >= VERSIONNUM ( X , Y , Z ) )

const WINDOWPOS_UNDEFINED_MASK = UInt32(0x1fff0000)

# Skipping MacroDefinition: WINDOWPOS_UNDEFINED_DISPLAY ( X ) ( WINDOWPOS_UNDEFINED_MASK | ( X ) )
# Skipping MacroDefinition: WINDOWPOS_UNDEFINED WINDOWPOS_UNDEFINED_DISPLAY ( 0 )
# Skipping MacroDefinition: WINDOWPOS_ISUNDEFINED ( X ) ( ( ( X ) & 0xFFFF0000 ) == WINDOWPOS_UNDEFINED_MASK )

const WINDOWPOS_CENTERED_MASK = UInt32(0x2fff0000)

# Skipping MacroDefinition: WINDOWPOS_CENTERED_DISPLAY ( X ) ( WINDOWPOS_CENTERED_MASK | ( X ) )
# Skipping MacroDefinition: WINDOWPOS_CENTERED WINDOWPOS_CENTERED_DISPLAY ( 0 )
# Skipping MacroDefinition: WINDOWPOS_ISCENTERED ( X ) ( ( ( X ) & 0xFFFF0000 ) == WINDOWPOS_CENTERED_MASK )

mutable struct DisplayMode
    format::Uint32
    w::Cint
    h::Cint
    refresh_rate::Cint
    driverdata::Ptr{Cvoid}
end

@cenum WindowFlags::UInt32 begin
    WINDOW_FULLSCREEN = 1
    WINDOW_OPENGL = 2
    WINDOW_SHOWN = 4
    WINDOW_HIDDEN = 8
    WINDOW_BORDERLESS = 16
    WINDOW_RESIZABLE = 32
    WINDOW_MINIMIZED = 64
    WINDOW_MAXIMIZED = 128
    WINDOW_INPUT_GRABBED = 256
    WINDOW_INPUT_FOCUS = 512
    WINDOW_MOUSE_FOCUS = 1024
    WINDOW_FULLSCREEN_DESKTOP = 4097
    WINDOW_FOREIGN = 2048
    WINDOW_ALLOW_HIGHDPI = 8192
    WINDOW_MOUSE_CAPTURE = 16384
    WINDOW_ALWAYS_ON_TOP = 32768
    WINDOW_SKIP_TASKBAR = 65536
    WINDOW_UTILITY = 131072
    WINDOW_TOOLTIP = 262144
    WINDOW_POPUP_MENU = 524288
    WINDOW_VULKAN = 268435456
end

@cenum WindowEventID::UInt32 begin
    WINDOWEVENT_NONE = 0
    WINDOWEVENT_SHOWN = 1
    WINDOWEVENT_HIDDEN = 2
    WINDOWEVENT_EXPOSED = 3
    WINDOWEVENT_MOVED = 4
    WINDOWEVENT_RESIZED = 5
    WINDOWEVENT_SIZE_CHANGED = 6
    WINDOWEVENT_MINIMIZED = 7
    WINDOWEVENT_MAXIMIZED = 8
    WINDOWEVENT_RESTORED = 9
    WINDOWEVENT_ENTER = 10
    WINDOWEVENT_LEAVE = 11
    WINDOWEVENT_FOCUS_GAINED = 12
    WINDOWEVENT_FOCUS_LOST = 13
    WINDOWEVENT_CLOSE = 14
    WINDOWEVENT_TAKE_FOCUS = 15
    WINDOWEVENT_HIT_TEST = 16
end

@cenum DisplayEventID::UInt32 begin
    DISPLAYEVENT_NONE = 0
    DISPLAYEVENT_ORIENTATION = 1
end

@cenum DisplayOrientation::UInt32 begin
    ORIENTATION_UNKNOWN = 0
    ORIENTATION_LANDSCAPE = 1
    ORIENTATION_LANDSCAPE_FLIPPED = 2
    ORIENTATION_PORTRAIT = 3
    ORIENTATION_PORTRAIT_FLIPPED = 4
end


const GLContext = Ptr{Cvoid}

@cenum GLattr::UInt32 begin
    GL_RED_SIZE = 0
    GL_GREEN_SIZE = 1
    GL_BLUE_SIZE = 2
    GL_ALPHA_SIZE = 3
    GL_BUFFER_SIZE = 4
    GL_DOUBLEBUFFER = 5
    GL_DEPTH_SIZE = 6
    GL_STENCIL_SIZE = 7
    GL_ACCUM_RED_SIZE = 8
    GL_ACCUM_GREEN_SIZE = 9
    GL_ACCUM_BLUE_SIZE = 10
    GL_ACCUM_ALPHA_SIZE = 11
    GL_STEREO = 12
    GL_MULTISAMPLEBUFFERS = 13
    GL_MULTISAMPLESAMPLES = 14
    GL_ACCELERATED_VISUAL = 15
    GL_RETAINED_BACKING = 16
    GL_CONTEXT_MAJOR_VERSION = 17
    GL_CONTEXT_MINOR_VERSION = 18
    GL_CONTEXT_EGL = 19
    GL_CONTEXT_FLAGS = 20
    GL_CONTEXT_PROFILE_MASK = 21
    GL_SHARE_WITH_CURRENT_CONTEXT = 22
    GL_FRAMEBUFFER_SRGB_CAPABLE = 23
    GL_CONTEXT_RELEASE_BEHAVIOR = 24
    GL_CONTEXT_RESET_NOTIFICATION = 25
    GL_CONTEXT_NO_ERROR = 26
end

@cenum GLprofile::UInt32 begin
    GL_CONTEXT_PROFILE_CORE = 1
    GL_CONTEXT_PROFILE_COMPATIBILITY = 2
    GL_CONTEXT_PROFILE_ES = 4
end

@cenum GLcontextFlag::UInt32 begin
    GL_CONTEXT_DEBUG_FLAG = 1
    GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2
    GL_CONTEXT_ROBUST_ACCESS_FLAG = 4
    GL_CONTEXT_RESET_ISOLATION_FLAG = 8
end

@cenum GLcontextReleaseFlag::UInt32 begin
    GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0
    GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1
end

@cenum GLContextResetNotification::UInt32 begin
    GL_CONTEXT_RESET_NO_NOTIFICATION = 0
    GL_CONTEXT_RESET_LOSE_CONTEXT = 1
end

@cenum HitTestResult::UInt32 begin
    HITTEST_NORMAL = 0
    HITTEST_DRAGGABLE = 1
    HITTEST_RESIZE_TOPLEFT = 2
    HITTEST_RESIZE_TOP = 3
    HITTEST_RESIZE_TOPRIGHT = 4
    HITTEST_RESIZE_RIGHT = 5
    HITTEST_RESIZE_BOTTOMRIGHT = 6
    HITTEST_RESIZE_BOTTOM = 7
    HITTEST_RESIZE_BOTTOMLEFT = 8
    HITTEST_RESIZE_LEFT = 9
end


const HitTest = Ptr{Cvoid}

# Skipping MacroDefinition: VK_DEFINE_HANDLE ( object ) typedef struct object ## _T * object ;
# Skipping MacroDefinition: VK_DEFINE_NON_DISPATCHABLE_HANDLE ( object ) typedef struct object ## _T * object ;

const VkInstance_T = Cvoid
const VkInstance = Ptr{VkInstance_T}
const VkSurfaceKHR_T = Cvoid
const VkSurfaceKHR = Ptr{VkSurfaceKHR_T}
const vulkanInstance = VkInstance
const vulkanSurface = VkSurfaceKHR

# Skipping MacroDefinition: DEPRECATED __attribute__ ( ( deprecated ) )
# Skipping MacroDefinition: UNUSED __attribute__ ( ( unused ) )
# Skipping MacroDefinition: DECLSPEC __attribute__ ( ( visibility ( "default" ) ) )
# Skipping MacroDefinition: FORCE_INLINE __attribute__ ( ( always_inline ) ) static __inline__
# Skipping MacroDefinition: NORETURN __attribute__ ( ( noreturn ) )
# Skipping MacroDefinition: NULL ( ( void * ) 0 )
