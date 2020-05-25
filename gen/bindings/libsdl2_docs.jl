# Automatically generated using Clang.jl

if isdefined(@__MODULE__, Symbol("SetWindowDisplayMode"))
    @eval @doc """
    SetWindowDisplayMode(Window *, const DisplayMode *)

Set the display mode used when a fullscreen window is visible.

By default the window's dimensions and the desktop format and refresh rate
are used.

param: window The window for which the display mode should be set.
param: mode The mode to use, or NULL for the default mode.

Return 0 on success, or -1 if setting the display mode failed.

 - `GetWindowDisplayMode()`
 - `SetWindowFullscreen()`

$(
    if SetWindowDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" SetWindowDisplayMode
end

if isdefined(@__MODULE__, Symbol("ConvertSurface"))
    @eval @doc """
    ConvertSurface(Surface *, const PixelFormat *, Uint32)

Creates a new surface of the specified format, and then copies and maps
the given surface to it so the blit of the converted surface will be as
fast as possible.  If this function fails, it returns NULL.

The `flags` parameter is passed to CreateRGBSurface() and has those
semantics.  You can also pass ::RLEACCEL in the flags parameter and
SDL will try to RLE accelerate colorkey and alpha blits in the resulting
surface.

$(
    if ConvertSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ConvertSurface), r"^No documentation found.\n" => "")
    end
)
""" ConvertSurface
end

if isdefined(@__MODULE__, Symbol("GetWindowDisplayIndex"))
    @eval @doc """
    GetWindowDisplayIndex(Window *)

Get the display index associated with a window.

Return the display index of the display containing the center of the
        window, or -1 on error.

$(
    if GetWindowDisplayIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowDisplayIndex), r"^No documentation found.\n" => "")
    end
)
""" GetWindowDisplayIndex
end

if isdefined(@__MODULE__, Symbol("HapticOpened"))
    @eval @doc """
    HapticOpened(int)

Checks if the haptic device at index has been opened.

param: device_index Index to check to see if it has been opened.
Return 1 if it has been opened or 0 if it hasn't.

 - `HapticOpen`
 - `HapticIndex`

$(
    if HapticOpened === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticOpened), r"^No documentation found.\n" => "")
    end
)
""" HapticOpened
end

if isdefined(@__MODULE__, Symbol("GetWindowOpacity"))
    @eval @doc """
    GetWindowOpacity(Window *, float *)

Get the opacity of a window.

If transparency isn't supported on this platform, opacity will be reported
as 1.0f without error.

param: window The window in question.
param: out_opacity Opacity (0.0f - transparent, 1.0f - opaque)

Return 0 on success, or -1 on error (invalid window, etc).

 - `SetWindowOpacity()`

$(
    if GetWindowOpacity === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowOpacity), r"^No documentation found.\n" => "")
    end
)
""" GetWindowOpacity
end

if isdefined(@__MODULE__, Symbol("HasMMX"))
    @eval @doc """
    HasMMX()

This function returns true if the CPU has MMX features.

$(
    if HasMMX === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasMMX), r"^No documentation found.\n" => "")
    end
)
""" HasMMX
end

if isdefined(@__MODULE__, Symbol("CreateTexture"))
    @eval @doc """
    CreateTexture(Renderer *, Uint32, int, int, int)

Create a texture for a rendering context.

param: renderer The renderer.
param: format The format of the texture.
param: access One of the enumerated values in ::TextureAccess.
param: w      The width of the texture in pixels.
param: h      The height of the texture in pixels.

Return The created texture is returned, or NULL if no rendering context was
        active,  the format was unsupported, or the width or height were out
        of range.

!!!note

    The contents of the texture are not defined at creation.

 - `QueryTexture()`
 - `UpdateTexture()`
 - `DestroyTexture()`

$(
    if CreateTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateTexture), r"^No documentation found.\n" => "")
    end
)
""" CreateTexture
end

if isdefined(@__MODULE__, Symbol("BlitSurface"))
    @eval @doc """
    BlitSurface


You should call BlitSurface() unless you know exactly how SDL
blitting works internally and how to use the other blit functions.

$(
    if BlitSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc BlitSurface), r"^No documentation found.\n" => "")
    end
)
""" BlitSurface
end

if isdefined(@__MODULE__, Symbol("CreateColorCursor"))
    @eval @doc """
    CreateColorCursor(Surface *, int, int)

Create a color cursor.

 - `FreeCursor()`

$(
    if CreateColorCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateColorCursor), r"^No documentation found.\n" => "")
    end
)
""" CreateColorCursor
end

if isdefined(@__MODULE__, Symbol("GetDisplayBounds"))
    @eval @doc """
    GetDisplayBounds(int, Rect *)

Get the desktop area represented by a display, with the primary
       display located at 0,0

Return 0 on success, or -1 if the index is out of range.

 - `GetNumVideoDisplays()`

$(
    if GetDisplayBounds === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayBounds), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayBounds
end

if isdefined(@__MODULE__, Symbol("HAPTIC_LEFTRIGHT"))
    @eval @doc """
    HAPTIC_LEFTRIGHT

Left/Right effect supported.

Haptic effect for direct control over high/low frequency motors.

 - `HapticLeftRight`
!!!warning

    this value was HAPTIC_SQUARE right before 2.0.0 shipped. Sorry,
        we ran out of bits, and this is important for XInput devices.

$(
    if HAPTIC_LEFTRIGHT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_LEFTRIGHT), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_LEFTRIGHT
end

if isdefined(@__MODULE__, Symbol("GL_ExtensionSupported"))
    @eval @doc """
    GL_ExtensionSupported(const char *)

Return true if an OpenGL extension is supported for the current
       context.

$(
    if GL_ExtensionSupported === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_ExtensionSupported), r"^No documentation found.\n" => "")
    end
)
""" GL_ExtensionSupported
end

if isdefined(@__MODULE__, Symbol("ClearHints"))
    @eval @doc """
    ClearHints()

 Clear all hints

This function is called during Quit() to free stored hints.

$(
    if ClearHints === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ClearHints), r"^No documentation found.\n" => "")
    end
)
""" ClearHints
end

if isdefined(@__MODULE__, Symbol("SetSurfaceColorMod"))
    @eval @doc """
    SetSurfaceColorMod(Surface *, Uint8, Uint8, Uint8)

Set an additional color value used in blit operations.

param: surface The surface to update.
param: r The red color value multiplied into blit operations.
param: g The green color value multiplied into blit operations.
param: b The blue color value multiplied into blit operations.

Return 0 on success, or -1 if the surface is not valid.

 - `GetSurfaceColorMod()`

$(
    if SetSurfaceColorMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetSurfaceColorMod), r"^No documentation found.\n" => "")
    end
)
""" SetSurfaceColorMod
end

if isdefined(@__MODULE__, Symbol("MetalView"))
    @eval @doc """
    MetalView

A handle to a CAMetalLayer-backed NSView (macOS) or UIView (iOS/tvOS).

!!!note

    This can be cast directly to an NSView or UIView.

$(
    if MetalView === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MetalView), r"^No documentation found.\n" => "")
    end
)
""" MetalView
end

if isdefined(@__MODULE__, Symbol("JoystickGetProduct"))
    @eval @doc """
    JoystickGetProduct(Joystick *)

Get the USB product ID of an opened joystick, if available.
If the product ID isn't available this function returns 0.

$(
    if JoystickGetProduct === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetProduct), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetProduct
end

if isdefined(@__MODULE__, Symbol("GetDefaultCursor"))
    @eval @doc """
    GetDefaultCursor()

Return the default cursor.

$(
    if GetDefaultCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDefaultCursor), r"^No documentation found.\n" => "")
    end
)
""" GetDefaultCursor
end

if isdefined(@__MODULE__, Symbol("RenderDrawLineF"))
    @eval @doc """
    RenderDrawLineF(Renderer *, float, float, float, float)

Draw a line on the current rendering target.

param: renderer The renderer which should draw a line.
param: x1 The x coordinate of the start point.
param: y1 The y coordinate of the start point.
param: x2 The x coordinate of the end point.
param: y2 The y coordinate of the end point.

Return 0 on success, or -1 on error

$(
    if RenderDrawLineF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawLineF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawLineF
end

if isdefined(@__MODULE__, Symbol("JoystickIsHaptic"))
    @eval @doc """
    JoystickIsHaptic(Joystick *)

Checks to see if a joystick has haptic features.

param: joystick Joystick to test for haptic capabilities.
Return TRUE if the joystick is haptic, FALSE if it isn't
        or -1 if an error occurred.

 - `HapticOpenFromJoystick`

$(
    if JoystickIsHaptic === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickIsHaptic), r"^No documentation found.\n" => "")
    end
)
""" JoystickIsHaptic
end

if isdefined(@__MODULE__, Symbol("FRect"))
    @eval @doc """
    FRect

A rectangle, with the origin at the upper left (floating point).

$(
    if FRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FRect), r"^No documentation found.\n" => "")
    end
)
""" FRect
end

if isdefined(@__MODULE__, Symbol("UpdateYUVTexture"))
    @eval @doc """
    UpdateYUVTexture(Texture *, const Rect *, const Uint8 *, int, const Uint8 *, int, const Uint8 *, int)

Update a rectangle within a planar YV12 or IYUV texture with new pixel data.

param: texture   The texture to update
param: rect      A pointer to the rectangle of pixels to update, or NULL to
                 update the entire texture.
param: Yplane    The raw pixel data for the Y plane.
param: Ypitch    The number of bytes between rows of pixel data for the Y plane.
param: Uplane    The raw pixel data for the U plane.
param: Upitch    The number of bytes between rows of pixel data for the U plane.
param: Vplane    The raw pixel data for the V plane.
param: Vpitch    The number of bytes between rows of pixel data for the V plane.

Return 0 on success, or -1 if the texture is not valid.

!!!note

    You can use UpdateTexture() as long as your pixel data is
      a contiguous block of Y and U/V planes in the proper order, but
      this function is available if your pixel data is not contiguous.

$(
    if UpdateYUVTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpdateYUVTexture), r"^No documentation found.\n" => "")
    end
)
""" UpdateYUVTexture
end

if isdefined(@__MODULE__, Symbol("JoystickNameForIndex"))
    @eval @doc """
    JoystickNameForIndex(int)

Get the implementation dependent name of a joystick.
This can be called before any joysticks are opened.
If no name can be found, this function returns NULL.

$(
    if JoystickNameForIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickNameForIndex), r"^No documentation found.\n" => "")
    end
)
""" JoystickNameForIndex
end

if isdefined(@__MODULE__, Symbol("HasSSE2"))
    @eval @doc """
    HasSSE2()

This function returns true if the CPU has SSE2 features.

$(
    if HasSSE2 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasSSE2), r"^No documentation found.\n" => "")
    end
)
""" HasSSE2
end

if isdefined(@__MODULE__, Symbol("RenderFillRect"))
    @eval @doc """
    RenderFillRect(Renderer *, const Rect *)

Fill a rectangle on the current rendering target with the drawing color.

param: renderer The renderer which should fill a rectangle.
param: rect A pointer to the destination rectangle, or NULL for the entire
            rendering target.

Return 0 on success, or -1 on error

$(
    if RenderFillRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderFillRect), r"^No documentation found.\n" => "")
    end
)
""" RenderFillRect
end

if isdefined(@__MODULE__, Symbol("AtomicCAS"))
    @eval @doc """
    AtomicCAS(atomic_t *, int, int)

Set an atomic variable to a new value if it is currently an old value.

Return TRUE if the atomic variable was set, FALSE otherwise.

!!!note

    If you don't know what this function is for, you shouldn't use it!

$(
    if AtomicCAS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicCAS), r"^No documentation found.\n" => "")
    end
)
""" AtomicCAS
end

if isdefined(@__MODULE__, Symbol("ThreadID"))
    @eval @doc """
    ThreadID()

Get the thread identifier for the current thread.

$(
    if ThreadID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ThreadID), r"^No documentation found.\n" => "")
    end
)
""" ThreadID
end

if isdefined(@__MODULE__, Symbol("GetQueuedAudioSize"))
    @eval @doc """
    GetQueuedAudioSize(AudioDeviceID)

Get the number of bytes of still-queued audio.

For playback device:

  This is the number of bytes that have been queued for playback with
  QueueAudio(), but have not yet been sent to the hardware. This
  number may shrink at any time, so this only informs of pending data.

  Once we've sent it to the hardware, this function can not decide the
  exact byte boundary of what has been played. It's possible that we just
  gave the hardware several kilobytes right before you called this
  function, but it hasn't played any of it yet, or maybe half of it, etc.

For capture devices:

  This is the number of bytes that have been captured by the device and
  are waiting for you to dequeue. This number may grow at any time, so
  this only informs of the lower-bound of available data.

You may not queue audio on a device that is using an application-supplied
callback; calling this function on such a device always returns 0.
You have to queue audio with QueueAudio()/DequeueAudio(), or use
the audio callback, but not both.

You should not call LockAudio() on the device before querying; SDL
handles locking internally for this function.

param: dev The device ID of which we will query queued audio size.
Return Number of bytes (not samples!) of queued audio.

 - `QueueAudio`
 - `ClearQueuedAudio`

$(
    if GetQueuedAudioSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetQueuedAudioSize), r"^No documentation found.\n" => "")
    end
)
""" GetQueuedAudioSize
end

if isdefined(@__MODULE__, Symbol("RemoveTimer"))
    @eval @doc """
    RemoveTimer(TimerID)

Remove a timer knowing its ID.

Return A boolean value indicating success or failure.

!!!warning

    It is not safe to remove a timer multiple times.

$(
    if RemoveTimer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RemoveTimer), r"^No documentation found.\n" => "")
    end
)
""" RemoveTimer
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI

 A variable controlling whether the HIDAPI joystick drivers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI drivers are not used
  "1"       - HIDAPI drivers are used (the default)

This variable is the default for all drivers, but can be overridden by the hints for specific drivers below.

$(
    if HINT_JOYSTICK_HIDAPI === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI
end

if isdefined(@__MODULE__, Symbol("NumSensors"))
    @eval @doc """
    NumSensors()

Count the number of sensors attached to the system right now

$(
    if NumSensors === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc NumSensors), r"^No documentation found.\n" => "")
    end
)
""" NumSensors
end

if isdefined(@__MODULE__, Symbol("DisableScreenSaver"))
    @eval @doc """
    DisableScreenSaver()

Prevent the screen from being blanked by a screensaver

 - `IsScreenSaverEnabled()`
 - `EnableScreenSaver()`

$(
    if DisableScreenSaver === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DisableScreenSaver), r"^No documentation found.\n" => "")
    end
)
""" DisableScreenSaver
end

if isdefined(@__MODULE__, Symbol("MaximizeWindow"))
    @eval @doc """
    MaximizeWindow(Window *)

Make a window as large as possible.

 - `RestoreWindow()`

$(
    if MaximizeWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MaximizeWindow), r"^No documentation found.\n" => "")
    end
)
""" MaximizeWindow
end

if isdefined(@__MODULE__, Symbol("AtomicCASPtr"))
    @eval @doc """
    AtomicCASPtr(void **, void *, void *)

Set a pointer to a new value if it is currently an old value.

Return TRUE if the pointer was set, FALSE otherwise.

!!!note

    If you don't know what this function is for, you shouldn't use it!

$(
    if AtomicCASPtr === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicCASPtr), r"^No documentation found.\n" => "")
    end
)
""" AtomicCASPtr
end

if isdefined(@__MODULE__, Symbol("GetCurrentAudioDriver"))
    @eval @doc """
    GetCurrentAudioDriver()

This function returns the name of the current audio driver, or NULL
if no driver has been initialized.

$(
    if GetCurrentAudioDriver === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCurrentAudioDriver), r"^No documentation found.\n" => "")
    end
)
""" GetCurrentAudioDriver
end

if isdefined(@__MODULE__, Symbol("HapticNumEffectsPlaying"))
    @eval @doc """
    HapticNumEffectsPlaying(Haptic *)

Returns the number of effects a haptic device can play at the same
       time.

This is not supported on all platforms, but will always return a value.
Added here for the sake of completeness.

param: haptic The haptic device to query maximum playing effects.
Return The number of effects the haptic device can play at the same time
        or -1 on error.

 - `HapticNumEffects`
 - `HapticQuery`

$(
    if HapticNumEffectsPlaying === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticNumEffectsPlaying), r"^No documentation found.\n" => "")
    end
)
""" HapticNumEffectsPlaying
end

if isdefined(@__MODULE__, Symbol("JoystickGetAxis"))
    @eval @doc """
    JoystickGetAxis(Joystick *, int)

Get the current state of an axis control on a joystick.

The state is a value ranging from -32768 to 32767.

The axis indices start at index 0.

$(
    if JoystickGetAxis === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetAxis), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetAxis
end

if isdefined(@__MODULE__, Symbol("atomic_t"))
    @eval @doc """
    atomic_t

A type representing an atomic integer value.  It is a struct
      so people don't accidentally use numeric operations on it.

$(
    if atomic_t === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc atomic_t), r"^No documentation found.\n" => "")
    end
)
""" atomic_t
end

if isdefined(@__MODULE__, Symbol("GameControllerOpen"))
    @eval @doc """
    GameControllerOpen(int)

Open a game controller for use.
The index passed as an argument refers to the N'th game controller on the system.
This index is not the value which will identify this controller in future
controller events.  The joystick's instance id (::JoystickID) will be
used there instead.

Return A controller identifier, or NULL if an error occurred.

$(
    if GameControllerOpen === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerOpen), r"^No documentation found.\n" => "")
    end
)
""" GameControllerOpen
end

if isdefined(@__MODULE__, Symbol("SIMDGetAlignment"))
    @eval @doc """
    SIMDGetAlignment()

Report the alignment this system needs for SIMD allocations.

This will return the minimum number of bytes to which a pointer must be
aligned to be compatible with SIMD instructions on the current machine.
For example, if the machine supports SSE only, it will return 16, but if
it supports AVX-512F, it'll return 64 (etc). This only reports values for
instruction sets SDL knows about, so if your SDL build doesn't have
HasAVX512F(), then it might return 16 for the SSE support it sees and
not 64 for the AVX-512 instructions that exist but SDL doesn't know about.
Plan accordingly.

$(
    if SIMDGetAlignment === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SIMDGetAlignment), r"^No documentation found.\n" => "")
    end
)
""" SIMDGetAlignment
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_SCALE_QUALITY"))
    @eval @doc """
    HINT_RENDER_SCALE_QUALITY

 A variable controlling the scaling quality

This variable can be set to the following values:
  "0" or "nearest" - Nearest pixel sampling
  "1" or "linear"  - Linear filtering (supported by OpenGL and Direct3D)
  "2" or "best"    - Currently this is the same as "linear"

By default nearest pixel sampling is used

$(
    if HINT_RENDER_SCALE_QUALITY === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_SCALE_QUALITY), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_SCALE_QUALITY
end

if isdefined(@__MODULE__, Symbol("RenderSetViewport"))
    @eval @doc """
    RenderSetViewport(Renderer *, const Rect *)

Set the drawing area for rendering on the current target.

param: renderer The renderer for which the drawing area should be set.
param: rect The rectangle representing the drawing area, or NULL to set the viewport to the entire target.

The x,y of the viewport rect represents the origin for rendering.

Return 0 on success, or -1 on error

!!!note

    If the window associated with the renderer is resized, the viewport is automatically reset.

 - `RenderGetViewport()`
 - `RenderSetLogicalSize()`

$(
    if RenderSetViewport === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderSetViewport), r"^No documentation found.\n" => "")
    end
)
""" RenderSetViewport
end

if isdefined(@__MODULE__, Symbol("LockJoysticks"))
    @eval @doc """
    LockJoysticks()

Locking for multi-threaded access to the joystick API

If you are using the joystick API or handling events from multiple threads
you should use these locking functions to protect access to the joysticks.

In particular, you are guaranteed that the joystick list won't change, so
the API functions that take a joystick index will be valid, and joystick
and game controller events will not be delivered.

$(
    if LockJoysticks === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LockJoysticks), r"^No documentation found.\n" => "")
    end
)
""" LockJoysticks
end

if isdefined(@__MODULE__, Symbol("PumpEvents"))
    @eval @doc """
    PumpEvents()

Pumps the event loop, gathering events from the input devices.

This function updates the event queue and internal input device state.

This should only be run in the thread that sets the video mode.

$(
    if PumpEvents === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PumpEvents), r"^No documentation found.\n" => "")
    end
)
""" PumpEvents
end

if isdefined(@__MODULE__, Symbol("JoystickEventState"))
    @eval @doc """
    JoystickEventState(int)

Enable/disable joystick event polling.

If joystick events are disabled, you must call JoystickUpdate()
yourself and check the state of the joystick when you want joystick
information.

The state can be one of ::QUERY, ::ENABLE or ::IGNORE.

$(
    if JoystickEventState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickEventState), r"^No documentation found.\n" => "")
    end
)
""" JoystickEventState
end

if isdefined(@__MODULE__, Symbol("VideoInit"))
    @eval @doc """
    VideoInit(const char *)

Initialize the video subsystem, optionally specifying a video driver.

param: driver_name Initialize a specific driver by name, or NULL for the
                   default video driver.

Return 0 on success, -1 on error

This function initializes the video subsystem; setting up a connection
to the window manager, etc, and determines the available display modes
and pixel formats, but does not initialize a window or graphics mode.

 - `VideoQuit()`

$(
    if VideoInit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc VideoInit), r"^No documentation found.\n" => "")
    end
)
""" VideoInit
end

if isdefined(@__MODULE__, Symbol("HasNEON"))
    @eval @doc """
    HasNEON()

This function returns true if the CPU has NEON (ARM SIMD) features.

$(
    if HasNEON === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasNEON), r"^No documentation found.\n" => "")
    end
)
""" HasNEON
end

if isdefined(@__MODULE__, Symbol("GetRenderDrawColor"))
    @eval @doc """
    GetRenderDrawColor(Renderer *, Uint8 *, Uint8 *, Uint8 *, Uint8 *)

Get the color used for drawing operations (Rect, Line and Clear).

param: renderer The renderer from which drawing color should be queried.
param: r A pointer to the red value used to draw on the rendering target.
param: g A pointer to the green value used to draw on the rendering target.
param: b A pointer to the blue value used to draw on the rendering target.
param: a A pointer to the alpha value used to draw on the rendering target,
         usually ::ALPHA_OPAQUE (255).

Return 0 on success, or -1 on error

$(
    if GetRenderDrawColor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRenderDrawColor), r"^No documentation found.\n" => "")
    end
)
""" GetRenderDrawColor
end

if isdefined(@__MODULE__, Symbol("GetWindowMinimumSize"))
    @eval @doc """
    GetWindowMinimumSize(Window *, int *, int *)

Get the minimum size of a window's client area.

param: window   The window to query.
param: w        Pointer to variable for storing the minimum width, may be NULL
param: h        Pointer to variable for storing the minimum height, may be NULL

 - `GetWindowMaximumSize()`
 - `SetWindowMinimumSize()`

$(
    if GetWindowMinimumSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowMinimumSize), r"^No documentation found.\n" => "")
    end
)
""" GetWindowMinimumSize
end

if isdefined(@__MODULE__, Symbol("WaitEventTimeout"))
    @eval @doc """
    WaitEventTimeout(Event *, int)

Waits until the specified timeout (in milliseconds) for the next
       available event.

Return 1, or 0 if there was an error while waiting for events.

param: event If not NULL, the next event is removed from the queue and
             stored in that area.
param: timeout The timeout (in milliseconds) to wait for next event.

$(
    if WaitEventTimeout === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WaitEventTimeout), r"^No documentation found.\n" => "")
    end
)
""" WaitEventTimeout
end

if isdefined(@__MODULE__, Symbol("RWwrite"))
    @eval @doc """
    RWwrite(RWops *, const void *, size_t, size_t)

Write exactly `num` objects each of size `size` from the area
pointed at by `ptr` to data stream.

Return the number of objects written, or 0 at error or end of file.

$(
    if RWwrite === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWwrite), r"^No documentation found.\n" => "")
    end
)
""" RWwrite
end

if isdefined(@__MODULE__, Symbol("SaveDollarTemplate"))
    @eval @doc """
    SaveDollarTemplate(GestureID, RWops *)

Save a currently loaded Dollar Gesture template



$(
    if SaveDollarTemplate === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SaveDollarTemplate), r"^No documentation found.\n" => "")
    end
)
""" SaveDollarTemplate
end

if isdefined(@__MODULE__, Symbol("Vulkan_GetVkGetInstanceProcAddr"))
    @eval @doc """
    Vulkan_GetVkGetInstanceProcAddr()

Get the address of the `vkGetInstanceProcAddr` function.

!!!note

    This should be called after either calling Vulkan_LoadLibrary
      or creating an Window with the WINDOW_VULKAN flag.

$(
    if Vulkan_GetVkGetInstanceProcAddr === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_GetVkGetInstanceProcAddr), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_GetVkGetInstanceProcAddr
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_PS4_RUMBLE"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_PS4_RUMBLE

 A variable controlling whether extended input reports should be used for PS4 controllers when using the HIDAPI driver.

This variable can be set to the following values:
  "0"       - extended reports are not enabled (the default)
  "1"       - extended reports

Extended input reports allow rumble on Bluetooth PS4 controllers, but
break DirectInput handling for applications that don't use SDL.

Once extended reports are enabled, they can not be disabled without
power cycling the controller.

$(
    if HINT_JOYSTICK_HIDAPI_PS4_RUMBLE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_PS4_RUMBLE), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_PS4_RUMBLE
end

if isdefined(@__MODULE__, Symbol("HitTest"))
    @eval @doc """
    HitTest

Callback used for hit-testing.

 - `SetWindowHitTest`

$(
    if HitTest === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HitTest), r"^No documentation found.\n" => "")
    end
)
""" HitTest
end

if isdefined(@__MODULE__, Symbol("HINT_DISPLAY_USABLE_BOUNDS"))
    @eval @doc """
    HINT_DISPLAY_USABLE_BOUNDS

Override for GetDisplayUsableBounds()

If set, this hint will override the expected results for
GetDisplayUsableBounds() for display index 0. Generally you don't want
to do this, but this allows an embedded system to request that some of the
screen be reserved for other uses when paired with a well-behaved
application.

The contents of this hint must be 4 comma-separated integers, the first
is the bounds x, then y, width and height, in that order.

$(
    if HINT_DISPLAY_USABLE_BOUNDS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_DISPLAY_USABLE_BOUNDS), r"^No documentation found.\n" => "")
    end
)
""" HINT_DISPLAY_USABLE_BOUNDS
end

if isdefined(@__MODULE__, Symbol("UpperBlit"))
    @eval @doc """
    UpperBlit(Surface *, const Rect *, Surface *, Rect *)

This is the public blit function, BlitSurface(), and it performs
rectangle validation and clipping before passing it to LowerBlit()

$(
    if UpperBlit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpperBlit), r"^No documentation found.\n" => "")
    end
)
""" UpperBlit
end

if isdefined(@__MODULE__, Symbol("SIMDFree"))
    @eval @doc """
    SIMDFree(void *)

Deallocate memory obtained from SIMDAlloc

It is not valid to use this function on a pointer from anything but
SIMDAlloc(). It can't be used on pointers from malloc, realloc,
malloc, memalign, new[], etc.

However, SIMDFree(NULL) is a legal no-op.

 - `SIMDAlloc`

$(
    if SIMDFree === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SIMDFree), r"^No documentation found.\n" => "")
    end
)
""" SIMDFree
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_DIRECT3D_THREADSAFE"))
    @eval @doc """
    HINT_RENDER_DIRECT3D_THREADSAFE

 A variable controlling whether the Direct3D device is initialized for thread-safe operations.

This variable can be set to the following values:
  "0"       - Thread-safety is not enabled (faster)
  "1"       - Thread-safety is enabled

By default the Direct3D device is created with thread-safety disabled.

$(
    if HINT_RENDER_DIRECT3D_THREADSAFE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_DIRECT3D_THREADSAFE), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_DIRECT3D_THREADSAFE
end

if isdefined(@__MODULE__, Symbol("HAPTIC_CUSTOM"))
    @eval @doc """
    HAPTIC_CUSTOM

Custom effect is supported.

User defined custom haptic effect.

$(
    if HAPTIC_CUSTOM === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_CUSTOM), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_CUSTOM
end

if isdefined(@__MODULE__, Symbol("SetAssertionHandler"))
    @eval @doc """
    SetAssertionHandler(AssertionHandler, void *)

Set an application-defined assertion handler.

This allows an app to show its own assertion UI and/or force the
response to an assertion failure. If the app doesn't provide this, SDL
will try to do the right thing, popping up a system-specific GUI dialog,
and probably minimizing any fullscreen windows.

This callback may fire from any thread, but it runs wrapped in a mutex, so
it will only fire from one thread at a time.

Setting the callback to NULL restores SDL's original internal handler.

This callback is NOT reset to SDL's internal handler upon Quit()!

Return AssertState value of how to handle the assertion failure.

param: handler Callback function, called when an assertion fails.
param: userdata A pointer passed to the callback as-is.

$(
    if SetAssertionHandler === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetAssertionHandler), r"^No documentation found.\n" => "")
    end
)
""" SetAssertionHandler
end

if isdefined(@__MODULE__, Symbol("GetWindowTitle"))
    @eval @doc """
    GetWindowTitle(Window *)

Get the title of a window, in UTF-8 format.

 - `SetWindowTitle()`

$(
    if GetWindowTitle === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowTitle), r"^No documentation found.\n" => "")
    end
)
""" GetWindowTitle
end

if isdefined(@__MODULE__, Symbol("RenderGetViewport"))
    @eval @doc """
    RenderGetViewport(Renderer *, Rect *)

Get the drawing area for the current target.

 - `RenderSetViewport()`

$(
    if RenderGetViewport === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetViewport), r"^No documentation found.\n" => "")
    end
)
""" RenderGetViewport
end

if isdefined(@__MODULE__, Symbol("SetTextureColorMod"))
    @eval @doc """
    SetTextureColorMod(Texture *, Uint8, Uint8, Uint8)

Set an additional color value used in render copy operations.

param: texture The texture to update.
param: r       The red color value multiplied into copy operations.
param: g       The green color value multiplied into copy operations.
param: b       The blue color value multiplied into copy operations.

Return 0 on success, or -1 if the texture is not valid or color modulation
        is not supported.

 - `GetTextureColorMod()`

$(
    if SetTextureColorMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetTextureColorMod), r"^No documentation found.\n" => "")
    end
)
""" SetTextureColorMod
end

if isdefined(@__MODULE__, Symbol("HINT_WINDOWS_NO_CLOSE_ON_ALT_F4"))
    @eval @doc """
    HINT_WINDOWS_NO_CLOSE_ON_ALT_F4

Tell SDL not to generate window-close events for Alt+F4 on Windows.

The variable can be set to the following values:
 "0"       - SDL will generate a window-close event when it sees Alt+F4.
 "1"       - SDL will only do normal key handling for Alt+F4.

$(
    if HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINDOWS_NO_CLOSE_ON_ALT_F4), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINDOWS_NO_CLOSE_ON_ALT_F4
end

if isdefined(@__MODULE__, Symbol("SetCursor"))
    @eval @doc """
    SetCursor(Cursor *)

Set the active cursor.

$(
    if SetCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetCursor), r"^No documentation found.\n" => "")
    end
)
""" SetCursor
end

if isdefined(@__MODULE__, Symbol("GameControllerGetJoystick"))
    @eval @doc """
    GameControllerGetJoystick(GameController *)

Get the underlying joystick object used by a controller

$(
    if GameControllerGetJoystick === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetJoystick), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetJoystick
end

if isdefined(@__MODULE__, Symbol("GameControllerEventState"))
    @eval @doc """
    GameControllerEventState(int)

Enable/disable controller event polling.

If controller events are disabled, you must call GameControllerUpdate()
yourself and check the state of the controller when you want controller
information.

The state can be one of ::QUERY, ::ENABLE or ::IGNORE.

$(
    if GameControllerEventState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerEventState), r"^No documentation found.\n" => "")
    end
)
""" GameControllerEventState
end

if isdefined(@__MODULE__, Symbol("GL_GetSwapInterval"))
    @eval @doc """
    GL_GetSwapInterval()

Get the swap interval for the current OpenGL context.

Return 0 if there is no vertical retrace synchronization, 1 if the buffer
        swap is synchronized with the vertical retrace, and -1 if late
        swaps happen immediately instead of waiting for the next retrace.
        If the system can't determine the swap interval, or there isn't a
        valid current context, this will return 0 as a safe default.

 - `GL_SetSwapInterval()`

$(
    if GL_GetSwapInterval === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetSwapInterval), r"^No documentation found.\n" => "")
    end
)
""" GL_GetSwapInterval
end

if isdefined(@__MODULE__, Symbol("HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING"))
    @eval @doc """
    HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING

 A variable that causes SDL to use the old axis and button mapping for XInput devices.

This hint is for backwards compatibility only and will be removed in SDL 2.1

The default value is "0".  This hint must be set before Init()

$(
    if HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING), r"^No documentation found.\n" => "")
    end
)
""" HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING
end

if isdefined(@__MODULE__, Symbol("GetWindowGrab"))
    @eval @doc """
    GetWindowGrab(Window *)

Get a window's input grab mode.

Return This returns TRUE if input is grabbed, and FALSE otherwise.

 - `SetWindowGrab()`

$(
    if GetWindowGrab === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowGrab), r"^No documentation found.\n" => "")
    end
)
""" GetWindowGrab
end

if isdefined(@__MODULE__, Symbol("HINT_WINDOWS_INTRESOURCE_ICON"))
    @eval @doc """
    HINT_WINDOWS_INTRESOURCE_ICON

A variable to specify custom icon resource id from RC file on Windows platform 

$(
    if HINT_WINDOWS_INTRESOURCE_ICON === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINDOWS_INTRESOURCE_ICON), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINDOWS_INTRESOURCE_ICON
end

if isdefined(@__MODULE__, Symbol("GetTextureAlphaMod"))
    @eval @doc """
    GetTextureAlphaMod(Texture *, Uint8 *)

Get the additional alpha value used in render copy operations.

param: texture The texture to query.
param: alpha     A pointer filled in with the current alpha value.

Return 0 on success, or -1 if the texture is not valid.

 - `SetTextureAlphaMod()`

$(
    if GetTextureAlphaMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTextureAlphaMod), r"^No documentation found.\n" => "")
    end
)
""" GetTextureAlphaMod
end

if isdefined(@__MODULE__, Symbol("SetHintWithPriority"))
    @eval @doc """
    SetHintWithPriority(const char *, const char *, HintPriority)

Set a hint with a specific priority

The priority controls the behavior when setting a hint that already
has a value.  Hints will replace existing hints of their priority and
lower.  Environment variables are considered to have override priority.

Return TRUE if the hint was set, FALSE otherwise

$(
    if SetHintWithPriority === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetHintWithPriority), r"^No documentation found.\n" => "")
    end
)
""" SetHintWithPriority
end

if isdefined(@__MODULE__, Symbol("GetVersion"))
    @eval @doc """
    GetVersion(version *)

Get the version of SDL that is linked against your program.

If you are linking to SDL dynamically, then it is possible that the
current version will be different than the version you compiled against.
This function returns the current version, while VERSION() is a
macro that tells you what version you compiled with.

```C
version compiled;
version linked;

VERSION(&compiled);
GetVersion(&linked);
printf("We compiled against SDL version %d.%d.%d ...:n",
       compiled.major, compiled.minor, compiled.patch);
printf("But we linked against SDL version %d.%d.%d.:n",
       linked.major, linked.minor, linked.patch);
```

This function may be called safely at any time, even before Init().

 - `VERSION`

$(
    if GetVersion === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetVersion), r"^No documentation found.\n" => "")
    end
)
""" GetVersion
end

if isdefined(@__MODULE__, Symbol("HINT_QTWAYLAND_WINDOW_FLAGS"))
    @eval @doc """
    HINT_QTWAYLAND_WINDOW_FLAGS

 Flags to set on QtWayland windows to integrate with the native window manager.

On QtWayland platforms, this hint controls the flags to set on the windows.
For example, on Sailfish OS "OverridesSystemGestures" disables swipe gestures.

This variable is a space-separated list of the following values (empty = no flags):
  "OverridesSystemGestures", "StaysOnTop", "BypassWindowManager"

$(
    if HINT_QTWAYLAND_WINDOW_FLAGS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_QTWAYLAND_WINDOW_FLAGS), r"^No documentation found.\n" => "")
    end
)
""" HINT_QTWAYLAND_WINDOW_FLAGS
end

if isdefined(@__MODULE__, Symbol("GameControllerFromInstanceID"))
    @eval @doc """
    GameControllerFromInstanceID(JoystickID)

Return the GameController associated with an instance id.

$(
    if GameControllerFromInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerFromInstanceID), r"^No documentation found.\n" => "")
    end
)
""" GameControllerFromInstanceID
end

if isdefined(@__MODULE__, Symbol("CommonEvent"))
    @eval @doc """
    CommonEvent

Fields shared by every event

$(
    if CommonEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CommonEvent), r"^No documentation found.\n" => "")
    end
)
""" CommonEvent
end

if isdefined(@__MODULE__, Symbol("GameControllerGetType"))
    @eval @doc """
    GameControllerGetType(GameController *)

Return the type of this currently opened controller

$(
    if GameControllerGetType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetType), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetType
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_WINDOW_VISUALID"))
    @eval @doc """
    HINT_VIDEO_X11_WINDOW_VISUALID

 A variable forcing the visual ID chosen for new X11 windows


$(
    if HINT_VIDEO_X11_WINDOW_VISUALID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_WINDOW_VISUALID), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_WINDOW_VISUALID
end

if isdefined(@__MODULE__, Symbol("DelEventWatch"))
    @eval @doc """
    DelEventWatch(EventFilter, void *)

Remove an event watch function added with AddEventWatch()

$(
    if DelEventWatch === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DelEventWatch), r"^No documentation found.\n" => "")
    end
)
""" DelEventWatch
end

if isdefined(@__MODULE__, Symbol("HapticNumEffects"))
    @eval @doc """
    HapticNumEffects(Haptic *)

Returns the number of effects a haptic device can store.

On some platforms this isn't fully supported, and therefore is an
approximation.  Always check to see if your created effect was actually
created and do not rely solely on HapticNumEffects().

param: haptic The haptic device to query effect max.
Return The number of effects the haptic device can store or
        -1 on error.

 - `HapticNumEffectsPlaying`
 - `HapticQuery`

$(
    if HapticNumEffects === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticNumEffects), r"^No documentation found.\n" => "")
    end
)
""" HapticNumEffects
end

if isdefined(@__MODULE__, Symbol("SetRenderDrawColor"))
    @eval @doc """
    SetRenderDrawColor(Renderer *, Uint8, Uint8, Uint8, Uint8)

Set the color used for drawing operations (Rect, Line and Clear).

param: renderer The renderer for which drawing color should be set.
param: r The red value used to draw on the rendering target.
param: g The green value used to draw on the rendering target.
param: b The blue value used to draw on the rendering target.
param: a The alpha value used to draw on the rendering target, usually
         ::ALPHA_OPAQUE (255).

Return 0 on success, or -1 on error

$(
    if SetRenderDrawColor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetRenderDrawColor), r"^No documentation found.\n" => "")
    end
)
""" SetRenderDrawColor
end

if isdefined(@__MODULE__, Symbol("TLSGet"))
    @eval @doc """
    TLSGet(TLSID)

Get the value associated with a thread local storage ID for the current thread.

param: id The thread local storage ID

Return The value associated with the ID for the current thread, or NULL if no value has been set.

 - `TLSCreate()`
 - `TLSSet()`

$(
    if TLSGet === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TLSGet), r"^No documentation found.\n" => "")
    end
)
""" TLSGet
end

if isdefined(@__MODULE__, Symbol("SetHint"))
    @eval @doc """
    SetHint(const char *, const char *)

Set a hint with normal priority

Return TRUE if the hint was set, FALSE otherwise

$(
    if SetHint === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetHint), r"^No documentation found.\n" => "")
    end
)
""" SetHint
end

if isdefined(@__MODULE__, Symbol("DequeueAudio"))
    @eval @doc """
    DequeueAudio(AudioDeviceID, void *, Uint32)

Dequeue more audio on non-callback devices.

(If you are looking to queue audio for output on a non-callback playback
device, you want QueueAudio() instead. This will always return 0
if you use it with playback devices.)

SDL offers two ways to retrieve audio from a capture device: you can
either supply a callback that SDL triggers with some frequency as the
device records more audio data, (push method), or you can supply no
callback, and then SDL will expect you to retrieve data at regular
intervals (pull method) with this function.

There are no limits on the amount of data you can queue, short of
exhaustion of address space. Data from the device will keep queuing as
necessary without further intervention from you. This means you will
eventually run out of memory if you aren't routinely dequeueing data.

Capture devices will not queue data when paused; if you are expecting
to not need captured audio for some length of time, use
PauseAudioDevice() to stop the capture device from queueing more
data. This can be useful during, say, level loading times. When
unpaused, capture devices will start queueing data from that point,
having flushed any capturable data available while paused.

This function is thread-safe, but dequeueing from the same device from
two threads at once does not promise which thread will dequeued data
first.

You may not dequeue audio from a device that is using an
application-supplied callback; doing so returns an error. You have to use
the audio callback, or dequeue audio with this function, but not both.

You should not call LockAudio() on the device before queueing; SDL
handles locking internally for this function.

param: dev The device ID from which we will dequeue audio.
param: data A pointer into where audio data should be copied.
param: len The number of bytes (not samples!) to which (data) points.
Return number of bytes dequeued, which could be less than requested.

 - `GetQueuedAudioSize`
 - `ClearQueuedAudio`

$(
    if DequeueAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DequeueAudio), r"^No documentation found.\n" => "")
    end
)
""" DequeueAudio
end

if isdefined(@__MODULE__, Symbol("_GameController"))
    @eval @doc """
    _GameController

The gamecontroller structure used to identify an SDL game controller

$(
    if _GameController === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc _GameController), r"^No documentation found.\n" => "")
    end
)
""" _GameController
end

if isdefined(@__MODULE__, Symbol("HINT_TIMER_RESOLUTION"))
    @eval @doc """
    HINT_TIMER_RESOLUTION

A variable that controls the timer resolution, in milliseconds.

The higher resolution the timer, the more frequently the CPU services
timer interrupts, and the more precise delays are, but this takes up
power and CPU time.  This hint is only used on Windows 7 and earlier.

See this blog post for more information:
http://randomascii.wordpress.com/2013/07/08/windows-timer-resolution-megawatts-wasted/

If this variable is set to "0", the system timer resolution is not set.

The default value is "1". This hint may be set at any time.

$(
    if HINT_TIMER_RESOLUTION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_TIMER_RESOLUTION), r"^No documentation found.\n" => "")
    end
)
""" HINT_TIMER_RESOLUTION
end

if isdefined(@__MODULE__, Symbol("DuplicateSurface"))
    @eval @doc """
    DuplicateSurface(Surface *)

Creates a new surface identical to the existing surface

$(
    if DuplicateSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DuplicateSurface), r"^No documentation found.\n" => "")
    end
)
""" DuplicateSurface
end

if isdefined(@__MODULE__, Symbol("RectEmpty"))
    @eval @doc """
    RectEmpty(const Rect *)

Returns true if the rectangle has no area.

$(
    if RectEmpty === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RectEmpty), r"^No documentation found.\n" => "")
    end
)
""" RectEmpty
end

if isdefined(@__MODULE__, Symbol("HapticCondition"))
    @eval @doc """
    HapticCondition

A structure containing a template for a Condition effect.

The struct handles the following effects:
 - ::HAPTIC_SPRING: Effect based on axes position.
 - ::HAPTIC_DAMPER: Effect based on axes velocity.
 - ::HAPTIC_INERTIA: Effect based on axes acceleration.
 - ::HAPTIC_FRICTION: Effect based on axes movement.

Direction is handled by condition internals instead of a direction member.
The condition effect specific members have three parameters.  The first
refers to the X axis, the second refers to the Y axis and the third
refers to the Z axis.  The right terms refer to the positive side of the
axis and the left terms refer to the negative side of the axis.  Please
refer to the ::HapticDirection diagram for which side is positive and
which is negative.

 - `HapticDirection`
 - `HAPTIC_SPRING`
 - `HAPTIC_DAMPER`
 - `HAPTIC_INERTIA`
 - `HAPTIC_FRICTION`
 - `HapticEffect`

$(
    if HapticCondition === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticCondition), r"^No documentation found.\n" => "")
    end
)
""" HapticCondition
end

if isdefined(@__MODULE__, Symbol("DestroyCond"))
    @eval @doc """
    DestroyCond(cond *)

Destroy a condition variable.

$(
    if DestroyCond === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroyCond), r"^No documentation found.\n" => "")
    end
)
""" DestroyCond
end

if isdefined(@__MODULE__, Symbol("CondWait"))
    @eval @doc """
    CondWait(cond *, mutex *)

Wait on the condition variable, unlocking the provided mutex.

!!!warning

    The mutex must be locked before entering this function!

The mutex is re-locked once the condition variable is signaled.

Return 0 when it is signaled, or -1 on error.

$(
    if CondWait === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CondWait), r"^No documentation found.\n" => "")
    end
)
""" CondWait
end

if isdefined(@__MODULE__, Symbol("GameControllerButtonBind"))
    @eval @doc """
    GameControllerButtonBind

Get the SDL joystick layer binding for this controller button/axis mapping

$(
    if GameControllerButtonBind === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerButtonBind), r"^No documentation found.\n" => "")
    end
)
""" GameControllerButtonBind
end

if isdefined(@__MODULE__, Symbol("RenderPresent"))
    @eval @doc """
    RenderPresent(Renderer *)

Update the screen with rendering performed.

$(
    if RenderPresent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderPresent), r"^No documentation found.\n" => "")
    end
)
""" RenderPresent
end

if isdefined(@__MODULE__, Symbol("PointInRect"))
    @eval @doc """
    PointInRect(const Point *, const Rect *)

Returns true if point resides inside a rectangle.

$(
    if PointInRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PointInRect), r"^No documentation found.\n" => "")
    end
)
""" PointInRect
end

if isdefined(@__MODULE__, Symbol("HAPTIC_CARTESIAN"))
    @eval @doc """
    HAPTIC_CARTESIAN

Uses cartesian coordinates for the direction.

 - `HapticDirection`

$(
    if HAPTIC_CARTESIAN === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_CARTESIAN), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_CARTESIAN
end

if isdefined(@__MODULE__, Symbol("LockTextureToSurface"))
    @eval @doc """
    LockTextureToSurface(Texture *, const Rect *, Surface **)

Lock a portion of the texture for write-only pixel access.
       Expose it as a SDL surface.

param: texture   The texture to lock for access, which was created with
                 ::TEXTUREACCESS_STREAMING.
param: rect      A pointer to the rectangle to lock for access. If the rect
                 is NULL, the entire texture will be locked.
param: surface   This is filled in with a SDL surface representing the locked area
                 Surface is freed internally after calling UnlockTexture or DestroyTexture.

Return 0 on success, or -1 if the texture is not valid or was not created with ::TEXTUREACCESS_STREAMING.

 - `UnlockTexture()`

$(
    if LockTextureToSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LockTextureToSurface), r"^No documentation found.\n" => "")
    end
)
""" LockTextureToSurface
end

if isdefined(@__MODULE__, Symbol("GetWindowBordersSize"))
    @eval @doc """
    GetWindowBordersSize(Window *, int *, int *, int *, int *)

Get the size of a window's borders (decorations) around the client area.

param: window The window to query.
param: top Pointer to variable for storing the size of the top border. NULL is permitted.
param: left Pointer to variable for storing the size of the left border. NULL is permitted.
param: bottom Pointer to variable for storing the size of the bottom border. NULL is permitted.
param: right Pointer to variable for storing the size of the right border. NULL is permitted.

Return 0 on success, or -1 if getting this information is not supported.

!!!note

    if this function fails (returns -1), the size values will be
      initialized to 0, 0, 0, 0 (if a non-NULL pointer is provided), as
      if the window in question was borderless.

$(
    if GetWindowBordersSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowBordersSize), r"^No documentation found.\n" => "")
    end
)
""" GetWindowBordersSize
end

if isdefined(@__MODULE__, Symbol("GetNumTouchDevices"))
    @eval @doc """
    GetNumTouchDevices()

Get the number of registered touch devices.

$(
    if GetNumTouchDevices === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumTouchDevices), r"^No documentation found.\n" => "")
    end
)
""" GetNumTouchDevices
end

if isdefined(@__MODULE__, Symbol("GameControllerGetStringForAxis"))
    @eval @doc """
    GameControllerGetStringForAxis(GameControllerAxis)

turn this axis enum into a string mapping

$(
    if GameControllerGetStringForAxis === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetStringForAxis), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetStringForAxis
end

if isdefined(@__MODULE__, Symbol("CreateRGBSurface"))
    @eval @doc """
    CreateRGBSurface(Uint32, int, int, int, Uint32, Uint32, Uint32, Uint32)

Allocate and free an RGB surface.

If the depth is 4 or 8 bits, an empty palette is allocated for the surface.
If the depth is greater than 8 bits, the pixel format is set using the
flags '[RGB]mask'.

If the function runs out of memory, it will return NULL.

param: flags The `flags` are obsolete and should be set to 0.
param: width The width in pixels of the surface to create.
param: height The height in pixels of the surface to create.
param: depth The depth in bits of the surface to create.
param: Rmask The red mask of the surface to create.
param: Gmask The green mask of the surface to create.
param: Bmask The blue mask of the surface to create.
param: Amask The alpha mask of the surface to create.

$(
    if CreateRGBSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateRGBSurface), r"^No documentation found.\n" => "")
    end
)
""" CreateRGBSurface
end

if isdefined(@__MODULE__, Symbol("JoystickRumble"))
    @eval @doc """
    JoystickRumble(Joystick *, Uint16, Uint16, Uint32)

Trigger a rumble effect
Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.

param: joystick The joystick to vibrate
param: low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
param: high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
param: duration_ms The duration of the rumble effect, in milliseconds

Return 0, or -1 if rumble isn't supported on this joystick

$(
    if JoystickRumble === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickRumble), r"^No documentation found.\n" => "")
    end
)
""" JoystickRumble
end

if isdefined(@__MODULE__, Symbol("ShowCursor"))
    @eval @doc """
    ShowCursor(int)

Toggle whether or not the cursor is shown.

param: toggle 1 to show the cursor, 0 to hide it, -1 to query the current
              state.

Return 1 if the cursor is shown, or 0 if the cursor is hidden.

$(
    if ShowCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ShowCursor), r"^No documentation found.\n" => "")
    end
)
""" ShowCursor
end

if isdefined(@__MODULE__, Symbol("AudioStreamAvailable"))
    @eval @doc """
    AudioStreamAvailable(AudioStream *)

Get the number of converted/resampled bytes available. The stream may be
buffering data behind the scenes until it has enough to resample
correctly, so this number might be lower than what you expect, or even
be zero. Add more data or flush the stream if you need the data now.

 - `NewAudioStream`
 - `AudioStreamPut`
 - `AudioStreamGet`
 - `AudioStreamFlush`
 - `AudioStreamClear`
 - `FreeAudioStream`

$(
    if AudioStreamAvailable === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioStreamAvailable), r"^No documentation found.\n" => "")
    end
)
""" AudioStreamAvailable
end

if isdefined(@__MODULE__, Symbol("GetRelativeMouseState"))
    @eval @doc """
    GetRelativeMouseState(int *, int *)

Retrieve the relative state of the mouse.

The current button state is returned as a button bitmask, which can
be tested using the BUTTON(X) macros, and x and y are set to the
mouse deltas since the last call to GetRelativeMouseState().

$(
    if GetRelativeMouseState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRelativeMouseState), r"^No documentation found.\n" => "")
    end
)
""" GetRelativeMouseState
end

if isdefined(@__MODULE__, Symbol("SaveBMP"))
    @eval @doc """
    SaveBMP

Save a surface to a file.

Convenience macro.

$(
    if SaveBMP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SaveBMP), r"^No documentation found.\n" => "")
    end
)
""" SaveBMP
end

if isdefined(@__MODULE__, Symbol("JoystickGetGUIDString"))
    @eval @doc """
    JoystickGetGUIDString(JoystickGUID, char *, int)

Return a string representation for this guid. pszGUID must point to at least 33 bytes
(32 for the string plus a NULL terminator).

$(
    if JoystickGetGUIDString === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetGUIDString), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetGUIDString
end

if isdefined(@__MODULE__, Symbol("SetWindowFullscreen"))
    @eval @doc """
    SetWindowFullscreen(Window *, Uint32)

Set a window's fullscreen state.

Return 0 on success, or -1 if setting the display mode failed.

 - `SetWindowDisplayMode()`
 - `GetWindowDisplayMode()`

$(
    if SetWindowFullscreen === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowFullscreen), r"^No documentation found.\n" => "")
    end
)
""" SetWindowFullscreen
end

if isdefined(@__MODULE__, Symbol("Renderer"))
    @eval @doc """
    Renderer

A structure representing rendering state

$(
    if Renderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Renderer), r"^No documentation found.\n" => "")
    end
)
""" Renderer
end

if isdefined(@__MODULE__, Symbol("Metal_DestroyView"))
    @eval @doc """
    Metal_DestroyView(MetalView)

Destroy an existing MetalView object.

This should be called before DestroyWindow, if Metal_CreateView was
called after CreateWindow.

 - `Metal_CreateView`

$(
    if Metal_DestroyView === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Metal_DestroyView), r"^No documentation found.\n" => "")
    end
)
""" Metal_DestroyView
end

if isdefined(@__MODULE__, Symbol("SensorOpen"))
    @eval @doc """
    SensorOpen(int)

Open a sensor for use.

The index passed as an argument refers to the N'th sensor on the system.

Return A sensor identifier, or NULL if an error occurred.

$(
    if SensorOpen === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorOpen), r"^No documentation found.\n" => "")
    end
)
""" SensorOpen
end

if isdefined(@__MODULE__, Symbol("RenderClear"))
    @eval @doc """
    RenderClear(Renderer *)

Clear the current rendering target with the drawing color

This function clears the entire rendering target, ignoring the viewport and
the clip rectangle.

Return 0 on success, or -1 on error

$(
    if RenderClear === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderClear), r"^No documentation found.\n" => "")
    end
)
""" RenderClear
end

if isdefined(@__MODULE__, Symbol("RendererInfo"))
    @eval @doc """
    RendererInfo

Information on the capabilities of a render driver or context.

$(
    if RendererInfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RendererInfo), r"^No documentation found.\n" => "")
    end
)
""" RendererInfo
end

if isdefined(@__MODULE__, Symbol("HasScreenKeyboardSupport"))
    @eval @doc """
    HasScreenKeyboardSupport()

Returns whether the platform has some screen keyboard support.

Return TRUE if some keyboard support is available else FALSE.

!!!note

    Not all screen keyboard functions are supported on all platforms.

 - `IsScreenKeyboardShown()`

$(
    if HasScreenKeyboardSupport === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasScreenKeyboardSupport), r"^No documentation found.\n" => "")
    end
)
""" HasScreenKeyboardSupport
end

if isdefined(@__MODULE__, Symbol("JoystickGetType"))
    @eval @doc """
    JoystickGetType(Joystick *)

Get the type of an opened joystick.

$(
    if JoystickGetType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetType), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetType
end

if isdefined(@__MODULE__, Symbol("JoystickGetDevicePlayerIndex"))
    @eval @doc """
    JoystickGetDevicePlayerIndex(int)

Get the player index of a joystick, or -1 if it's not available
This can be called before any joysticks are opened.

$(
    if JoystickGetDevicePlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDevicePlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDevicePlayerIndex
end

if isdefined(@__MODULE__, Symbol("CreateSemaphore"))
    @eval @doc """
    CreateSemaphore(Uint32)

Create a semaphore, initialized with value, returns NULL on failure.

$(
    if CreateSemaphore === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateSemaphore), r"^No documentation found.\n" => "")
    end
)
""" CreateSemaphore
end

if isdefined(@__MODULE__, Symbol("GetGrabbedWindow"))
    @eval @doc """
    GetGrabbedWindow()

Get the window that currently has an input grab enabled.

Return This returns the window if input is grabbed, and NULL otherwise.

 - `SetWindowGrab()`

$(
    if GetGrabbedWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetGrabbedWindow), r"^No documentation found.\n" => "")
    end
)
""" GetGrabbedWindow
end

if isdefined(@__MODULE__, Symbol("SetClipRect"))
    @eval @doc """
    SetClipRect(Surface *, const Rect *)

Sets the clipping rectangle for the destination surface in a blit.

If the clip rectangle is NULL, clipping will be disabled.

If the clip rectangle doesn't intersect the surface, the function will
return FALSE and blits will be completely clipped.  Otherwise the
function returns TRUE and blits to the surface will be clipped to
the intersection of the surface area and the clipping rectangle.

Note that blits are automatically clipped to the edges of the source
and destination surfaces.

$(
    if SetClipRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetClipRect), r"^No documentation found.\n" => "")
    end
)
""" SetClipRect
end

if isdefined(@__MODULE__, Symbol("GetMemoryFunctions"))
    @eval @doc """
    GetMemoryFunctions(malloc_func *, calloc_func *, realloc_func *, free_func *)

Get the current set of SDL memory functions

$(
    if GetMemoryFunctions === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetMemoryFunctions), r"^No documentation found.\n" => "")
    end
)
""" GetMemoryFunctions
end

if isdefined(@__MODULE__, Symbol("SetWindowGammaRamp"))
    @eval @doc """
    SetWindowGammaRamp(Window *, const Uint16 *, const Uint16 *, const Uint16 *)

Set the gamma ramp for a window.

param: window The window for which the gamma ramp should be set.
param: red The translation table for the red channel, or NULL.
param: green The translation table for the green channel, or NULL.
param: blue The translation table for the blue channel, or NULL.

Return 0 on success, or -1 if gamma ramps are unsupported.

Set the gamma translation table for the red, green, and blue channels
of the video hardware.  Each table is an array of 256 16-bit quantities,
representing a mapping between the input and output for that channel.
The input is the index into the array, and the output is the 16-bit
gamma value at that index, scaled to the output color precision.

 - `GetWindowGammaRamp()`

$(
    if SetWindowGammaRamp === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowGammaRamp), r"^No documentation found.\n" => "")
    end
)
""" SetWindowGammaRamp
end

if isdefined(@__MODULE__, Symbol("CalculateGammaRamp"))
    @eval @doc """
    CalculateGammaRamp(float, Uint16 *)

Calculate a 256 entry gamma ramp for a gamma value.

$(
    if CalculateGammaRamp === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CalculateGammaRamp), r"^No documentation found.\n" => "")
    end
)
""" CalculateGammaRamp
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceInstanceID"))
    @eval @doc """
    JoystickGetDeviceInstanceID(int)

Get the instance ID of a joystick.
This can be called before any joysticks are opened.
If the index is out of range, this function will return -1.

$(
    if JoystickGetDeviceInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceInstanceID), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceInstanceID
end

if isdefined(@__MODULE__, Symbol("RenderDrawPoint"))
    @eval @doc """
    RenderDrawPoint(Renderer *, int, int)

Draw a point on the current rendering target.

param: renderer The renderer which should draw a point.
param: x The x coordinate of the point.
param: y The y coordinate of the point.

Return 0 on success, or -1 on error

$(
    if RenderDrawPoint === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawPoint), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawPoint
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_HIGHDPI_DISABLED"))
    @eval @doc """
    HINT_VIDEO_HIGHDPI_DISABLED

If set to 1, then do not allow high-DPI windows. ("Retina" on Mac and iOS)

$(
    if HINT_VIDEO_HIGHDPI_DISABLED === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_HIGHDPI_DISABLED), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_HIGHDPI_DISABLED
end

if isdefined(@__MODULE__, Symbol("AtomicUnlock"))
    @eval @doc """
    AtomicUnlock(SpinLock *)

Unlock a spin lock by setting it to 0. Always returns immediately

param: lock Points to the lock.

$(
    if AtomicUnlock === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicUnlock), r"^No documentation found.\n" => "")
    end
)
""" AtomicUnlock
end

if isdefined(@__MODULE__, Symbol("MasksToPixelFormatEnum"))
    @eval @doc """
    MasksToPixelFormatEnum(int, Uint32, Uint32, Uint32, Uint32)

Convert a bpp and RGBA masks to an enumerated pixel format.

Return The pixel format, or ::PIXELFORMAT_UNKNOWN if the conversion
        wasn't possible.

 - `PixelFormatEnumToMasks()`

$(
    if MasksToPixelFormatEnum === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MasksToPixelFormatEnum), r"^No documentation found.\n" => "")
    end
)
""" MasksToPixelFormatEnum
end

if isdefined(@__MODULE__, Symbol("CreateWindow"))
    @eval @doc """
    CreateWindow(const char *, int, int, int, int, Uint32)

Create a window with the specified position, dimensions, and flags.

param: title The title of the window, in UTF-8 encoding.
param: x     The x position of the window, ::WINDOWPOS_CENTERED, or
             ::WINDOWPOS_UNDEFINED.
param: y     The y position of the window, ::WINDOWPOS_CENTERED, or
             ::WINDOWPOS_UNDEFINED.
param: w     The width of the window, in screen coordinates.
param: h     The height of the window, in screen coordinates.
param: flags The flags for the window, a mask of any of the following:
             ::WINDOW_FULLSCREEN,    ::WINDOW_OPENGL,
             ::WINDOW_HIDDEN,        ::WINDOW_BORDERLESS,
             ::WINDOW_RESIZABLE,     ::WINDOW_MAXIMIZED,
             ::WINDOW_MINIMIZED,     ::WINDOW_INPUT_GRABBED,
             ::WINDOW_ALLOW_HIGHDPI, ::WINDOW_VULKAN.

Return The created window, or NULL if window creation failed.

If the window is created with the WINDOW_ALLOW_HIGHDPI flag, its size
in pixels may differ from its size in screen coordinates on platforms with
high-DPI support (e.g. iOS and Mac OS X). Use GetWindowSize() to query
the client area's size in screen coordinates, and GL_GetDrawableSize(),
Vulkan_GetDrawableSize(), or GetRendererOutputSize() to query the
drawable size in pixels.

If the window is created with any of the WINDOW_OPENGL or
WINDOW_VULKAN flags, then the corresponding LoadLibrary function
(GL_LoadLibrary or Vulkan_LoadLibrary) is called and the
corresponding UnloadLibrary function is called by DestroyWindow().

If WINDOW_VULKAN is specified and there isn't a working Vulkan driver,
CreateWindow() will fail because Vulkan_LoadLibrary() will fail.

!!!note

    On non-Apple devices, SDL requires you to either not link to the
      Vulkan loader or link to a dynamic library version. This limitation
      may be removed in a future version of SDL.

 - `DestroyWindow()`
 - `GL_LoadLibrary()`
 - `Vulkan_LoadLibrary()`

$(
    if CreateWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateWindow), r"^No documentation found.\n" => "")
    end
)
""" CreateWindow
end

if isdefined(@__MODULE__, Symbol("SetClipboardText"))
    @eval @doc """
    SetClipboardText(const char *)

Put UTF-8 text into the clipboard

 - `GetClipboardText()`

$(
    if SetClipboardText === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetClipboardText), r"^No documentation found.\n" => "")
    end
)
""" SetClipboardText
end

if isdefined(@__MODULE__, Symbol("AudioStreamPut"))
    @eval @doc """
    AudioStreamPut(AudioStream *, const void *, int)

Add data to be converted/resampled to the stream

param: stream The stream the audio data is being added to
param: buf A pointer to the audio data to add
param: len The number of bytes to write to the stream
Return 0 on success, or -1 on error.

 - `NewAudioStream`
 - `AudioStreamGet`
 - `AudioStreamAvailable`
 - `AudioStreamFlush`
 - `AudioStreamClear`
 - `FreeAudioStream`

$(
    if AudioStreamPut === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioStreamPut), r"^No documentation found.\n" => "")
    end
)
""" AudioStreamPut
end

if isdefined(@__MODULE__, Symbol("SetWindowIcon"))
    @eval @doc """
    SetWindowIcon(Window *, Surface *)

Set the icon for a window.

param: window The window for which the icon should be set.
param: icon The icon for the window.

$(
    if SetWindowIcon === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowIcon), r"^No documentation found.\n" => "")
    end
)
""" SetWindowIcon
end

if isdefined(@__MODULE__, Symbol("HINT_TOUCH_MOUSE_EVENTS"))
    @eval @doc """
    HINT_TOUCH_MOUSE_EVENTS

 A variable controlling whether touch events should generate synthetic mouse events

This variable can be set to the following values:
  "0"       - Touch events will not generate mouse events
  "1"       - Touch events will generate mouse events

By default SDL will generate mouse events for touch events

$(
    if HINT_TOUCH_MOUSE_EVENTS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_TOUCH_MOUSE_EVENTS), r"^No documentation found.\n" => "")
    end
)
""" HINT_TOUCH_MOUSE_EVENTS
end

if isdefined(@__MODULE__, Symbol("GetTouchDeviceType"))
    @eval @doc """
    GetTouchDeviceType(TouchID)

Get the type of the given touch device.

$(
    if GetTouchDeviceType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTouchDeviceType), r"^No documentation found.\n" => "")
    end
)
""" GetTouchDeviceType
end

if isdefined(@__MODULE__, Symbol("GetNumRenderDrivers"))
    @eval @doc """
    GetNumRenderDrivers()

Get the number of 2D rendering drivers available for the current
       display.

A render driver is a set of code that handles rendering and texture
management on a particular display.  Normally there is only one, but
some drivers may have several available with different capabilities.

 - `GetRenderDriverInfo()`
 - `CreateRenderer()`

$(
    if GetNumRenderDrivers === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumRenderDrivers), r"^No documentation found.\n" => "")
    end
)
""" GetNumRenderDrivers
end

if isdefined(@__MODULE__, Symbol("RenderGetLogicalSize"))
    @eval @doc """
    RenderGetLogicalSize(Renderer *, int *, int *)

Get device independent resolution for rendering

param: renderer The renderer from which resolution should be queried.
param: w      A pointer filled with the width of the logical resolution
param: h      A pointer filled with the height of the logical resolution

 - `RenderSetLogicalSize()`

$(
    if RenderGetLogicalSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetLogicalSize), r"^No documentation found.\n" => "")
    end
)
""" RenderGetLogicalSize
end

if isdefined(@__MODULE__, Symbol("HINT_OPENGL_ES_DRIVER"))
    @eval @doc """
    HINT_OPENGL_ES_DRIVER

 A variable controlling what driver to use for OpenGL ES contexts.

On some platforms, currently Windows and X11, OpenGL drivers may support
creating contexts with an OpenGL ES profile. By default SDL uses these
profiles, when available, otherwise it attempts to load an OpenGL ES
library, e.g. that provided by the ANGLE project. This variable controls
whether SDL follows this default behaviour or will always load an
OpenGL ES library.

Circumstances where this is useful include
- Testing an app with a particular OpenGL ES implementation, e.g ANGLE,
  or emulator, e.g. those from ARM, Imagination or Qualcomm.
- Resolving OpenGL ES function addresses at link time by linking with
  the OpenGL ES library instead of querying them at run time with
  GL_GetProcAddress().

Caution: for an application to work with the default behaviour across
different OpenGL drivers it must query the OpenGL ES function
addresses at run time using GL_GetProcAddress().

This variable is ignored on most platforms because OpenGL ES is native
or not supported.

This variable can be set to the following values:
  "0"       - Use ES profile of OpenGL, if available. (Default when not set.)
  "1"       - Load OpenGL ES library using the default library names.


$(
    if HINT_OPENGL_ES_DRIVER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_OPENGL_ES_DRIVER), r"^No documentation found.\n" => "")
    end
)
""" HINT_OPENGL_ES_DRIVER
end

if isdefined(@__MODULE__, Symbol("SetWindowMinimumSize"))
    @eval @doc """
    SetWindowMinimumSize(Window *, int, int)

Set the minimum size of a window's client area.

param: window    The window to set a new minimum size.
param: min_w     The minimum width of the window, must be >0
param: min_h     The minimum height of the window, must be >0

!!!note

    You can't change the minimum size of a fullscreen window, it
      automatically matches the size of the display mode.

 - `GetWindowMinimumSize()`
 - `SetWindowMaximumSize()`

$(
    if SetWindowMinimumSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowMinimumSize), r"^No documentation found.\n" => "")
    end
)
""" SetWindowMinimumSize
end

if isdefined(@__MODULE__, Symbol("ControllerButtonEvent"))
    @eval @doc """
    ControllerButtonEvent

Game controller button event structure (event.cbutton.*)

$(
    if ControllerButtonEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ControllerButtonEvent), r"^No documentation found.\n" => "")
    end
)
""" ControllerButtonEvent
end

if isdefined(@__MODULE__, Symbol("HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK"))
    @eval @doc """
    HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK

A variable that determines whether ctrl+click should generate a right-click event on Mac

If present, holding ctrl while left clicking will generate a right click
event when on Mac.

$(
    if HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK), r"^No documentation found.\n" => "")
    end
)
""" HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK
end

if isdefined(@__MODULE__, Symbol("GetRenderDrawBlendMode"))
    @eval @doc """
    GetRenderDrawBlendMode(Renderer *, BlendMode *)

Get the blend mode used for drawing operations.

param: renderer The renderer from which blend mode should be queried.
param: blendMode A pointer filled in with the current blend mode.

Return 0 on success, or -1 on error

 - `SetRenderDrawBlendMode()`

$(
    if GetRenderDrawBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRenderDrawBlendMode), r"^No documentation found.\n" => "")
    end
)
""" GetRenderDrawBlendMode
end

if isdefined(@__MODULE__, Symbol("SaveBMP_RW"))
    @eval @doc """
    SaveBMP_RW(Surface *, RWops *, int)

Save a surface to a seekable SDL data stream (memory or file).

Surfaces with a 24-bit, 32-bit and paletted 8-bit format get saved in the
BMP directly. Other RGB formats with 8-bit or higher get converted to a
24-bit surface or, if they have an alpha mask or a colorkey, to a 32-bit
surface before they are saved. YUV and paletted 1-bit and 4-bit formats are
not supported.

If `freedst` is non-zero, the stream will be closed after being written.

Return 0 if successful or -1 if there was an error.

$(
    if SaveBMP_RW === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SaveBMP_RW), r"^No documentation found.\n" => "")
    end
)
""" SaveBMP_RW
end

if isdefined(@__MODULE__, Symbol("Init"))
    @eval @doc """
    Init(Uint32)

This function initializes  the subsystems specified by `flags`

$(
    if Init === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Init), r"^No documentation found.\n" => "")
    end
)
""" Init
end

if isdefined(@__MODULE__, Symbol("GLContext"))
    @eval @doc """
    GLContext

An opaque handle to an OpenGL context.

$(
    if GLContext === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GLContext), r"^No documentation found.\n" => "")
    end
)
""" GLContext
end

if isdefined(@__MODULE__, Symbol("JoystickGetGUID"))
    @eval @doc """
    JoystickGetGUID(Joystick *)

Return the GUID for this opened joystick

$(
    if JoystickGetGUID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetGUID), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetGUID
end

if isdefined(@__MODULE__, Symbol("AllocFormat"))
    @eval @doc """
    AllocFormat(Uint32)

Create an PixelFormat structure from a pixel format enum.

$(
    if AllocFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AllocFormat), r"^No documentation found.\n" => "")
    end
)
""" AllocFormat
end

if isdefined(@__MODULE__, Symbol("HAPTIC_CONSTANT"))
    @eval @doc """
    HAPTIC_CONSTANT

Constant effect supported.

Constant haptic effect.

 - `HapticCondition`

$(
    if HAPTIC_CONSTANT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_CONSTANT), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_CONSTANT
end

if isdefined(@__MODULE__, Symbol("SetWindowOpacity"))
    @eval @doc """
    SetWindowOpacity(Window *, float)

Set the opacity for a window

param: window The window which will be made transparent or opaque
param: opacity Opacity (0.0f - transparent, 1.0f - opaque) This will be
               clamped internally between 0.0f and 1.0f.

Return 0 on success, or -1 if setting the opacity isn't supported.

 - `GetWindowOpacity()`

$(
    if SetWindowOpacity === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowOpacity), r"^No documentation found.\n" => "")
    end
)
""" SetWindowOpacity
end

if isdefined(@__MODULE__, Symbol("HapticDestroyEffect"))
    @eval @doc """
    HapticDestroyEffect(Haptic *, int)

Destroys a haptic effect on the device.

This will stop the effect if it's running.  Effects are automatically
destroyed when the device is closed.

param: haptic Device to destroy the effect on.
param: effect Identifier of the effect to destroy.

 - `HapticNewEffect`

$(
    if HapticDestroyEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticDestroyEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticDestroyEffect
end

if isdefined(@__MODULE__, Symbol("LoadFile_RW"))
    @eval @doc """
    LoadFile_RW(RWops *, size_t *, int)

Load all the data from an SDL data stream.

The data is allocated with a zero byte at the end (null terminated)

If `datasize` is not NULL, it is filled with the size of the data read.

If `freesrc` is non-zero, the stream will be closed after being read.

The data should be freed with free().

Return the data, or NULL if there was an error.

$(
    if LoadFile_RW === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadFile_RW), r"^No documentation found.\n" => "")
    end
)
""" LoadFile_RW
end

if isdefined(@__MODULE__, Symbol("KeyboardEvent"))
    @eval @doc """
    KeyboardEvent

Keyboard button event structure (event.key.*)

$(
    if KeyboardEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc KeyboardEvent), r"^No documentation found.\n" => "")
    end
)
""" KeyboardEvent
end

if isdefined(@__MODULE__, Symbol("HasSSE41"))
    @eval @doc """
    HasSSE41()

This function returns true if the CPU has SSE4.1 features.

$(
    if HasSSE41 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasSSE41), r"^No documentation found.\n" => "")
    end
)
""" HasSSE41
end

if isdefined(@__MODULE__, Symbol("GameControllerFromPlayerIndex"))
    @eval @doc """
    GameControllerFromPlayerIndex(int)

Return the GameController associated with a player index.

$(
    if GameControllerFromPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerFromPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerFromPlayerIndex
end

if isdefined(@__MODULE__, Symbol("HapticIndex"))
    @eval @doc """
    HapticIndex(Haptic *)

Gets the index of a haptic device.

param: haptic Haptic device to get the index of.
Return The index of the haptic device or -1 on error.

 - `HapticOpen`
 - `HapticOpened`

$(
    if HapticIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticIndex), r"^No documentation found.\n" => "")
    end
)
""" HapticIndex
end

if isdefined(@__MODULE__, Symbol("GetWindowFlags"))
    @eval @doc """
    GetWindowFlags(Window *)

Get the window flags.

$(
    if GetWindowFlags === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowFlags), r"^No documentation found.\n" => "")
    end
)
""" GetWindowFlags
end

if isdefined(@__MODULE__, Symbol("CreateMutex"))
    @eval @doc """
    CreateMutex()

Create a mutex, initialized unlocked.

$(
    if CreateMutex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateMutex), r"^No documentation found.\n" => "")
    end
)
""" CreateMutex
end

if isdefined(@__MODULE__, Symbol("SetWindowBordered"))
    @eval @doc """
    SetWindowBordered(Window *, bool)

Set the border state of a window.

This will add or remove the window's WINDOW_BORDERLESS flag and
add or remove the border from the actual window. This is a no-op if the
window's border already matches the requested state.

param: window The window of which to change the border state.
param: bordered FALSE to remove border, TRUE to add border.

!!!note

    You can't change the border state of a fullscreen window.

 - `GetWindowFlags()`

$(
    if SetWindowBordered === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowBordered), r"^No documentation found.\n" => "")
    end
)
""" SetWindowBordered
end

if isdefined(@__MODULE__, Symbol("RenderDrawRectF"))
    @eval @doc """
    RenderDrawRectF(Renderer *, const FRect *)

Draw a rectangle on the current rendering target.

param: renderer The renderer which should draw a rectangle.
param: rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.

Return 0 on success, or -1 on error

$(
    if RenderDrawRectF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawRectF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawRectF
end

if isdefined(@__MODULE__, Symbol("TICKS_PASSED"))
    @eval @doc """
    TICKS_PASSED

Compare SDL ticks values, and return true if A has passed B

e.g. if you want to wait 100 ms, you could do this:
Uint32 timeout = GetTicks() + 100;
while (!TICKS_PASSED(GetTicks(), timeout)) {
    ... do work until timeout has elapsed
}

$(
    if TICKS_PASSED === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TICKS_PASSED), r"^No documentation found.\n" => "")
    end
)
""" TICKS_PASSED
end

if isdefined(@__MODULE__, Symbol("NewAudioStream"))
    @eval @doc """
    NewAudioStream(const AudioFormat, const Uint8, const int, const AudioFormat, const Uint8, const int)

Create a new audio stream

param: src_format The format of the source audio
param: src_channels The number of channels of the source audio
param: src_rate The sampling rate of the source audio
param: dst_format The format of the desired audio output
param: dst_channels The number of channels of the desired audio output
param: dst_rate The sampling rate of the desired audio output
Return 0 on success, or -1 on error.

 - `AudioStreamPut`
 - `AudioStreamGet`
 - `AudioStreamAvailable`
 - `AudioStreamFlush`
 - `AudioStreamClear`
 - `FreeAudioStream`

$(
    if NewAudioStream === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc NewAudioStream), r"^No documentation found.\n" => "")
    end
)
""" NewAudioStream
end

if isdefined(@__MODULE__, Symbol("RWseek"))
    @eval @doc """
    RWseek(RWops *, Sint64, int)

Seek to `offset` relative to `whence,` one of stdio's whence values:
RW_SEEK_SET, RW_SEEK_CUR, RW_SEEK_END

Return the final offset in the data stream, or -1 on error.

$(
    if RWseek === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWseek), r"^No documentation found.\n" => "")
    end
)
""" RWseek
end

if isdefined(@__MODULE__, Symbol("JoystickName"))
    @eval @doc """
    JoystickName(Joystick *)

Return the name for this currently opened joystick.
If no name can be found, this function returns NULL.

$(
    if JoystickName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickName), r"^No documentation found.\n" => "")
    end
)
""" JoystickName
end

if isdefined(@__MODULE__, Symbol("MAX_SINT64"))
    @eval @doc """
    MAX_SINT64

A signed 64-bit integer type.

$(
    if MAX_SINT64 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_SINT64), r"^No documentation found.\n" => "")
    end
)
""" MAX_SINT64
end

if isdefined(@__MODULE__, Symbol("HapticPause"))
    @eval @doc """
    HapticPause(Haptic *)

Pauses a haptic device.

Device must support the ::HAPTIC_PAUSE feature.  Call
HapticUnpause() to resume playback.

Do not modify the effects nor add new ones while the device is paused.
That can cause all sorts of weird errors.

param: haptic Haptic device to pause.
Return 0 on success or -1 on error.

 - `HapticUnpause`

$(
    if HapticPause === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticPause), r"^No documentation found.\n" => "")
    end
)
""" HapticPause
end

if isdefined(@__MODULE__, Symbol("JoystickNumBalls"))
    @eval @doc """
    JoystickNumBalls(Joystick *)

Get the number of trackballs on a joystick.

Joystick trackballs have only relative motion events associated
with them and their state cannot be polled.

$(
    if JoystickNumBalls === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickNumBalls), r"^No documentation found.\n" => "")
    end
)
""" JoystickNumBalls
end

if isdefined(@__MODULE__, Symbol("GL_GetAttribute"))
    @eval @doc """
    GL_GetAttribute(GLattr, int *)

Get the actual value for an attribute from the current context.

Return 0 on success, or -1 if the attribute could not be retrieved.
        The integer at `value` will be modified in either case.

$(
    if GL_GetAttribute === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetAttribute), r"^No documentation found.\n" => "")
    end
)
""" GL_GetAttribute
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceProductVersion"))
    @eval @doc """
    JoystickGetDeviceProductVersion(int)

Get the product version of a joystick, if available.
This can be called before any joysticks are opened.
If the product version isn't available this function returns 0.

$(
    if JoystickGetDeviceProductVersion === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceProductVersion), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceProductVersion
end

if isdefined(@__MODULE__, Symbol("HapticRumblePlay"))
    @eval @doc """
    HapticRumblePlay(Haptic *, float, Uint32)

Runs simple rumble on a haptic device

param: haptic Haptic device to play rumble effect on.
param: strength Strength of the rumble to play as a 0-1 float value.
param: length Length of the rumble to play in milliseconds.
Return 0 on success or -1 on error.

 - `HapticRumbleSupported`
 - `HapticRumbleInit`
 - `HapticRumbleStop`

$(
    if HapticRumblePlay === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRumblePlay), r"^No documentation found.\n" => "")
    end
)
""" HapticRumblePlay
end

if isdefined(@__MODULE__, Symbol("GetRGB"))
    @eval @doc """
    GetRGB(Uint32, const PixelFormat *, Uint8 *, Uint8 *, Uint8 *)

Get the RGB components from a pixel of the specified format.

 - `GetRGBA`

$(
    if GetRGB === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRGB), r"^No documentation found.\n" => "")
    end
)
""" GetRGB
end

if isdefined(@__MODULE__, Symbol("HAPTIC_SPRING"))
    @eval @doc """
    HAPTIC_SPRING

Spring effect supported - uses axes position.

Condition haptic effect that simulates a spring.  Effect is based on the
axes position.

 - `HapticCondition`

$(
    if HAPTIC_SPRING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_SPRING), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_SPRING
end

if isdefined(@__MODULE__, Symbol("RenderGetMetalLayer"))
    @eval @doc """
    RenderGetMetalLayer(Renderer *)

Get the CAMetalLayer associated with the given Metal renderer

param: renderer The renderer to query

Return CAMetalLayer* on success, or NULL if the renderer isn't a Metal renderer

 - `RenderGetMetalCommandEncoder()`

$(
    if RenderGetMetalLayer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetMetalLayer), r"^No documentation found.\n" => "")
    end
)
""" RenderGetMetalLayer
end

if isdefined(@__MODULE__, Symbol("WasInit"))
    @eval @doc """
    WasInit(Uint32)

This function returns a mask of the specified subsystems which have
previously been initialized.

If `flags` is 0, it returns a mask of all initialized subsystems.

$(
    if WasInit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WasInit), r"^No documentation found.\n" => "")
    end
)
""" WasInit
end

if isdefined(@__MODULE__, Symbol("GameControllerAddMappingsFromRW"))
    @eval @doc """
    GameControllerAddMappingsFromRW(RWops *, int)

Load a set of mappings from a seekable SDL data stream (memory or file), filtered by the current GetPlatform()
A community sourced database of controllers is available at https://raw.github.com/gabomdq/GameControllerDB/master/gamecontrollerdb.txt

If `freerw` is non-zero, the stream will be closed after being read.

Return number of mappings added, -1 on error

$(
    if GameControllerAddMappingsFromRW === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerAddMappingsFromRW), r"^No documentation found.\n" => "")
    end
)
""" GameControllerAddMappingsFromRW
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLER_USE_BUTTON_LABELS"))
    @eval @doc """
    HINT_GAMECONTROLLER_USE_BUTTON_LABELS

 If set, game controller face buttons report their values according to their labels instead of their positional layout.

For example, on Nintendo Switch controllers, normally you'd get:

    (Y)
(X)     (B)
    (A)

but if this hint is set, you'll get:

    (X)
(Y)     (A)
    (B)

The variable can be set to the following values:
  "0"       - Report the face buttons by position, as though they were on an Xbox controller.
  "1"       - Report the face buttons by label instead of position

The default value is "1".  This hint may be set at any time.

$(
    if HINT_GAMECONTROLLER_USE_BUTTON_LABELS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLER_USE_BUTTON_LABELS), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLER_USE_BUTTON_LABELS
end

if isdefined(@__MODULE__, Symbol("GetNumDisplayModes"))
    @eval @doc """
    GetNumDisplayModes(int)

Returns the number of available display modes.

 - `GetDisplayMode()`

$(
    if GetNumDisplayModes === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumDisplayModes), r"^No documentation found.\n" => "")
    end
)
""" GetNumDisplayModes
end

if isdefined(@__MODULE__, Symbol("HINT_QTWAYLAND_CONTENT_ORIENTATION"))
    @eval @doc """
    HINT_QTWAYLAND_CONTENT_ORIENTATION

 A variable describing the content orientation on QtWayland-based platforms.

On QtWayland platforms, windows are rotated client-side to allow for custom
transitions. In order to correctly position overlays (e.g. volume bar) and
gestures (e.g. events view, close/minimize gestures), the system needs to
know in which orientation the application is currently drawing its contents.

This does not cause the window to be rotated or resized, the application
needs to take care of drawing the content in the right orientation (the
framebuffer is always in portrait mode).

This variable can be one of the following values:
  "primary" (default), "portrait", "landscape", "inverted-portrait", "inverted-landscape"

$(
    if HINT_QTWAYLAND_CONTENT_ORIENTATION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_QTWAYLAND_CONTENT_ORIENTATION), r"^No documentation found.\n" => "")
    end
)
""" HINT_QTWAYLAND_CONTENT_ORIENTATION
end

if isdefined(@__MODULE__, Symbol("ClearQueuedAudio"))
    @eval @doc """
    ClearQueuedAudio(AudioDeviceID)

Drop any queued audio data. For playback devices, this is any queued data
still waiting to be submitted to the hardware. For capture devices, this
is any data that was queued by the device that hasn't yet been dequeued by
the application.

Immediately after this call, GetQueuedAudioSize() will return 0. For
playback devices, the hardware will start playing silence if more audio
isn't queued. Unpaused capture devices will start filling the queue again
as soon as they have more data available (which, depending on the state
of the hardware and the thread, could be before this function call
returns!).

This will not prevent playback of queued audio that's already been sent
to the hardware, as we can not undo that, so expect there to be some
fraction of a second of audio that might still be heard. This can be
useful if you want to, say, drop any pending music during a level change
in your game.

You may not queue audio on a device that is using an application-supplied
callback; calling this function on such a device is always a no-op.
You have to queue audio with QueueAudio()/DequeueAudio(), or use
the audio callback, but not both.

You should not call LockAudio() on the device before clearing the
queue; SDL handles locking internally for this function.

This function always succeeds and thus returns void.

param: dev The device ID of which to clear the audio queue.

 - `QueueAudio`
 - `GetQueuedAudioSize`

$(
    if ClearQueuedAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ClearQueuedAudio), r"^No documentation found.\n" => "")
    end
)
""" ClearQueuedAudio
end

if isdefined(@__MODULE__, Symbol("GetRevisionNumber"))
    @eval @doc """
    GetRevisionNumber()

Get the revision number of SDL that is linked against your program.

Returns a number uniquely identifying the exact revision of the SDL
library in use. It is an incrementing number based on commits to
hg.libsdl.org.

$(
    if GetRevisionNumber === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRevisionNumber), r"^No documentation found.\n" => "")
    end
)
""" GetRevisionNumber
end

if isdefined(@__MODULE__, Symbol("JoystickNumAxes"))
    @eval @doc """
    JoystickNumAxes(Joystick *)

Get the number of general axis controls on a joystick.

$(
    if JoystickNumAxes === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickNumAxes), r"^No documentation found.\n" => "")
    end
)
""" JoystickNumAxes
end

if isdefined(@__MODULE__, Symbol("StartTextInput"))
    @eval @doc """
    StartTextInput()

Start accepting Unicode text input events.
       This function will show the on-screen keyboard if supported.

 - `StopTextInput()`
 - `SetTextInputRect()`
 - `HasScreenKeyboardSupport()`

$(
    if StartTextInput === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc StartTextInput), r"^No documentation found.\n" => "")
    end
)
""" StartTextInput
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_SWITCH"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_SWITCH

 A variable controlling whether the HIDAPI driver for Nintendo Switch controllers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI driver is not used
  "1"       - HIDAPI driver is used

The default is the value of HINT_JOYSTICK_HIDAPI

$(
    if HINT_JOYSTICK_HIDAPI_SWITCH === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_SWITCH), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_SWITCH
end

if isdefined(@__MODULE__, Symbol("Metal_CreateView"))
    @eval @doc """
    Metal_CreateView(Window *)

Create a CAMetalLayer-backed NSView/UIView and attach it to the
      specified window.

On macOS, this does *not* associate a MTLDevice with the CAMetalLayer on its
own. It is up to user code to do that.

The returned handle can be casted directly to a NSView or UIView, and the
CAMetalLayer can be accessed from the view's 'layer' property.

```C
MetalView metalview = Metal_CreateView(window);
UIView *uiview = (__bridge UIView *)metalview;
CAMetalLayer *metallayer = (CAMetalLayer *)uiview.layer;
// [...]
Metal_DestroyView(metalview);
```

 - `Metal_DestroyView`

$(
    if Metal_CreateView === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Metal_CreateView), r"^No documentation found.\n" => "")
    end
)
""" Metal_CreateView
end

if isdefined(@__MODULE__, Symbol("_Joystick"))
    @eval @doc """
    _Joystick

The joystick structure used to identify an SDL joystick

$(
    if _Joystick === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc _Joystick), r"^No documentation found.\n" => "")
    end
)
""" _Joystick
end

if isdefined(@__MODULE__, Symbol("MAX_UINT64"))
    @eval @doc """
    MAX_UINT64

An unsigned 64-bit integer type.

$(
    if MAX_UINT64 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_UINT64), r"^No documentation found.\n" => "")
    end
)
""" MAX_UINT64
end

if isdefined(@__MODULE__, Symbol("SensorGetDeviceNonPortableType"))
    @eval @doc """
    SensorGetDeviceNonPortableType(int)

Get the platform dependent type of a sensor.

This can be called before any sensors are opened.

Return The sensor platform dependent type, or -1 if device_index is out of range.

$(
    if SensorGetDeviceNonPortableType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetDeviceNonPortableType), r"^No documentation found.\n" => "")
    end
)
""" SensorGetDeviceNonPortableType
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLERCONFIG"))
    @eval @doc """
    HINT_GAMECONTROLLERCONFIG

 A variable that lets you manually hint extra gamecontroller db entries.

The variable should be newline delimited rows of gamecontroller config data, see gamecontroller.h

This hint must be set before calling Init(INIT_GAMECONTROLLER)
You can update mappings after the system is initialized with GameControllerMappingForGUID() and GameControllerAddMapping()

$(
    if HINT_GAMECONTROLLERCONFIG === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLERCONFIG), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLERCONFIG
end

if isdefined(@__MODULE__, Symbol("HINT_RETURN_KEY_HIDES_IME"))
    @eval @doc """
    HINT_RETURN_KEY_HIDES_IME

A variable to control whether the return key on the soft keyboard
      should hide the soft keyboard on Android and iOS.

The variable can be set to the following values:
 "0"       - The return key will be handled as a key event. This is the behaviour of SDL <= 2.0.3. (default)
 "1"       - The return key will hide the keyboard.

The value of this hint is used at runtime, so it can be changed at any time.

$(
    if HINT_RETURN_KEY_HIDES_IME === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RETURN_KEY_HIDES_IME), r"^No documentation found.\n" => "")
    end
)
""" HINT_RETURN_KEY_HIDES_IME
end

if isdefined(@__MODULE__, Symbol("GetDisplayUsableBounds"))
    @eval @doc """
    GetDisplayUsableBounds(int, Rect *)

Get the usable desktop area represented by a display, with the
       primary display located at 0,0

This is the same area as GetDisplayBounds() reports, but with portions
reserved by the system removed. For example, on Mac OS X, this subtracts
the area occupied by the menu bar and dock.

Setting a window to be fullscreen generally bypasses these unusable areas,
so these are good guidelines for the maximum space available to a
non-fullscreen window.

Return 0 on success, or -1 if the index is out of range.

 - `GetDisplayBounds()`
 - `GetNumVideoDisplays()`

$(
    if GetDisplayUsableBounds === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayUsableBounds), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayUsableBounds
end

if isdefined(@__MODULE__, Symbol("RenderSetIntegerScale"))
    @eval @doc """
    RenderSetIntegerScale(Renderer *, bool)

Set whether to force integer scales for resolution-independent rendering

param: renderer The renderer for which integer scaling should be set.
param: enable   Enable or disable integer scaling

This function restricts the logical viewport to integer values - that is, when
a resolution is between two multiples of a logical size, the viewport size is
rounded down to the lower multiple.

 - `RenderSetLogicalSize()`

$(
    if RenderSetIntegerScale === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderSetIntegerScale), r"^No documentation found.\n" => "")
    end
)
""" RenderSetIntegerScale
end

if isdefined(@__MODULE__, Symbol("GameControllerSetPlayerIndex"))
    @eval @doc """
    GameControllerSetPlayerIndex(GameController *, int)

Set the player index of an opened game controller

$(
    if GameControllerSetPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerSetPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerSetPlayerIndex
end

if isdefined(@__MODULE__, Symbol("AddTimer"))
    @eval @doc """
    AddTimer(Uint32, TimerCallback, void *)

Add a new timer to the pool of timers already running.

Return A timer ID, or 0 when an error occurs.

$(
    if AddTimer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AddTimer), r"^No documentation found.\n" => "")
    end
)
""" AddTimer
end

if isdefined(@__MODULE__, Symbol("GetCurrentVideoDriver"))
    @eval @doc """
    GetCurrentVideoDriver()

Returns the name of the currently initialized video driver.

Return The name of the current video driver or NULL if no driver
        has been initialized

 - `GetNumVideoDrivers()`
 - `GetVideoDriver()`

$(
    if GetCurrentVideoDriver === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCurrentVideoDriver), r"^No documentation found.\n" => "")
    end
)
""" GetCurrentVideoDriver
end

if isdefined(@__MODULE__, Symbol("RenderDrawLines"))
    @eval @doc """
    RenderDrawLines(Renderer *, const Point *, int)

Draw a series of connected lines on the current rendering target.

param: renderer The renderer which should draw multiple lines.
param: points The points along the lines
param: count The number of points, drawing count-1 lines

Return 0 on success, or -1 on error

$(
    if RenderDrawLines === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawLines), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawLines
end

if isdefined(@__MODULE__, Symbol("GetSurfaceColorMod"))
    @eval @doc """
    GetSurfaceColorMod(Surface *, Uint8 *, Uint8 *, Uint8 *)

Get the additional color value used in blit operations.

param: surface The surface to query.
param: r A pointer filled in with the current red color value.
param: g A pointer filled in with the current green color value.
param: b A pointer filled in with the current blue color value.

Return 0 on success, or -1 if the surface is not valid.

 - `SetSurfaceColorMod()`

$(
    if GetSurfaceColorMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetSurfaceColorMod), r"^No documentation found.\n" => "")
    end
)
""" GetSurfaceColorMod
end

if isdefined(@__MODULE__, Symbol("RenderCopyF"))
    @eval @doc """
    RenderCopyF(Renderer *, Texture *, const Rect *, const FRect *)

Copy a portion of the texture to the current rendering target.

param: renderer The renderer which should copy parts of a texture.
param: texture The source texture.
param: srcrect   A pointer to the source rectangle, or NULL for the entire
                 texture.
param: dstrect   A pointer to the destination rectangle, or NULL for the
                 entire rendering target.

Return 0 on success, or -1 on error

$(
    if RenderCopyF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderCopyF), r"^No documentation found.\n" => "")
    end
)
""" RenderCopyF
end

if isdefined(@__MODULE__, Symbol("QuitEvent"))
    @eval @doc """
    QuitEvent

The "quit requested" event

$(
    if QuitEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc QuitEvent), r"^No documentation found.\n" => "")
    end
)
""" QuitEvent
end

if isdefined(@__MODULE__, Symbol("HAPTIC_GAIN"))
    @eval @doc """
    HAPTIC_GAIN

Device can set global gain.

Device supports setting the global gain.

 - `HapticSetGain`

$(
    if HAPTIC_GAIN === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_GAIN), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_GAIN
end

if isdefined(@__MODULE__, Symbol("UnlockTexture"))
    @eval @doc """
    UnlockTexture(Texture *)

Unlock a texture, uploading the changes to video memory, if needed.
       If LockTextureToSurface() was called for locking, the SDL surface is freed.

 - `LockTexture()`
 - `LockTextureToSurface()`

$(
    if UnlockTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UnlockTexture), r"^No documentation found.\n" => "")
    end
)
""" UnlockTexture
end

if isdefined(@__MODULE__, Symbol("HasColorKey"))
    @eval @doc """
    HasColorKey(Surface *)

Returns whether the surface has a color key

Return TRUE if the surface has a color key, or FALSE if the surface is NULL or has no color key

$(
    if HasColorKey === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasColorKey), r"^No documentation found.\n" => "")
    end
)
""" HasColorKey
end

if isdefined(@__MODULE__, Symbol("HINT_WINRT_PRIVACY_POLICY_URL"))
    @eval @doc """
    HINT_WINRT_PRIVACY_POLICY_URL

A URL to a WinRT app's privacy policy

All network-enabled WinRT apps must make a privacy policy available to its
users.  On Windows 8, 8.1, and RT, Microsoft mandates that this policy be
be available in the Windows Settings charm, as accessed from within the app.
SDL provides code to add a URL-based link there, which can point to the app's
privacy policy.

To setup a URL to an app's privacy policy, set HINT_WINRT_PRIVACY_POLICY_URL
before calling any Init() functions.  The contents of the hint should
be a valid URL.  For example, "http://www.example.com".

The default value is "", which will prevent SDL from adding a privacy policy
link to the Settings charm.  This hint should only be set during app init.

The label text of an app's "Privacy Policy" link may be customized via another
hint, HINT_WINRT_PRIVACY_POLICY_LABEL.

Please note that on Windows Phone, Microsoft does not provide standard UI
for displaying a privacy policy link, and as such, HINT_WINRT_PRIVACY_POLICY_URL
will not get used on that platform.  Network-enabled phone apps should display
their privacy policy through some other, in-app means.

$(
    if HINT_WINRT_PRIVACY_POLICY_URL === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINRT_PRIVACY_POLICY_URL), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINRT_PRIVACY_POLICY_URL
end

if isdefined(@__MODULE__, Symbol("LoadWAV_RW"))
    @eval @doc """
    LoadWAV_RW(RWops *, int, AudioSpec *, Uint8 **, Uint32 *)

Load the audio data of a WAVE file into memory

Loading a WAVE file requires `src,` `spec,` `audio_buf` and `audio_len
to` be valid pointers. The entire data portion of the file is then loaded
into memory and decoded if necessary.

If `freesrc` is non-zero, the data source gets automatically closed and
freed before the function returns.

Supported are RIFF WAVE files with the formats PCM (8, 16, 24, and 32 bits),
IEEE Float (32 bits), Microsoft ADPCM and IMA ADPCM (4 bits), and A-law and
µ-law (8 bits). Other formats are currently unsupported and cause an error.

If this function succeeds, the pointer returned by it is equal to `spec
and` the pointer to the audio data allocated by the function is written to
`audio_buf` and its length in bytes to `audio_len.` The :ref AudioSpec
members `freq,` `channels,` and `format` are set to the values of the
audio data in the buffer. The `samples` member is set to a sane default and
all others are set to zero.

It's necessary to use FreeWAV() to free the audio data returned in
`audio_buf` when it is no longer used.

Because of the underspecification of the Waveform format, there are many
problematic files in the wild that cause issues with strict decoders. To
provide compatibility with these files, this decoder is lenient in regards
to the truncation of the file, the fact chunk, and the size of the RIFF
chunk. The hints HINT_WAVE_RIFF_CHUNK_SIZE, HINT_WAVE_TRUNCATION,
and HINT_WAVE_FACT_CHUNK can be used to tune the behavior of the
loading process.

Any file that is invalid (due to truncation, corruption, or wrong values in
the headers), too big, or unsupported causes an error. Additionally, any
critical I/O error from the data source will terminate the loading process
with an error. The function returns NULL on error and in all cases (with the
exception of `src` being NULL), an appropriate error message will be set.

It is required that the data source supports seeking.

Example:
```C
    LoadWAV_RW(RWFromFile("sample.wav", "rb"), 1, ...);
```

param: src The data source with the WAVE data
param: freesrc A integer value that makes the function close the data source if non-zero
param: spec A pointer filled with the audio format of the audio data
param: audio_buf A pointer filled with the audio data allocated by the function
param: audio_len A pointer filled with the length of the audio data buffer in bytes
Return NULL on error, or non-NULL on success.

$(
    if LoadWAV_RW === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadWAV_RW), r"^No documentation found.\n" => "")
    end
)
""" LoadWAV_RW
end

if isdefined(@__MODULE__, Symbol("SetWindowMaximumSize"))
    @eval @doc """
    SetWindowMaximumSize(Window *, int, int)

Set the maximum size of a window's client area.

param: window    The window to set a new maximum size.
param: max_w     The maximum width of the window, must be >0
param: max_h     The maximum height of the window, must be >0

!!!note

    You can't change the maximum size of a fullscreen window, it
      automatically matches the size of the display mode.

 - `GetWindowMaximumSize()`
 - `SetWindowMinimumSize()`

$(
    if SetWindowMaximumSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowMaximumSize), r"^No documentation found.\n" => "")
    end
)
""" SetWindowMaximumSize
end

if isdefined(@__MODULE__, Symbol("CreateCond"))
    @eval @doc """
    CreateCond()

Create a condition variable.

Typical use of condition variables:

Thread A:
  LockMutex(lock);
  while ( ! condition ) {
      CondWait(cond, lock);
  }
  UnlockMutex(lock);

Thread B:
  LockMutex(lock);
  ...
  condition = true;
  ...
  CondSignal(cond);
  UnlockMutex(lock);

There is some discussion whether to signal the condition variable
with the mutex locked or not.  There is some potential performance
benefit to unlocking first on some platforms, but there are some
potential race conditions depending on how your code is structured.

In general it's safer to signal the condition variable while the
mutex is locked.

$(
    if CreateCond === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateCond), r"^No documentation found.\n" => "")
    end
)
""" CreateCond
end

if isdefined(@__MODULE__, Symbol("GameControllerNumMappings"))
    @eval @doc """
    GameControllerNumMappings()

Get the number of mappings installed

Return the number of mappings

$(
    if GameControllerNumMappings === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerNumMappings), r"^No documentation found.\n" => "")
    end
)
""" GameControllerNumMappings
end

if isdefined(@__MODULE__, Symbol("HINT_GRAB_KEYBOARD"))
    @eval @doc """
    HINT_GRAB_KEYBOARD

 A variable controlling whether grabbing input grabs the keyboard

This variable can be set to the following values:
  "0"       - Grab will affect only the mouse
  "1"       - Grab will affect mouse and keyboard

By default SDL will not grab the keyboard so system shortcuts still work.

$(
    if HINT_GRAB_KEYBOARD === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GRAB_KEYBOARD), r"^No documentation found.\n" => "")
    end
)
""" HINT_GRAB_KEYBOARD
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_WIN_D3DCOMPILER"))
    @eval @doc """
    HINT_VIDEO_WIN_D3DCOMPILER

 A variable specifying which shader compiler to preload when using the Chrome ANGLE binaries

SDL has EGL and OpenGL ES2 support on Windows via the ANGLE project. It
can use two different sets of binaries, those compiled by the user from source
or those provided by the Chrome browser. In the later case, these binaries require
that SDL loads a DLL providing the shader compiler.

This variable can be set to the following values:
  "d3dcompiler_46.dll" - default, best for Vista or later.
  "d3dcompiler_43.dll" - for XP support.
  "none" - do not load any library, useful if you compiled ANGLE from source and included the compiler in your binaries.


$(
    if HINT_VIDEO_WIN_D3DCOMPILER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_WIN_D3DCOMPILER), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_WIN_D3DCOMPILER
end

if isdefined(@__MODULE__, Symbol("HasClipboardText"))
    @eval @doc """
    HasClipboardText()

Returns a flag indicating whether the clipboard exists and contains a text string that is non-empty

 - `GetClipboardText()`

$(
    if HasClipboardText === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasClipboardText), r"^No documentation found.\n" => "")
    end
)
""" HasClipboardText
end

if isdefined(@__MODULE__, Symbol("SensorFromInstanceID"))
    @eval @doc """
    SensorFromInstanceID(SensorID)

Return the Sensor associated with an instance id.

$(
    if SensorFromInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorFromInstanceID), r"^No documentation found.\n" => "")
    end
)
""" SensorFromInstanceID
end

if isdefined(@__MODULE__, Symbol("GetRendererInfo"))
    @eval @doc """
    GetRendererInfo(Renderer *, RendererInfo *)

Get information about a rendering context.

$(
    if GetRendererInfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRendererInfo), r"^No documentation found.\n" => "")
    end
)
""" GetRendererInfo
end

if isdefined(@__MODULE__, Symbol("ShowSimpleMessageBox"))
    @eval @doc """
    ShowSimpleMessageBox(Uint32, const char *, const char *, Window *)

Create a simple modal message box

param: flags    ::MessageBoxFlags
param: title    UTF-8 title text
param: message  UTF-8 message text
param: window   The parent window, or NULL for no parent

Return 0 on success, -1 on error

 - `ShowMessageBox`

$(
    if ShowSimpleMessageBox === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ShowSimpleMessageBox), r"^No documentation found.\n" => "")
    end
)
""" ShowSimpleMessageBox
end

if isdefined(@__MODULE__, Symbol("HapticSetAutocenter"))
    @eval @doc """
    HapticSetAutocenter(Haptic *, int)

Sets the global autocenter of the device.

Autocenter should be between 0 and 100.  Setting it to 0 will disable
autocentering.

Device must support the ::HAPTIC_AUTOCENTER feature.

param: haptic Haptic device to set autocentering on.
param: autocenter Value to set autocenter to, 0 disables autocentering.
Return 0 on success or -1 on error.

 - `HapticQuery`

$(
    if HapticSetAutocenter === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticSetAutocenter), r"^No documentation found.\n" => "")
    end
)
""" HapticSetAutocenter
end

if isdefined(@__MODULE__, Symbol("GetNumVideoDrivers"))
    @eval @doc """
    GetNumVideoDrivers()

Get the number of video drivers compiled into SDL

 - `GetVideoDriver()`

$(
    if GetNumVideoDrivers === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumVideoDrivers), r"^No documentation found.\n" => "")
    end
)
""" GetNumVideoDrivers
end

if isdefined(@__MODULE__, Symbol("LockSurface"))
    @eval @doc """
    LockSurface(Surface *)

Sets up a surface for directly accessing the pixels.

Between calls to LockSurface() / UnlockSurface(), you can write
to and read from `surface->pixels,` using the pixel format stored in
`surface->format.`  Once you are done accessing the surface, you should
use UnlockSurface() to release it.

Not all surfaces require locking.  If MUSTLOCK(surface) evaluates
to 0, then you can read and write to the surface at any time, and the
pixel format of the surface will not change.

No operating system or library calls should be made between lock/unlock
pairs, as critical system locks may be held during this time.

LockSurface() returns 0, or -1 if the surface couldn't be locked.

 - `UnlockSurface()`

$(
    if LockSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LockSurface), r"^No documentation found.\n" => "")
    end
)
""" LockSurface
end

if isdefined(@__MODULE__, Symbol("CACHELINE_SIZE"))
    @eval @doc """
    CACHELINE_SIZE

Most x86 processors have a 64 byte cache line.
The 64-bit PowerPC processors have a 128 byte cache line.
We'll use the larger value to be generally safe.

$(
    if CACHELINE_SIZE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CACHELINE_SIZE), r"^No documentation found.\n" => "")
    end
)
""" CACHELINE_SIZE
end

if isdefined(@__MODULE__, Symbol("AudioCallback"))
    @eval @doc """
    AudioCallback

This function is called when the audio device needs more data.

param: userdata An application-specific parameter saved in
                the AudioSpec structure
param: stream A pointer to the audio data buffer.
param: len    The length of that buffer in bytes.

Once the callback returns, the buffer will no longer be valid.
Stereo samples are stored in a LRLRLR ordering.

You can choose to avoid callbacks and use QueueAudio() instead, if
you like. Just open your audio device with a NULL callback.

$(
    if AudioCallback === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioCallback), r"^No documentation found.\n" => "")
    end
)
""" AudioCallback
end

if isdefined(@__MODULE__, Symbol("RenderSetClipRect"))
    @eval @doc """
    RenderSetClipRect(Renderer *, const Rect *)

Set the clip rectangle for the current target.

param: renderer The renderer for which clip rectangle should be set.
param: rect   A pointer to the rectangle to set as the clip rectangle,
              relative to the viewport, or NULL to disable clipping.

Return 0 on success, or -1 on error

 - `RenderGetClipRect()`

$(
    if RenderSetClipRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderSetClipRect), r"^No documentation found.\n" => "")
    end
)
""" RenderSetClipRect
end

if isdefined(@__MODULE__, Symbol("HasAltiVec"))
    @eval @doc """
    HasAltiVec()

This function returns true if the CPU has AltiVec features.

$(
    if HasAltiVec === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasAltiVec), r"^No documentation found.\n" => "")
    end
)
""" HasAltiVec
end

if isdefined(@__MODULE__, Symbol("GameControllerGetAttached"))
    @eval @doc """
    GameControllerGetAttached(GameController *)

Returns TRUE if the controller has been opened and currently connected,
or FALSE if it has not.

$(
    if GameControllerGetAttached === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetAttached), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetAttached
end

if isdefined(@__MODULE__, Symbol("GetScancodeFromName"))
    @eval @doc """
    GetScancodeFromName(const char *)

Get a scancode from a human-readable name

Return scancode, or SCANCODE_UNKNOWN if the name wasn't recognized

 - `Scancode`

$(
    if GetScancodeFromName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetScancodeFromName), r"^No documentation found.\n" => "")
    end
)
""" GetScancodeFromName
end

if isdefined(@__MODULE__, Symbol("SemTryWait"))
    @eval @doc """
    SemTryWait(sem *)

Non-blocking variant of SemWait().

Return 0 if the wait succeeds, ::MUTEX_TIMEDOUT if the wait would
        block, and -1 on error.

$(
    if SemTryWait === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SemTryWait), r"^No documentation found.\n" => "")
    end
)
""" SemTryWait
end

if isdefined(@__MODULE__, Symbol("HAPTIC_SAWTOOTHUP"))
    @eval @doc """
    HAPTIC_SAWTOOTHUP

Sawtoothup wave effect supported.

Periodic haptic effect that simulates saw tooth up waves.

 - `HapticPeriodic`

$(
    if HAPTIC_SAWTOOTHUP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_SAWTOOTHUP), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_SAWTOOTHUP
end

if isdefined(@__MODULE__, Symbol("SetSurfaceBlendMode"))
    @eval @doc """
    SetSurfaceBlendMode(Surface *, BlendMode)

Set the blend mode used for blit operations.

param: surface The surface to update.
param: blendMode ::BlendMode to use for blit blending.

Return 0 on success, or -1 if the parameters are not valid.

 - `GetSurfaceBlendMode()`

$(
    if SetSurfaceBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetSurfaceBlendMode), r"^No documentation found.\n" => "")
    end
)
""" SetSurfaceBlendMode
end

if isdefined(@__MODULE__, Symbol("HapticRumbleStop"))
    @eval @doc """
    HapticRumbleStop(Haptic *)

Stops the simple rumble on a haptic device.

param: haptic Haptic to stop the rumble on.
Return 0 on success or -1 on error.

 - `HapticRumbleSupported`
 - `HapticRumbleInit`
 - `HapticRumblePlay`

$(
    if HapticRumbleStop === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRumbleStop), r"^No documentation found.\n" => "")
    end
)
""" HapticRumbleStop
end

if isdefined(@__MODULE__, Symbol("GetRGBA"))
    @eval @doc """
    GetRGBA(Uint32, const PixelFormat *, Uint8 *, Uint8 *, Uint8 *, Uint8 *)

Get the RGBA components from a pixel of the specified format.

 - `GetRGB`

$(
    if GetRGBA === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRGBA), r"^No documentation found.\n" => "")
    end
)
""" GetRGBA
end

if isdefined(@__MODULE__, Symbol("GetWindowFromID"))
    @eval @doc """
    GetWindowFromID(Uint32)

Get a window from a stored ID, or NULL if it doesn't exist.

$(
    if GetWindowFromID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowFromID), r"^No documentation found.\n" => "")
    end
)
""" GetWindowFromID
end

if isdefined(@__MODULE__, Symbol("SetPixelFormatPalette"))
    @eval @doc """
    SetPixelFormatPalette(PixelFormat *, Palette *)

Set the palette for a pixel format structure.

$(
    if SetPixelFormatPalette === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetPixelFormatPalette), r"^No documentation found.\n" => "")
    end
)
""" SetPixelFormatPalette
end

if isdefined(@__MODULE__, Symbol("RegisterEvents"))
    @eval @doc """
    RegisterEvents(int)

This function allocates a set of user-defined events, and returns
the beginning event number for that set of events.

If there aren't enough user-defined events left, this function
returns (Uint32)-1

$(
    if RegisterEvents === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RegisterEvents), r"^No documentation found.\n" => "")
    end
)
""" RegisterEvents
end

if isdefined(@__MODULE__, Symbol("SetModState"))
    @eval @doc """
    SetModState(Keymod)

Set the current key modifier state for the keyboard.

!!!note

    This does not change the keyboard state, only the key modifier flags.

$(
    if SetModState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetModState), r"^No documentation found.\n" => "")
    end
)
""" SetModState
end

if isdefined(@__MODULE__, Symbol("GetPixelFormatName"))
    @eval @doc """
    GetPixelFormatName(Uint32)

Get the human readable name of a pixel format

$(
    if GetPixelFormatName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPixelFormatName), r"^No documentation found.\n" => "")
    end
)
""" GetPixelFormatName
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_VSYNC"))
    @eval @doc """
    HINT_RENDER_VSYNC

 A variable controlling whether updates to the SDL screen surface should be synchronized with the vertical refresh, to avoid tearing.

This variable can be set to the following values:
  "0"       - Disable vsync
  "1"       - Enable vsync

By default SDL does not sync screen surface updates with vertical refresh.

$(
    if HINT_RENDER_VSYNC === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_VSYNC), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_VSYNC
end

if isdefined(@__MODULE__, Symbol("GL_CreateContext"))
    @eval @doc """
    GL_CreateContext(Window *)

Create an OpenGL context for use with an OpenGL window, and make it
       current.

 - `GL_DeleteContext()`

$(
    if GL_CreateContext === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_CreateContext), r"^No documentation found.\n" => "")
    end
)
""" GL_CreateContext
end

if isdefined(@__MODULE__, Symbol("HapticEffect"))
    @eval @doc """
    HapticEffect


Note either the attack_level or the fade_level may be above the actual
effect level.

 - `HapticConstant`
 - `HapticPeriodic`
 - `HapticCondition`
 - `HapticRamp`
 - `HapticLeftRight`
 - `HapticCustom`

$(
    if HapticEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticEffect
end

if isdefined(@__MODULE__, Symbol("WaitEvent"))
    @eval @doc """
    WaitEvent(Event *)

Waits indefinitely for the next available event.

Return 1, or 0 if there was an error while waiting for events.

param: event If not NULL, the next event is removed from the queue and
             stored in that area.

$(
    if WaitEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WaitEvent), r"^No documentation found.\n" => "")
    end
)
""" WaitEvent
end

if isdefined(@__MODULE__, Symbol("MixAudioFormat"))
    @eval @doc """
    MixAudioFormat(Uint8 *, const Uint8 *, AudioFormat, Uint32, int)

This works like MixAudio(), but you specify the audio format instead of
using the format of audio device 1. Thus it can be used when no audio
device is open at all.

$(
    if MixAudioFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MixAudioFormat), r"^No documentation found.\n" => "")
    end
)
""" MixAudioFormat
end

if isdefined(@__MODULE__, Symbol("VideoQuit"))
    @eval @doc """
    VideoQuit()

Shuts down the video subsystem.

This function closes all windows, and restores the original video mode.

 - `VideoInit()`

$(
    if VideoQuit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc VideoQuit), r"^No documentation found.\n" => "")
    end
)
""" VideoQuit
end

if isdefined(@__MODULE__, Symbol("RWclose"))
    @eval @doc """
    RWclose(RWops *)

Close and free an allocated RWops structure.

Return 0 if successful or -1 on write error when flushing data.

$(
    if RWclose === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWclose), r"^No documentation found.\n" => "")
    end
)
""" RWclose
end

if isdefined(@__MODULE__, Symbol("CreateSoftwareRenderer"))
    @eval @doc """
    CreateSoftwareRenderer(Surface *)

Create a 2D software rendering context for a surface.

param: surface The surface where rendering is done.

Return A valid rendering context or NULL if there was an error.

 - `CreateRenderer()`
 - `DestroyRenderer()`

$(
    if CreateSoftwareRenderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateSoftwareRenderer), r"^No documentation found.\n" => "")
    end
)
""" CreateSoftwareRenderer
end

if isdefined(@__MODULE__, Symbol("CondSignal"))
    @eval @doc """
    CondSignal(cond *)

Restart one of the threads that are waiting on the condition variable.

Return 0 or -1 on error.

$(
    if CondSignal === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CondSignal), r"^No documentation found.\n" => "")
    end
)
""" CondSignal
end

if isdefined(@__MODULE__, Symbol("MAX_UINT8"))
    @eval @doc """
    MAX_UINT8

An unsigned 8-bit integer type.

$(
    if MAX_UINT8 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_UINT8), r"^No documentation found.\n" => "")
    end
)
""" MAX_UINT8
end

if isdefined(@__MODULE__, Symbol("CreateWindowFrom"))
    @eval @doc """
    CreateWindowFrom(const void *)

Create an SDL window from an existing native window.

param: data A pointer to driver-dependent window creation data

Return The created window, or NULL if window creation failed.

 - `DestroyWindow()`

$(
    if CreateWindowFrom === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateWindowFrom), r"^No documentation found.\n" => "")
    end
)
""" CreateWindowFrom
end

if isdefined(@__MODULE__, Symbol("SetWindowData"))
    @eval @doc """
    SetWindowData(Window *, const char *, void *)

Associate an arbitrary named pointer with a window.

param: window   The window to associate with the pointer.
param: name     The name of the pointer.
param: userdata The associated pointer.

Return The previous value associated with 'name'

!!!note

    The name is case-sensitive.

 - `GetWindowData()`

$(
    if SetWindowData === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowData), r"^No documentation found.\n" => "")
    end
)
""" SetWindowData
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_XINERAMA"))
    @eval @doc """
    HINT_VIDEO_X11_XINERAMA

 A variable controlling whether the X11 Xinerama extension should be used.

This variable can be set to the following values:
  "0"       - Disable Xinerama
  "1"       - Enable Xinerama

By default SDL will use Xinerama if it is available.

$(
    if HINT_VIDEO_X11_XINERAMA === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_XINERAMA), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_XINERAMA
end

if isdefined(@__MODULE__, Symbol("HapticStopEffect"))
    @eval @doc """
    HapticStopEffect(Haptic *, int)

Stops the haptic effect on its associated haptic device.

param: haptic Haptic device to stop the effect on.
param: effect Identifier of the effect to stop.
Return 0 on success or -1 on error.

 - `HapticRunEffect`
 - `HapticDestroyEffect`

$(
    if HapticStopEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticStopEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticStopEffect
end

if isdefined(@__MODULE__, Symbol("NumHaptics"))
    @eval @doc """
    NumHaptics()

Count the number of haptic devices attached to the system.

Return Number of haptic devices detected on the system.

$(
    if NumHaptics === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc NumHaptics), r"^No documentation found.\n" => "")
    end
)
""" NumHaptics
end

if isdefined(@__MODULE__, Symbol("GetMouseFocus"))
    @eval @doc """
    GetMouseFocus()

Get the window which currently has mouse focus.

$(
    if GetMouseFocus === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetMouseFocus), r"^No documentation found.\n" => "")
    end
)
""" GetMouseFocus
end

if isdefined(@__MODULE__, Symbol("RenderDrawRects"))
    @eval @doc """
    RenderDrawRects(Renderer *, const Rect *, int)

Draw some number of rectangles on the current rendering target.

param: renderer The renderer which should draw multiple rectangles.
param: rects A pointer to an array of destination rectangles.
param: count The number of rectangles.

Return 0 on success, or -1 on error

$(
    if RenderDrawRects === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawRects), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawRects
end

if isdefined(@__MODULE__, Symbol("GetKeyboardState"))
    @eval @doc """
    GetKeyboardState(int *)

Get a snapshot of the current state of the keyboard.

param: numkeys if non-NULL, receives the length of the returned array.

Return An array of key states. Indexes into this array are obtained by using ::Scancode values.

:b Example:
```C
const Uint8 *state = GetKeyboardState(NULL);
if ( state[SCANCODE_RETURN] )   {
    printf("<RETURN> is pressed.:n");
}
```

$(
    if GetKeyboardState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetKeyboardState), r"^No documentation found.\n" => "")
    end
)
""" GetKeyboardState
end

if isdefined(@__MODULE__, Symbol("HINT_XINPUT_ENABLED"))
    @eval @doc """
    HINT_XINPUT_ENABLED

 A variable that lets you disable the detection and use of Xinput gamepad devices

The variable can be set to the following values:
  "0"       - Disable XInput detection (only uses direct input)
  "1"       - Enable XInput detection (the default)

$(
    if HINT_XINPUT_ENABLED === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_XINPUT_ENABLED), r"^No documentation found.\n" => "")
    end
)
""" HINT_XINPUT_ENABLED
end

if isdefined(@__MODULE__, Symbol("CreateWindowAndRenderer"))
    @eval @doc """
    CreateWindowAndRenderer(int, int, Uint32, Window **, Renderer **)

Create a window and default renderer

param: width    The width of the window
param: height   The height of the window
param: window_flags The flags used to create the window
param: window   A pointer filled with the window, or NULL on error
param: renderer A pointer filled with the renderer, or NULL on error

Return 0 on success, or -1 on error

$(
    if CreateWindowAndRenderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateWindowAndRenderer), r"^No documentation found.\n" => "")
    end
)
""" CreateWindowAndRenderer
end

if isdefined(@__MODULE__, Symbol("HapticQuery"))
    @eval @doc """
    HapticQuery(Haptic *)

Gets the haptic device's supported features in bitwise manner.

Example:
```C
if (HapticQuery(haptic) & HAPTIC_CONSTANT) {
    printf("We have constant haptic effect!:n");
}
```

param: haptic The haptic device to query.
Return Haptic features in bitwise manner (OR'd).

 - `HapticNumEffects`
 - `HapticEffectSupported`

$(
    if HapticQuery === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticQuery), r"^No documentation found.\n" => "")
    end
)
""" HapticQuery
end

if isdefined(@__MODULE__, Symbol("GetWindowDisplayMode"))
    @eval @doc """
    GetWindowDisplayMode(Window *, DisplayMode *)

Fill in information about the display mode used when a fullscreen
       window is visible.

 - `SetWindowDisplayMode()`
 - `SetWindowFullscreen()`

$(
    if GetWindowDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" GetWindowDisplayMode
end

if isdefined(@__MODULE__, Symbol("LoadFunction"))
    @eval @doc """
    LoadFunction(void *, const char *)

Given an object handle, this function looks up the address of the
named function in the shared object and returns it.  This address
is no longer valid after calling UnloadObject().

$(
    if LoadFunction === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadFunction), r"^No documentation found.\n" => "")
    end
)
""" LoadFunction
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_FOCUS_CLICKTHROUGH"))
    @eval @doc """
    HINT_MOUSE_FOCUS_CLICKTHROUGH

Allow mouse click events when clicking to focus an SDL window

This variable can be set to the following values:
  "0"       - Ignore mouse clicks that activate a window
  "1"       - Generate events for mouse clicks that activate a window

By default SDL will ignore mouse clicks that activate a window

$(
    if HINT_MOUSE_FOCUS_CLICKTHROUGH === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_FOCUS_CLICKTHROUGH), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_FOCUS_CLICKTHROUGH
end

if isdefined(@__MODULE__, Symbol("HapticUpdateEffect"))
    @eval @doc """
    HapticUpdateEffect(Haptic *, int, HapticEffect *)

Updates the properties of an effect.

Can be used dynamically, although behavior when dynamically changing
direction may be strange.  Specifically the effect may reupload itself
and start playing from the start.  You cannot change the type either when
running HapticUpdateEffect().

param: haptic Haptic device that has the effect.
param: effect Identifier of the effect to update.
param: data New effect properties to use.
Return 0 on success or -1 on error.

 - `HapticNewEffect`
 - `HapticRunEffect`
 - `HapticDestroyEffect`

$(
    if HapticUpdateEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticUpdateEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticUpdateEffect
end

if isdefined(@__MODULE__, Symbol("FPoint"))
    @eval @doc """
    FPoint

 The structure that defines a point (floating point)

 - `EnclosePoints`
 - `PointInRect`

$(
    if FPoint === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FPoint), r"^No documentation found.\n" => "")
    end
)
""" FPoint
end

if isdefined(@__MODULE__, Symbol("DestroySemaphore"))
    @eval @doc """
    DestroySemaphore(sem *)

Destroy a semaphore.

$(
    if DestroySemaphore === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroySemaphore), r"^No documentation found.\n" => "")
    end
)
""" DestroySemaphore
end

if isdefined(@__MODULE__, Symbol("GetNumTouchFingers"))
    @eval @doc """
    GetNumTouchFingers(TouchID)

Get the number of active fingers for a given touch device.

$(
    if GetNumTouchFingers === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumTouchFingers), r"^No documentation found.\n" => "")
    end
)
""" GetNumTouchFingers
end

if isdefined(@__MODULE__, Symbol("GetShapedWindowMode"))
    @eval @doc """
    GetShapedWindowMode(Window *, WindowShapeMode *)

Get the shape parameters of a shaped window.

param: window The shaped window whose parameters should be retrieved.
param: shape_mode An empty shape-mode structure to fill, or NULL to check whether the window has a shape.

Return 0 if the window has a shape and, provided shape_mode was not NULL, shape_mode has been filled with the mode
         data, NONSHAPEABLE_WINDOW if the Window given is not a shaped window, or WINDOW_LACKS_SHAPE if
         the Window given is a shapeable window currently lacking a shape.

 - `WindowShapeMode`
 - `SetWindowShape`

$(
    if GetShapedWindowMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetShapedWindowMode), r"^No documentation found.\n" => "")
    end
)
""" GetShapedWindowMode
end

if isdefined(@__MODULE__, Symbol("HapticGetEffectStatus"))
    @eval @doc """
    HapticGetEffectStatus(Haptic *, int)

Gets the status of the current effect on the haptic device.

Device must support the ::HAPTIC_STATUS feature.

param: haptic Haptic device to query the effect status on.
param: effect Identifier of the effect to query its status.
Return 0 if it isn't playing, 1 if it is playing or -1 on error.

 - `HapticRunEffect`
 - `HapticStopEffect`

$(
    if HapticGetEffectStatus === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticGetEffectStatus), r"^No documentation found.\n" => "")
    end
)
""" HapticGetEffectStatus
end

if isdefined(@__MODULE__, Symbol("RenderGetClipRect"))
    @eval @doc """
    RenderGetClipRect(Renderer *, Rect *)

Get the clip rectangle for the current target.

param: renderer The renderer from which clip rectangle should be queried.
param: rect   A pointer filled in with the current clip rectangle, or
              an empty rectangle if clipping is disabled.

 - `RenderSetClipRect()`

$(
    if RenderGetClipRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetClipRect), r"^No documentation found.\n" => "")
    end
)
""" RenderGetClipRect
end

if isdefined(@__MODULE__, Symbol("GetMouseState"))
    @eval @doc """
    GetMouseState(int *, int *)

Retrieve the current state of the mouse.

The current button state is returned as a button bitmask, which can
be tested using the BUTTON(X) macros, and x and y are set to the
mouse cursor position relative to the focus window for the currently
selected mouse.  You can pass NULL for either x or y.

$(
    if GetMouseState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetMouseState), r"^No documentation found.\n" => "")
    end
)
""" GetMouseState
end

if isdefined(@__MODULE__, Symbol("AtomicGetPtr"))
    @eval @doc """
    AtomicGetPtr(void **)

Get the value of a pointer atomically.

$(
    if AtomicGetPtr === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicGetPtr), r"^No documentation found.\n" => "")
    end
)
""" AtomicGetPtr
end

if isdefined(@__MODULE__, Symbol("GameControllerRumble"))
    @eval @doc """
    GameControllerRumble(GameController *, Uint16, Uint16, Uint32)

Trigger a rumble effect
Each call to this function cancels any previous rumble effect, and calling it with 0 intensity stops any rumbling.

param: gamecontroller The controller to vibrate
param: low_frequency_rumble The intensity of the low frequency (left) rumble motor, from 0 to 0xFFFF
param: high_frequency_rumble The intensity of the high frequency (right) rumble motor, from 0 to 0xFFFF
param: duration_ms The duration of the rumble effect, in milliseconds

Return 0, or -1 if rumble isn't supported on this joystick

$(
    if GameControllerRumble === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerRumble), r"^No documentation found.\n" => "")
    end
)
""" GameControllerRumble
end

if isdefined(@__MODULE__, Symbol("HINT_WAVE_TRUNCATION"))
    @eval @doc """
    HINT_WAVE_TRUNCATION

 Controls how a truncated WAVE file is handled.

A WAVE file is considered truncated if any of the chunks are incomplete or
the data chunk size is not a multiple of the block size. By default, SDL
decodes until the first incomplete block, as most applications seem to do.

This variable can be set to the following values:

  "verystrict" - Raise an error if the file is truncated
  "strict"     - Like "verystrict", but the size of the RIFF chunk is ignored
  "dropframe"  - Decode until the first incomplete sample frame
  "dropblock"  - Decode until the first incomplete block (default)

$(
    if HINT_WAVE_TRUNCATION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WAVE_TRUNCATION), r"^No documentation found.\n" => "")
    end
)
""" HINT_WAVE_TRUNCATION
end

if isdefined(@__MODULE__, Symbol("GameControllerAddMappingsFromFile"))
    @eval @doc """
    GameControllerAddMappingsFromFile

Load a set of mappings from a file, filtered by the current GetPlatform()

Convenience macro.

$(
    if GameControllerAddMappingsFromFile === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerAddMappingsFromFile), r"^No documentation found.\n" => "")
    end
)
""" GameControllerAddMappingsFromFile
end

if isdefined(@__MODULE__, Symbol("MouseWheelEvent"))
    @eval @doc """
    MouseWheelEvent

Mouse wheel event structure (event.wheel.*)

$(
    if MouseWheelEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MouseWheelEvent), r"^No documentation found.\n" => "")
    end
)
""" MouseWheelEvent
end

if isdefined(@__MODULE__, Symbol("GameControllerTypeForIndex"))
    @eval @doc """
    GameControllerTypeForIndex(int)

Get the type of a game controller.
This can be called before any controllers are opened.

$(
    if GameControllerTypeForIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerTypeForIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerTypeForIndex
end

if isdefined(@__MODULE__, Symbol("JoystickGetPlayerIndex"))
    @eval @doc """
    JoystickGetPlayerIndex(Joystick *)

Get the player index of an opened joystick, or -1 if it's not available

For XInput controllers this returns the XInput user index.

$(
    if JoystickGetPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetPlayerIndex
end

if isdefined(@__MODULE__, Symbol("JoystickInstanceID"))
    @eval @doc """
    JoystickInstanceID(Joystick *)

Get the instance ID of an opened joystick or -1 if the joystick is invalid.

$(
    if JoystickInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickInstanceID), r"^No documentation found.\n" => "")
    end
)
""" JoystickInstanceID
end

if isdefined(@__MODULE__, Symbol("GetDisplayMode"))
    @eval @doc """
    GetDisplayMode(int, int, DisplayMode *)

Fill in information about a specific display mode.

!!!note

    The display modes are sorted in this priority:
       - bits per pixel -> more colors to fewer colors
       - width -> largest to smallest
       - height -> largest to smallest
       - refresh rate -> highest to lowest

 - `GetNumDisplayModes()`

$(
    if GetDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayMode
end

if isdefined(@__MODULE__, Symbol("HideWindow"))
    @eval @doc """
    HideWindow(Window *)

Hide a window.

 - `ShowWindow()`

$(
    if HideWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HideWindow), r"^No documentation found.\n" => "")
    end
)
""" HideWindow
end

if isdefined(@__MODULE__, Symbol("JoystickGetBall"))
    @eval @doc """
    JoystickGetBall(Joystick *, int, int *, int *)

Get the ball axis change since the last poll.

Return 0, or -1 if you passed it invalid parameters.

The ball indices start at index 0.

$(
    if JoystickGetBall === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetBall), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetBall
end

if isdefined(@__MODULE__, Symbol("GetWindowPosition"))
    @eval @doc """
    GetWindowPosition(Window *, int *, int *)

Get the position of a window.

param: window   The window to query.
param: x        Pointer to variable for storing the x position, in screen
                coordinates. May be NULL.
param: y        Pointer to variable for storing the y position, in screen
                coordinates. May be NULL.

 - `SetWindowPosition()`

$(
    if GetWindowPosition === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowPosition), r"^No documentation found.\n" => "")
    end
)
""" GetWindowPosition
end

if isdefined(@__MODULE__, Symbol("SensorGetType"))
    @eval @doc """
    SensorGetType(Sensor *)

Get the type of a sensor.

This can be called before any sensors are opened.

Return The sensor type, or SENSOR_INVALID if the sensor is NULL.

$(
    if SensorGetType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetType), r"^No documentation found.\n" => "")
    end
)
""" SensorGetType
end

if isdefined(@__MODULE__, Symbol("OSEvent"))
    @eval @doc """
    OSEvent

OS Specific event

$(
    if OSEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc OSEvent), r"^No documentation found.\n" => "")
    end
)
""" OSEvent
end

if isdefined(@__MODULE__, Symbol("GetGlobalMouseState"))
    @eval @doc """
    GetGlobalMouseState(int *, int *)

Get the current state of the mouse, in relation to the desktop

This works just like GetMouseState(), but the coordinates will be
reported relative to the top-left of the desktop. This can be useful if
you need to track the mouse outside of a specific window and
CaptureMouse() doesn't fit your needs. For example, it could be
useful if you need to track the mouse while dragging a window, where
coordinates relative to a window might not be in sync at all times.

!!!note

    GetMouseState() returns the mouse position as SDL understands
      it from the last pump of the event queue. This function, however,
      queries the OS for the current mouse position, and as such, might
      be a slightly less efficient function. Unless you know what you're
      doing and have a good reason to use this function, you probably want
      GetMouseState() instead.

param: x Returns the current X coord, relative to the desktop. Can be NULL.
param: y Returns the current Y coord, relative to the desktop. Can be NULL.
Return The current button state as a bitmask, which can be tested using the BUTTON(X) macros.

 - `GetMouseState`

$(
    if GetGlobalMouseState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetGlobalMouseState), r"^No documentation found.\n" => "")
    end
)
""" GetGlobalMouseState
end

if isdefined(@__MODULE__, Symbol("LoadBMP_RW"))
    @eval @doc """
    LoadBMP_RW(RWops *, int)

Load a surface from a seekable SDL data stream (memory or file).

If `freesrc` is non-zero, the stream will be closed after being read.

The new surface should be freed with FreeSurface().

Return the new surface, or NULL if there was an error.

$(
    if LoadBMP_RW === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadBMP_RW), r"^No documentation found.\n" => "")
    end
)
""" LoadBMP_RW
end

if isdefined(@__MODULE__, Symbol("HasAVX"))
    @eval @doc """
    HasAVX()

This function returns true if the CPU has AVX features.

$(
    if HasAVX === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasAVX), r"^No documentation found.\n" => "")
    end
)
""" HasAVX
end

if isdefined(@__MODULE__, Symbol("SensorGetData"))
    @eval @doc """
    SensorGetData(Sensor *, float *, int)

Get the current state of an opened sensor.

The number of values and interpretation of the data is sensor dependent.

param: sensor The sensor to query
param: data A pointer filled with the current sensor state
param: num_values The number of values to write to data

Return 0 or -1 if an error occurred.

$(
    if SensorGetData === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetData), r"^No documentation found.\n" => "")
    end
)
""" SensorGetData
end

if isdefined(@__MODULE__, Symbol("AtomicLock"))
    @eval @doc """
    AtomicLock(SpinLock *)

Lock a spin lock by setting it to a non-zero value.

param: lock Points to the lock.

$(
    if AtomicLock === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicLock), r"^No documentation found.\n" => "")
    end
)
""" AtomicLock
end

if isdefined(@__MODULE__, Symbol("SDLCALL"))
    @eval @doc """
    SDLCALL

Get the size of a window's underlying drawable in pixels (for use
       with setting viewport, scissor & etc).

param: window   Window from which the drawable size should be queried
param: w        Pointer to variable for storing the width in pixels,
                may be NULL
param: h        Pointer to variable for storing the height in pixels,
                may be NULL

This may differ from GetWindowSize() if we're rendering to a high-DPI
drawable, i.e. the window was created with WINDOW_ALLOW_HIGHDPI on a
platform with high-DPI support (Apple calls this "Retina"), and not disabled
by the `HINT_VIDEO_HIGHDPI_DISABLED` hint.

!!!note

    On macOS high-DPI support must be enabled for an application by
      setting NSHighResolutionCapable to true in its Info.plist.

 - `GetWindowSize()`
 - `CreateWindow()`

$(
    if SDLCALL === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SDLCALL), r"^No documentation found.\n" => "")
    end
)
""" SDLCALL
end

if isdefined(@__MODULE__, Symbol("HapticName"))
    @eval @doc """
    HapticName(int)

Get the implementation dependent name of a haptic device.

This can be called before any joysticks are opened.
If no name can be found, this function returns NULL.

param: device_index Index of the device to get its name.
Return Name of the device or NULL on error.

 - `NumHaptics`

$(
    if HapticName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticName), r"^No documentation found.\n" => "")
    end
)
""" HapticName
end

if isdefined(@__MODULE__, Symbol("GetPrefPath"))
    @eval @doc """
    GetPrefPath(const char *, const char *)

Get the user-and-app-specific path where files can be written.

Get the "pref dir". This is meant to be where users can write personal
files (preferences and save games, etc) that are specific to your
application. This directory is unique per user, per application.

This function will decide the appropriate location in the native filesystem,
create the directory if necessary, and return a string of the absolute
path to the directory in UTF-8 encoding.

On Windows, the string might look like:
"C:\\Users\\bob\\AppData\\Roaming\\My Company\\My Program Name\\"

On Linux, the string might look like:
"/home/bob/.local/share/My Program Name/"

On Mac OS X, the string might look like:
"/Users/bob/Library/Application Support/My Program Name/"

(etc.)

You specify the name of your organization (if it's not a real organization,
your name or an Internet domain you own might do) and the name of your
application. These should be untranslated proper names.

Both the org and app strings may become part of a directory name, so
please follow these rules:

  - Try to use the same org string (including case-sensitivity) for
    all your applications that use this function.
  - Always use a unique app string for each one, and make sure it never
    changes for an app once you've decided on it.
  - Unicode characters are legal, as long as it's UTF-8 encoded, but...
  - ...only use letters, numbers, and spaces. Avoid punctuation like
    "Game Name 2: Bad Guy's Revenge!" ... "Game Name 2" is sufficient.

This returns an absolute path in UTF-8 encoding, and is guaranteed to
end with a path separator ('\\' on Windows, '/' most other places).

The pointer returned by this function is owned by you. Please call
free() on the pointer when you are done with it, or it will be a
memory leak. This is not necessarily a fast call, though, so you should
call this once near startup and save the string if you need it.

You should assume the path returned by this function is the only safe
place to write files (and that GetBasePath(), while it might be
writable, or even the parent of the returned path, aren't where you
should be writing things).

Some platforms can't determine the pref path, and on other
platforms, this might be meaningless. In such cases, this function will
return NULL.

 param: org The name of your organization.
 param: app The name of your application.
Return UTF-8 string of user dir in platform-dependent notation. NULL
        if there's a problem (creating directory failed, etc).

 - `GetBasePath`

$(
    if GetPrefPath === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPrefPath), r"^No documentation found.\n" => "")
    end
)
""" GetPrefPath
end

if isdefined(@__MODULE__, Symbol("RecordGesture"))
    @eval @doc """
    RecordGesture(TouchID)

Begin Recording a gesture on the specified touch, or all touches (-1)



$(
    if RecordGesture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RecordGesture), r"^No documentation found.\n" => "")
    end
)
""" RecordGesture
end

if isdefined(@__MODULE__, Symbol("MUTEX_TIMEDOUT"))
    @eval @doc """
    MUTEX_TIMEDOUT

Synchronization functions which can time out return this value
if they time out.

$(
    if MUTEX_TIMEDOUT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MUTEX_TIMEDOUT), r"^No documentation found.\n" => "")
    end
)
""" MUTEX_TIMEDOUT
end

if isdefined(@__MODULE__, Symbol("HINT_WAVE_RIFF_CHUNK_SIZE"))
    @eval @doc """
    HINT_WAVE_RIFF_CHUNK_SIZE

 Controls how the size of the RIFF chunk affects the loading of a WAVE file.

The size of the RIFF chunk (which includes all the sub-chunks of the WAVE
file) is not always reliable. In case the size is wrong, it's possible to
just ignore it and step through the chunks until a fixed limit is reached.

Note that files that have trailing data unrelated to the WAVE file or
corrupt files may slow down the loading process without a reliable boundary.
By default, SDL stops after 10000 chunks to prevent wasting time. Use the
environment variable WAVE_CHUNK_LIMIT to adjust this value.

This variable can be set to the following values:

  "force"        - Always use the RIFF chunk size as a boundary for the chunk search
  "ignorezero"   - Like "force", but a zero size searches up to 4 GiB (default)
  "ignore"       - Ignore the RIFF chunk size and always search up to 4 GiB
  "maximum"      - Search for chunks until the end of file (not recommended)

$(
    if HINT_WAVE_RIFF_CHUNK_SIZE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WAVE_RIFF_CHUNK_SIZE), r"^No documentation found.\n" => "")
    end
)
""" HINT_WAVE_RIFF_CHUNK_SIZE
end

if isdefined(@__MODULE__, Symbol("GameControllerMappingForIndex"))
    @eval @doc """
    GameControllerMappingForIndex(int)

Get the mapping at a particular index.

Return the mapping string.  Must be freed with free().  Returns NULL if the index is out of range.

$(
    if GameControllerMappingForIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerMappingForIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerMappingForIndex
end

if isdefined(@__MODULE__, Symbol("WaitThread"))
    @eval @doc """
    WaitThread(Thread *, int *)

Wait for a thread to finish. Threads that haven't been detached will
remain (as a "zombie") until this function cleans them up. Not doing so
is a resource leak.

Once a thread has been cleaned up through this function, the Thread
that references it becomes invalid and should not be referenced again.
As such, only one thread may call WaitThread() on another.

The return code for the thread function is placed in the area
pointed to by `status,` if `status` is not NULL.

You may not wait on a thread that has been used in a call to
DetachThread(). Use either that function or this one, but not
both, or behavior is undefined.

It is safe to pass NULL to this function; it is a no-op.

$(
    if WaitThread === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WaitThread), r"^No documentation found.\n" => "")
    end
)
""" WaitThread
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT"))
    @eval @doc """
    HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT

 A variable that is the address of another Window* (as a hex string formatted with "%p").

If this hint is set before CreateWindowFrom() and the Window* it is set to has
WINDOW_OPENGL set (and running on WGL only, currently), then two things will occur on the newly 
created Window:

1. Its pixel format will be set to the same pixel format as this Window.  This is
needed for example when sharing an OpenGL context across multiple windows.

2. The flag WINDOW_OPENGL will be set on the new window so it can be used for
OpenGL rendering.

This variable can be set to the following values:
  The address (as a string "%p") of the Window* that new windows created with CreateWindowFrom() should
  share a pixel format with.

$(
    if HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_OPENGL_SHADERS"))
    @eval @doc """
    HINT_RENDER_OPENGL_SHADERS

 A variable controlling whether the OpenGL render driver uses shaders if they are available.

This variable can be set to the following values:
  "0"       - Disable shaders
  "1"       - Enable shaders

By default shaders are used if OpenGL supports them.

$(
    if HINT_RENDER_OPENGL_SHADERS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_OPENGL_SHADERS), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_OPENGL_SHADERS
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_DOUBLE_CLICK_TIME"))
    @eval @doc """
    HINT_MOUSE_DOUBLE_CLICK_TIME

 A variable setting the double click time, in milliseconds.

$(
    if HINT_MOUSE_DOUBLE_CLICK_TIME === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_DOUBLE_CLICK_TIME), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_DOUBLE_CLICK_TIME
end

if isdefined(@__MODULE__, Symbol("ThreadFunction"))
    @eval @doc """
    ThreadFunction

The function passed to CreateThread().
It is passed a void* user context parameter and returns an int.

$(
    if ThreadFunction === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ThreadFunction), r"^No documentation found.\n" => "")
    end
)
""" ThreadFunction
end

if isdefined(@__MODULE__, Symbol("Vulkan_GetDrawableSize"))
    @eval @doc """
    Vulkan_GetDrawableSize(Window *, int *, int *)

Get the size of a window's underlying drawable in pixels (for use
       with setting viewport, scissor & etc).

param: window   Window from which the drawable size should be queried
param: w        Pointer to variable for storing the width in pixels,
                may be NULL
param: h        Pointer to variable for storing the height in pixels,
                may be NULL

This may differ from GetWindowSize() if we're rendering to a high-DPI
drawable, i.e. the window was created with WINDOW_ALLOW_HIGHDPI on a
platform with high-DPI support (Apple calls this "Retina"), and not disabled
by the `HINT_VIDEO_HIGHDPI_DISABLED` hint.

!!!note

    On macOS high-DPI support must be enabled for an application by
      setting NSHighResolutionCapable to true in its Info.plist.

 - `GetWindowSize()`
 - `CreateWindow()`

$(
    if Vulkan_GetDrawableSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_GetDrawableSize), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_GetDrawableSize
end

if isdefined(@__MODULE__, Symbol("IntersectRectAndLine"))
    @eval @doc """
    IntersectRectAndLine(const Rect *, int *, int *, int *, int *)

Calculate the intersection of a rectangle and line segment.

Return TRUE if there is an intersection, FALSE otherwise.

$(
    if IntersectRectAndLine === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IntersectRectAndLine), r"^No documentation found.\n" => "")
    end
)
""" IntersectRectAndLine
end

if isdefined(@__MODULE__, Symbol("WarpMouseGlobal"))
    @eval @doc """
    WarpMouseGlobal(int, int)

Moves the mouse to the given position in global screen space.

param: x The x coordinate
param: y The y coordinate
Return 0 on success, -1 on error (usually: unsupported by a platform).

!!!note

    This function generates a mouse motion event

$(
    if WarpMouseGlobal === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WarpMouseGlobal), r"^No documentation found.\n" => "")
    end
)
""" WarpMouseGlobal
end

if isdefined(@__MODULE__, Symbol("HAPTIC_AUTOCENTER"))
    @eval @doc """
    HAPTIC_AUTOCENTER

Device can set autocenter.

Device supports setting autocenter.

 - `HapticSetAutocenter`

$(
    if HAPTIC_AUTOCENTER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_AUTOCENTER), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_AUTOCENTER
end

if isdefined(@__MODULE__, Symbol("GameControllerGetProduct"))
    @eval @doc """
    GameControllerGetProduct(GameController *)

Get the USB product ID of an opened controller, if available.
If the product ID isn't available this function returns 0.

$(
    if GameControllerGetProduct === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetProduct), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetProduct
end

if isdefined(@__MODULE__, Symbol("JoystickGetHat"))
    @eval @doc """
    JoystickGetHat(Joystick *, int)

Get the current state of a POV hat on a joystick.

The hat indices start at index 0.

Return The return value is one of the following positions:
         - ::HAT_CENTERED
         - ::HAT_UP
         - ::HAT_RIGHT
         - ::HAT_DOWN
         - ::HAT_LEFT
         - ::HAT_RIGHTUP
         - ::HAT_RIGHTDOWN
         - ::HAT_LEFTUP
         - ::HAT_LEFTDOWN

$(
    if JoystickGetHat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetHat), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetHat
end

if isdefined(@__MODULE__, Symbol("JoyAxisEvent"))
    @eval @doc """
    JoyAxisEvent

Joystick axis motion event structure (event.jaxis.*)

$(
    if JoyAxisEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoyAxisEvent), r"^No documentation found.\n" => "")
    end
)
""" JoyAxisEvent
end

if isdefined(@__MODULE__, Symbol("version"))
    @eval @doc """
    version

Information the version of SDL in use.

Represents the library's version as three levels: major revision
(increments with massive changes, additions, and enhancements),
minor revision (increments with backwards-compatible changes to the
major revision), and patchlevel (increments with fixes to the minor
revision).

 - `VERSION`
 - `GetVersion`

$(
    if version === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc version), r"^No documentation found.\n" => "")
    end
)
""" version
end

if isdefined(@__MODULE__, Symbol("HapticSetGain"))
    @eval @doc """
    HapticSetGain(Haptic *, int)

Sets the global gain of the device.

Device must support the ::HAPTIC_GAIN feature.

The user may specify the maximum gain by setting the environment variable
HAPTIC_GAIN_MAX which should be between 0 and 100.  All calls to
HapticSetGain() will scale linearly using HAPTIC_GAIN_MAX as the
maximum.

param: haptic Haptic device to set the gain on.
param: gain Value to set the gain to, should be between 0 and 100.
Return 0 on success or -1 on error.

 - `HapticQuery`

$(
    if HapticSetGain === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticSetGain), r"^No documentation found.\n" => "")
    end
)
""" HapticSetGain
end

if isdefined(@__MODULE__, Symbol("GetKeyFromName"))
    @eval @doc """
    GetKeyFromName(const char *)

Get a key code from a human-readable name

Return key code, or SDLK_UNKNOWN if the name wasn't recognized

 - `Keycode`

$(
    if GetKeyFromName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetKeyFromName), r"^No documentation found.\n" => "")
    end
)
""" GetKeyFromName
end

if isdefined(@__MODULE__, Symbol("SetWindowGrab"))
    @eval @doc """
    SetWindowGrab(Window *, bool)

Set a window's input grab mode.

param: window The window for which the input grab mode should be set.
param: grabbed This is TRUE to grab input, and FALSE to release input.

If the caller enables a grab while another window is currently grabbed,
the other window loses its grab in favor of the caller's window.

 - `GetWindowGrab()`

$(
    if SetWindowGrab === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowGrab), r"^No documentation found.\n" => "")
    end
)
""" SetWindowGrab
end

if isdefined(@__MODULE__, Symbol("SetWindowModalFor"))
    @eval @doc """
    SetWindowModalFor(Window *, Window *)

Sets the window as a modal for another window (TODO: reconsider this function and/or its name)

param: modal_window The window that should be modal
param: parent_window The parent window

Return 0 on success, or -1 otherwise.

$(
    if SetWindowModalFor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowModalFor), r"^No documentation found.\n" => "")
    end
)
""" SetWindowModalFor
end

if isdefined(@__MODULE__, Symbol("HasAVX2"))
    @eval @doc """
    HasAVX2()

This function returns true if the CPU has AVX2 features.

$(
    if HasAVX2 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasAVX2), r"^No documentation found.\n" => "")
    end
)
""" HasAVX2
end

if isdefined(@__MODULE__, Symbol("GetRenderer"))
    @eval @doc """
    GetRenderer(Window *)

Get the renderer associated with a window.

$(
    if GetRenderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRenderer), r"^No documentation found.\n" => "")
    end
)
""" GetRenderer
end

if isdefined(@__MODULE__, Symbol("SysWMmsg"))
    @eval @doc """
    SysWMmsg

The custom event structure.

$(
    if SysWMmsg === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SysWMmsg), r"^No documentation found.\n" => "")
    end
)
""" SysWMmsg
end

if isdefined(@__MODULE__, Symbol("HINT_APPLE_TV_CONTROLLER_UI_EVENTS"))
    @eval @doc """
    HINT_APPLE_TV_CONTROLLER_UI_EVENTS

 A variable controlling whether controllers used with the Apple TV
generate UI events.

When UI events are generated by controller input, the app will be
backgrounded when the Apple TV remote's menu button is pressed, and when the
pause or B buttons on gamepads are pressed.

More information about properly making use of controllers for the Apple TV
can be found here:
https://developer.apple.com/tvos/human-interface-guidelines/remote-and-controllers/

This variable can be set to the following values:
  "0"       - Controller input does not generate UI events (the default).
  "1"       - Controller input generates UI events.

$(
    if HINT_APPLE_TV_CONTROLLER_UI_EVENTS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_APPLE_TV_CONTROLLER_UI_EVENTS), r"^No documentation found.\n" => "")
    end
)
""" HINT_APPLE_TV_CONTROLLER_UI_EVENTS
end

if isdefined(@__MODULE__, Symbol("HINT_IME_INTERNAL_EDITING"))
    @eval @doc """
    HINT_IME_INTERNAL_EDITING

A variable to control whether certain IMEs should handle text editing internally instead of sending TEXTEDITING events.

The variable can be set to the following values:
 "0"       - TEXTEDITING events are sent, and it is the application's
             responsibility to render the text from these events and 
             differentiate it somehow from committed text. (default)
 "1"       - If supported by the IME then TEXTEDITING events are not sent, 
             and text that is being composed will be rendered in its own UI.

$(
    if HINT_IME_INTERNAL_EDITING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_IME_INTERNAL_EDITING), r"^No documentation found.\n" => "")
    end
)
""" HINT_IME_INTERNAL_EDITING
end

if isdefined(@__MODULE__, Symbol("MAX_SINT8"))
    @eval @doc """
    MAX_SINT8

A signed 8-bit integer type.

$(
    if MAX_SINT8 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_SINT8), r"^No documentation found.\n" => "")
    end
)
""" MAX_SINT8
end

if isdefined(@__MODULE__, Symbol("SensorID"))
    @eval @doc """
    SensorID

This is a unique ID for a sensor for the time it is connected to the system,
and is never reused for the lifetime of the application.

The ID value starts at 0 and increments from there. The value -1 is an invalid ID.

$(
    if SensorID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorID), r"^No documentation found.\n" => "")
    end
)
""" SensorID
end

if isdefined(@__MODULE__, Symbol("GetAssertionReport"))
    @eval @doc """
    GetAssertionReport()

Get a list of all assertion failures.

Get all assertions triggered since last call to ResetAssertionReport(),
or the start of the program.

The proper way to examine this data looks something like this:

<code>
const AssertData *item = GetAssertionReport();
while (item) {
    printf("'%s', %s (%s:%d), triggered %u times, always ignore: %s.\\n",
           item->condition, item->function, item->filename,
           item->linenum, item->trigger_count,
           item->always_ignore ? "yes" : "no");
    item = item->next;
}
</code>

Return List of all assertions.
 - `ResetAssertionReport`

$(
    if GetAssertionReport === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetAssertionReport), r"^No documentation found.\n" => "")
    end
)
""" GetAssertionReport
end

if isdefined(@__MODULE__, Symbol("HasSSE3"))
    @eval @doc """
    HasSSE3()

This function returns true if the CPU has SSE3 features.

$(
    if HasSSE3 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasSSE3), r"^No documentation found.\n" => "")
    end
)
""" HasSSE3
end

if isdefined(@__MODULE__, Symbol("GL_DeleteContext"))
    @eval @doc """
    GL_DeleteContext(GLContext)

Delete an OpenGL context.

 - `GL_CreateContext()`

$(
    if GL_DeleteContext === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_DeleteContext), r"^No documentation found.\n" => "")
    end
)
""" GL_DeleteContext
end

if isdefined(@__MODULE__, Symbol("HINT_RPI_VIDEO_LAYER"))
    @eval @doc """
    HINT_RPI_VIDEO_LAYER

Tell SDL which Dispmanx layer to use on a Raspberry PI

Also known as Z-order. The variable can take a negative or positive value.
The default is 10000.

$(
    if HINT_RPI_VIDEO_LAYER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RPI_VIDEO_LAYER), r"^No documentation found.\n" => "")
    end
)
""" HINT_RPI_VIDEO_LAYER
end

if isdefined(@__MODULE__, Symbol("HapticStopAll"))
    @eval @doc """
    HapticStopAll(Haptic *)

Stops all the currently playing effects on a haptic device.

param: haptic Haptic device to stop.
Return 0 on success or -1 on error.

$(
    if HapticStopAll === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticStopAll), r"^No documentation found.\n" => "")
    end
)
""" HapticStopAll
end

if isdefined(@__MODULE__, Symbol("LowerBlitScaled"))
    @eval @doc """
    LowerBlitScaled(Surface *, Rect *, Surface *, Rect *)

This is a semi-private blit function and it performs low-level surface
scaled blitting only.

$(
    if LowerBlitScaled === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LowerBlitScaled), r"^No documentation found.\n" => "")
    end
)
""" LowerBlitScaled
end

if isdefined(@__MODULE__, Symbol("EnableScreenSaver"))
    @eval @doc """
    EnableScreenSaver()

Allow the screen to be blanked by a screensaver

 - `IsScreenSaverEnabled()`
 - `DisableScreenSaver()`

$(
    if EnableScreenSaver === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc EnableScreenSaver), r"^No documentation found.\n" => "")
    end
)
""" EnableScreenSaver
end

if isdefined(@__MODULE__, Symbol("AUDIOCVT_MAX_FILTERS"))
    @eval @doc """
    AUDIOCVT_MAX_FILTERS

Upper limit of filters in AudioCVT

The maximum number of AudioFilter functions in AudioCVT is
currently limited to 9. The AudioCVT.filters array has 10 pointers,
one of which is the terminating NULL pointer.

$(
    if AUDIOCVT_MAX_FILTERS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AUDIOCVT_MAX_FILTERS), r"^No documentation found.\n" => "")
    end
)
""" AUDIOCVT_MAX_FILTERS
end

if isdefined(@__MODULE__, Symbol("HINT_EMSCRIPTEN_KEYBOARD_ELEMENT"))
    @eval @doc """
    HINT_EMSCRIPTEN_KEYBOARD_ELEMENT

override the binding element for keyboard inputs for Emscripten builds

This hint only applies to the emscripten platform

The variable can be one of
  "#window"      - The javascript window object (this is the default)
  "#document"    - The javascript document object
  "#screen"      - the javascript window.screen object
  "#canvas"      - the WebGL canvas element
  any other string without a leading # sign applies to the element on the page with that ID.

$(
    if HINT_EMSCRIPTEN_KEYBOARD_ELEMENT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_EMSCRIPTEN_KEYBOARD_ELEMENT), r"^No documentation found.\n" => "")
    end
)
""" HINT_EMSCRIPTEN_KEYBOARD_ELEMENT
end

if isdefined(@__MODULE__, Symbol("RenderFlush"))
    @eval @doc """
    RenderFlush(Renderer *)

Force the rendering context to flush any pending commands to the
       underlying rendering API.

You do not need to (and in fact, shouldn't) call this function unless
you are planning to call into OpenGL/Direct3D/Metal/whatever directly
in addition to using an Renderer.

This is for a very-specific case: if you are using SDL's render API,
you asked for a specific renderer backend (OpenGL, Direct3D, etc),
you set HINT_RENDER_BATCHING to "1", and you plan to make
OpenGL/D3D/whatever calls in addition to SDL render API calls. If all of
this applies, you should call RenderFlush() between calls to SDL's
render API and the low-level API you're using in cooperation.

In all other cases, you can ignore this function. This is only here to
get maximum performance out of a specific situation. In all other cases,
SDL will do the right thing, perhaps at a performance loss.

This function is first available in SDL 2.0.10, and is not needed in
2.0.9 and earlier, as earlier versions did not queue rendering commands
at all, instead flushing them to the OS immediately.

$(
    if RenderFlush === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderFlush), r"^No documentation found.\n" => "")
    end
)
""" RenderFlush
end

if isdefined(@__MODULE__, Symbol("HasIntersection"))
    @eval @doc """
    HasIntersection(const Rect *, const Rect *)

Determine whether two rectangles intersect.

Return TRUE if there is an intersection, FALSE otherwise.

$(
    if HasIntersection === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasIntersection), r"^No documentation found.\n" => "")
    end
)
""" HasIntersection
end

if isdefined(@__MODULE__, Symbol("GetYUVConversionMode"))
    @eval @doc """
    GetYUVConversionMode()

Get the YUV conversion mode

$(
    if GetYUVConversionMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetYUVConversionMode), r"^No documentation found.\n" => "")
    end
)
""" GetYUVConversionMode
end

if isdefined(@__MODULE__, Symbol("GL_GetCurrentContext"))
    @eval @doc """
    GL_GetCurrentContext()

Get the currently active OpenGL context.

$(
    if GL_GetCurrentContext === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetCurrentContext), r"^No documentation found.\n" => "")
    end
)
""" GL_GetCurrentContext
end

if isdefined(@__MODULE__, Symbol("GetSystemRAM"))
    @eval @doc """
    GetSystemRAM()

This function returns the amount of RAM configured in the system, in MB.

$(
    if GetSystemRAM === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetSystemRAM), r"^No documentation found.\n" => "")
    end
)
""" GetSystemRAM
end

if isdefined(@__MODULE__, Symbol("HasSSE"))
    @eval @doc """
    HasSSE()

This function returns true if the CPU has SSE features.

$(
    if HasSSE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasSSE), r"^No documentation found.\n" => "")
    end
)
""" HasSSE
end

if isdefined(@__MODULE__, Symbol("GameControllerGetPlayerIndex"))
    @eval @doc """
    GameControllerGetPlayerIndex(GameController *)

Get the player index of an opened game controller, or -1 if it's not available

For XInput controllers this returns the XInput user index.

$(
    if GameControllerGetPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetPlayerIndex
end

if isdefined(@__MODULE__, Symbol("HasSSE42"))
    @eval @doc """
    HasSSE42()

This function returns true if the CPU has SSE4.2 features.

$(
    if HasSSE42 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasSSE42), r"^No documentation found.\n" => "")
    end
)
""" HasSSE42
end

if isdefined(@__MODULE__, Symbol("HasEvent"))
    @eval @doc """
    HasEvent(Uint32)

Checks to see if certain event types are in the event queue.

$(
    if HasEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasEvent), r"^No documentation found.\n" => "")
    end
)
""" HasEvent
end

if isdefined(@__MODULE__, Symbol("Texture"))
    @eval @doc """
    Texture

An efficient driver-specific representation of pixel data

$(
    if Texture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Texture), r"^No documentation found.\n" => "")
    end
)
""" Texture
end

if isdefined(@__MODULE__, Symbol("SetWindowBrightness"))
    @eval @doc """
    SetWindowBrightness(Window *, float)

Set the brightness (gamma correction) for a window.

Return 0 on success, or -1 if setting the brightness isn't supported.

 - `GetWindowBrightness()`
 - `SetWindowGammaRamp()`

$(
    if SetWindowBrightness === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowBrightness), r"^No documentation found.\n" => "")
    end
)
""" SetWindowBrightness
end

if isdefined(@__MODULE__, Symbol("SetSurfaceRLE"))
    @eval @doc """
    SetSurfaceRLE(Surface *, int)

Sets the RLE acceleration hint for a surface.

Return 0 on success, or -1 if the surface is not valid

!!!note

    If RLE is enabled, colorkey and alpha blending blits are much faster,
      but the surface must be locked before directly accessing the pixels.

$(
    if SetSurfaceRLE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetSurfaceRLE), r"^No documentation found.\n" => "")
    end
)
""" SetSurfaceRLE
end

if isdefined(@__MODULE__, Symbol("RenderReadPixels"))
    @eval @doc """
    RenderReadPixels(Renderer *, const Rect *, Uint32, void *, int)

Read pixels from the current rendering target.

param: renderer The renderer from which pixels should be read.
param: rect   A pointer to the rectangle to read, or NULL for the entire
              render target.
param: format The desired format of the pixel data, or 0 to use the format
              of the rendering target
param: pixels A pointer to be filled in with the pixel data
param: pitch  The pitch of the pixels parameter.

Return 0 on success, or -1 if pixel reading is not supported.

!!!warning

    This is a very slow operation, and should not be used frequently.

$(
    if RenderReadPixels === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderReadPixels), r"^No documentation found.\n" => "")
    end
)
""" RenderReadPixels
end

if isdefined(@__MODULE__, Symbol("HINT_AUDIO_CATEGORY"))
    @eval @doc """
    HINT_AUDIO_CATEGORY

 A variable controlling the audio category on iOS and Mac OS X

This variable can be set to the following values:

  "ambient"     - Use the AVAudioSessionCategoryAmbient audio category, will be muted by the phone mute switch (default)
  "playback"    - Use the AVAudioSessionCategoryPlayback category

For more information, see Apple's documentation:
https://developer.apple.com/library/content/documentation/Audio/Conceptual/AudioSessionProgrammingGuide/AudioSessionCategoriesandModes/AudioSessionCategoriesandModes.html

$(
    if HINT_AUDIO_CATEGORY === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_AUDIO_CATEGORY), r"^No documentation found.\n" => "")
    end
)
""" HINT_AUDIO_CATEGORY
end

if isdefined(@__MODULE__, Symbol("GetKeyFromScancode"))
    @eval @doc """
    GetKeyFromScancode(Scancode)

Get the key code corresponding to the given scancode according
       to the current keyboard layout.

See ::Keycode for details.

 - `GetKeyName()`

$(
    if GetKeyFromScancode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetKeyFromScancode), r"^No documentation found.\n" => "")
    end
)
""" GetKeyFromScancode
end

if isdefined(@__MODULE__, Symbol("CreateShapedWindow"))
    @eval @doc """
    CreateShapedWindow(const char *, unsigned int, unsigned int, unsigned int, unsigned int, Uint32)

Create a window that can be shaped with the specified position, dimensions, and flags.

param: title The title of the window, in UTF-8 encoding.
param: x     The x position of the window, ::WINDOWPOS_CENTERED, or
             ::WINDOWPOS_UNDEFINED.
param: y     The y position of the window, ::WINDOWPOS_CENTERED, or
             ::WINDOWPOS_UNDEFINED.
param: w     The width of the window.
param: h     The height of the window.
param: flags The flags for the window, a mask of WINDOW_BORDERLESS with any of the following:
             ::WINDOW_OPENGL,     ::WINDOW_INPUT_GRABBED,
             ::WINDOW_HIDDEN,     ::WINDOW_RESIZABLE,
             ::WINDOW_MAXIMIZED,  ::WINDOW_MINIMIZED,
     ::WINDOW_BORDERLESS is always set, and ::WINDOW_FULLSCREEN is always unset.

Return The window created, or NULL if window creation failed.

 - `DestroyWindow()`

$(
    if CreateShapedWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateShapedWindow), r"^No documentation found.\n" => "")
    end
)
""" CreateShapedWindow
end

if isdefined(@__MODULE__, Symbol("ControllerAxisEvent"))
    @eval @doc """
    ControllerAxisEvent

Game controller axis motion event structure (event.caxis.*)

$(
    if ControllerAxisEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ControllerAxisEvent), r"^No documentation found.\n" => "")
    end
)
""" ControllerAxisEvent
end

if isdefined(@__MODULE__, Symbol("SetRenderTarget"))
    @eval @doc """
    SetRenderTarget(Renderer *, Texture *)

Set a texture as the current rendering target.

param: renderer The renderer.
param: texture The targeted texture, which must be created with the TEXTUREACCESS_TARGET flag, or NULL for the default render target

Return 0 on success, or -1 on error

 - `GetRenderTarget()`

$(
    if SetRenderTarget === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetRenderTarget), r"^No documentation found.\n" => "")
    end
)
""" SetRenderTarget
end

if isdefined(@__MODULE__, Symbol("AtomicSetPtr"))
    @eval @doc """
    AtomicSetPtr(void **, void *)

Set a pointer to a value atomically.

Return The previous value of the pointer.

$(
    if AtomicSetPtr === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicSetPtr), r"^No documentation found.\n" => "")
    end
)
""" AtomicSetPtr
end

if isdefined(@__MODULE__, Symbol("SensorGetInstanceID"))
    @eval @doc """
    SensorGetInstanceID(Sensor *)

Get the instance ID of a sensor.

This can be called before any sensors are opened.

Return The sensor instance ID, or -1 if the sensor is NULL.

$(
    if SensorGetInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetInstanceID), r"^No documentation found.\n" => "")
    end
)
""" SensorGetInstanceID
end

if isdefined(@__MODULE__, Symbol("HINT_ENABLE_STEAM_CONTROLLERS"))
    @eval @doc """
    HINT_ENABLE_STEAM_CONTROLLERS

 A variable that controls whether Steam Controllers should be exposed using the SDL joystick and game controller APIs

The variable can be set to the following values:
  "0"       - Do not scan for Steam Controllers
  "1"       - Scan for Steam Controllers (the default)

The default value is "1".  This hint must be set before initializing the joystick subsystem.

$(
    if HINT_ENABLE_STEAM_CONTROLLERS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ENABLE_STEAM_CONTROLLERS), r"^No documentation found.\n" => "")
    end
)
""" HINT_ENABLE_STEAM_CONTROLLERS
end

if isdefined(@__MODULE__, Symbol("GetPerformanceCounter"))
    @eval @doc """
    GetPerformanceCounter()

Get the current value of the high resolution counter

$(
    if GetPerformanceCounter === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPerformanceCounter), r"^No documentation found.\n" => "")
    end
)
""" GetPerformanceCounter
end

if isdefined(@__MODULE__, Symbol("JoystickCurrentPowerLevel"))
    @eval @doc """
    JoystickCurrentPowerLevel(Joystick *)

Return the battery level of this joystick

$(
    if JoystickCurrentPowerLevel === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickCurrentPowerLevel), r"^No documentation found.\n" => "")
    end
)
""" JoystickCurrentPowerLevel
end

if isdefined(@__MODULE__, Symbol("HINT_BMP_SAVE_LEGACY_FORMAT"))
    @eval @doc """
    HINT_BMP_SAVE_LEGACY_FORMAT

Prevent SDL from using version 4 of the bitmap header when saving BMPs.

The bitmap header version 4 is required for proper alpha channel support and
SDL will use it when required. Should this not be desired, this hint can
force the use of the 40 byte header version which is supported everywhere.

The variable can be set to the following values:
 "0"       - Surfaces with a colorkey or an alpha channel are saved to a
             32-bit BMP file with an alpha mask. SDL will use the bitmap
             header version 4 and set the alpha mask accordingly.
 "1"       - Surfaces with a colorkey or an alpha channel are saved to a
             32-bit BMP file without an alpha mask. The alpha channel data
             will be in the file, but applications are going to ignore it.

The default value is "0".

$(
    if HINT_BMP_SAVE_LEGACY_FORMAT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_BMP_SAVE_LEGACY_FORMAT), r"^No documentation found.\n" => "")
    end
)
""" HINT_BMP_SAVE_LEGACY_FORMAT
end

if isdefined(@__MODULE__, Symbol("HINT_ANDROID_BLOCK_ON_PAUSE"))
    @eval @doc """
    HINT_ANDROID_BLOCK_ON_PAUSE

A variable to control whether the event loop will block itself when the app is paused.

The variable can be set to the following values:
 "0"       - Non blocking.
 "1"       - Blocking. (default)

The value should be set before SDL is initialized.

$(
    if HINT_ANDROID_BLOCK_ON_PAUSE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ANDROID_BLOCK_ON_PAUSE), r"^No documentation found.\n" => "")
    end
)
""" HINT_ANDROID_BLOCK_ON_PAUSE
end

if isdefined(@__MODULE__, Symbol("JoystickGetButton"))
    @eval @doc """
    JoystickGetButton(Joystick *, int)

Get the current state of a button on a joystick.

The button indices start at index 0.

$(
    if JoystickGetButton === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetButton), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetButton
end

if isdefined(@__MODULE__, Symbol("Keysym"))
    @eval @doc """
    Keysym

The SDL keysym structure, used in key events.

!!!note

     If you are looking for translated character input, see the ::TEXTINPUT event.

$(
    if Keysym === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Keysym), r"^No documentation found.\n" => "")
    end
)
""" Keysym
end

if isdefined(@__MODULE__, Symbol("JoyButtonEvent"))
    @eval @doc """
    JoyButtonEvent

Joystick button event structure (event.jbutton.*)

$(
    if JoyButtonEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoyButtonEvent), r"^No documentation found.\n" => "")
    end
)
""" JoyButtonEvent
end

if isdefined(@__MODULE__, Symbol("GameControllerAddMapping"))
    @eval @doc """
    GameControllerAddMapping(const char *)

Add or update an existing mapping configuration

Return 1 if mapping is added, 0 if updated, -1 on error

$(
    if GameControllerAddMapping === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerAddMapping), r"^No documentation found.\n" => "")
    end
)
""" GameControllerAddMapping
end

if isdefined(@__MODULE__, Symbol("GetTextureColorMod"))
    @eval @doc """
    GetTextureColorMod(Texture *, Uint8 *, Uint8 *, Uint8 *)

Get the additional color value used in render copy operations.

param: texture The texture to query.
param: r         A pointer filled in with the current red color value.
param: g         A pointer filled in with the current green color value.
param: b         A pointer filled in with the current blue color value.

Return 0 on success, or -1 if the texture is not valid.

 - `SetTextureColorMod()`

$(
    if GetTextureColorMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTextureColorMod), r"^No documentation found.\n" => "")
    end
)
""" GetTextureColorMod
end

if isdefined(@__MODULE__, Symbol("TouchFingerEvent"))
    @eval @doc """
    TouchFingerEvent

Touch finger event structure (event.tfinger.*)

$(
    if TouchFingerEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TouchFingerEvent), r"^No documentation found.\n" => "")
    end
)
""" TouchFingerEvent
end

if isdefined(@__MODULE__, Symbol("RenderGetMetalCommandEncoder"))
    @eval @doc """
    RenderGetMetalCommandEncoder(Renderer *)

Get the Metal command encoder for the current frame

param: renderer The renderer to query

Return id<MTLRenderCommandEncoder> on success, or NULL if the renderer isn't a Metal renderer

 - `RenderGetMetalLayer()`

$(
    if RenderGetMetalCommandEncoder === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetMetalCommandEncoder), r"^No documentation found.\n" => "")
    end
)
""" RenderGetMetalCommandEncoder
end

if isdefined(@__MODULE__, Symbol("STANDARD_GRAVITY"))
    @eval @doc """
    STANDARD_GRAVITY

Accelerometer sensor

The accelerometer returns the current acceleration in SI meters per
second squared. This includes gravity, so a device at rest will have
an acceleration of STANDARD_GRAVITY straight down.

values[0]: Acceleration on the x axis
values[1]: Acceleration on the y axis
values[2]: Acceleration on the z axis

For phones held in portrait mode, the axes are defined as follows:
-X ... +X : left ... right
-Y ... +Y : bottom ... top
-Z ... +Z : farther ... closer

The axis data is not changed when the phone is rotated.

 - `GetDisplayOrientation()`

$(
    if STANDARD_GRAVITY === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc STANDARD_GRAVITY), r"^No documentation found.\n" => "")
    end
)
""" STANDARD_GRAVITY
end

if isdefined(@__MODULE__, Symbol("ResetAssertionReport"))
    @eval @doc """
    ResetAssertionReport()

Reset the list of all assertion failures.

Reset list of all assertions triggered.

 - `GetAssertionReport`

$(
    if ResetAssertionReport === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ResetAssertionReport), r"^No documentation found.\n" => "")
    end
)
""" ResetAssertionReport
end

if isdefined(@__MODULE__, Symbol("QueueAudio"))
    @eval @doc """
    QueueAudio(AudioDeviceID, const void *, Uint32)

Queue more audio on non-callback devices.

(If you are looking to retrieve queued audio from a non-callback capture
device, you want DequeueAudio() instead. This will return -1 to
signify an error if you use it with capture devices.)

SDL offers two ways to feed audio to the device: you can either supply a
callback that SDL triggers with some frequency to obtain more audio
(pull method), or you can supply no callback, and then SDL will expect
you to supply data at regular intervals (push method) with this function.

There are no limits on the amount of data you can queue, short of
exhaustion of address space. Queued data will drain to the device as
necessary without further intervention from you. If the device needs
audio but there is not enough queued, it will play silence to make up
the difference. This means you will have skips in your audio playback
if you aren't routinely queueing sufficient data.

This function copies the supplied data, so you are safe to free it when
the function returns. This function is thread-safe, but queueing to the
same device from two threads at once does not promise which buffer will
be queued first.

You may not queue audio on a device that is using an application-supplied
callback; doing so returns an error. You have to use the audio callback
or queue audio with this function, but not both.

You should not call LockAudio() on the device before queueing; SDL
handles locking internally for this function.

param: dev The device ID to which we will queue audio.
param: data The data to queue to the device for later playback.
param: len The number of bytes (not samples!) to which (data) points.
Return 0 on success, or -1 on error.

 - `GetQueuedAudioSize`
 - `ClearQueuedAudio`

$(
    if QueueAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc QueueAudio), r"^No documentation found.\n" => "")
    end
)
""" QueueAudio
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_DRIVER"))
    @eval @doc """
    HINT_RENDER_DRIVER

 A variable specifying which render driver to use.

If the application doesn't pick a specific renderer to use, this variable
specifies the name of the preferred renderer.  If the preferred renderer
can't be initialized, the normal default renderer is used.

This variable is case insensitive and can be set to the following values:
  "direct3d"
  "opengl"
  "opengles2"
  "opengles"
  "metal"
  "software"

The default varies by platform, but it's the first one in the list that
is available on the current platform.

$(
    if HINT_RENDER_DRIVER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_DRIVER), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_DRIVER
end

if isdefined(@__MODULE__, Symbol("RenderDrawPointF"))
    @eval @doc """
    RenderDrawPointF(Renderer *, float, float)

Draw a point on the current rendering target.

param: renderer The renderer which should draw a point.
param: x The x coordinate of the point.
param: y The y coordinate of the point.

Return 0 on success, or -1 on error

$(
    if RenderDrawPointF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawPointF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawPointF
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS"))
    @eval @doc """
    HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS

Minimize your Window if it loses key focus when in fullscreen mode. Defaults to true.


$(
    if HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS
end

if isdefined(@__MODULE__, Symbol("SetThreadPriority"))
    @eval @doc """
    SetThreadPriority(ThreadPriority)

Set the priority for the current thread

$(
    if SetThreadPriority === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetThreadPriority), r"^No documentation found.\n" => "")
    end
)
""" SetThreadPriority
end

if isdefined(@__MODULE__, Symbol("RWsize"))
    @eval @doc """
    RWsize(RWops *)

Return the size of the file in this rwops, or -1 if unknown

$(
    if RWsize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWsize), r"^No documentation found.\n" => "")
    end
)
""" RWsize
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_ALLOW_SCREENSAVER"))
    @eval @doc """
    HINT_VIDEO_ALLOW_SCREENSAVER

 A variable controlling whether the screensaver is enabled. 

This variable can be set to the following values:
  "0"       - Disable screensaver
  "1"       - Enable screensaver

By default SDL will disable the screensaver.

$(
    if HINT_VIDEO_ALLOW_SCREENSAVER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_ALLOW_SCREENSAVER), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_ALLOW_SCREENSAVER
end

if isdefined(@__MODULE__, Symbol("SetMemoryFunctions"))
    @eval @doc """
    SetMemoryFunctions(malloc_func, calloc_func, realloc_func, free_func)

Replace SDL's memory allocation functions with a custom set

!!!note

    If you are replacing SDL's memory functions, you should call
      GetNumAllocations() and be very careful if it returns non-zero.
      That means that your free function will be called with memory
      allocated by the previous memory allocation functions.

$(
    if SetMemoryFunctions === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetMemoryFunctions), r"^No documentation found.\n" => "")
    end
)
""" SetMemoryFunctions
end

if isdefined(@__MODULE__, Symbol("Vulkan_GetInstanceExtensions"))
    @eval @doc """
    Vulkan_GetInstanceExtensions(Window *, unsigned int *, const char **)

Get the names of the Vulkan instance extensions needed to create
       a surface with `Vulkan_CreateSurface().

:param` [in]     `NULL` or window Window for which the required Vulkan instance
                extensions should be retrieved
param: [in,out] pCount pointer to an `unsigned` related to the number of
                required Vulkan instance extensions
param: [out]    pNames `NULL` or a pointer to an array to be filled with the
                required Vulkan instance extensions

Return `TRUE` on success, `FALSE` on error.

If :a pNames is `NULL,` then the number of required Vulkan instance
extensions is returned in pCount. Otherwise, :a pCount must point to a
variable set to the number of elements in the :a pNames array, and on
return the variable is overwritten with the number of names actually
written to :a pNames. If :a pCount is less than the number of required
extensions, at most :a pCount structures will be written. If :a pCount
is smaller than the number of required extensions, `FALSE` will be
returned instead of `TRUE,` to indicate that not all the required
extensions were returned.

!!!note

    If `window` is not NULL, it will be checked against its creation
      flags to ensure that the Vulkan flag is present. This parameter
      will be removed in a future major release.

!!!note

    The returned list of extensions will contain `VK_KHR_surface
`      and zero or more platform specific extensions

!!!note

    The extension names queried here must be enabled when calling
      VkCreateInstance, otherwise surface creation will fail.

!!!note

    `window` should have been created with the `WINDOW_VULKAN` flag
      or be `NULL

```C
unsigned` int count;
// get count of required extensions
if(!Vulkan_GetInstanceExtensions(NULL, &count, NULL))
    handle_error();

static const char *const additionalExtensions[] =
{
    VK_EXT_DEBUG_REPORT_EXTENSION_NAME, // example additional extension
};
size_t additionalExtensionsCount = sizeof(additionalExtensions) / sizeof(additionalExtensions[0]);
size_t extensionCount = count + additionalExtensionsCount;
const char **names = malloc(sizeof(const char *) * extensionCount);
if(!names)
    handle_error();

// get names of required extensions
if(!Vulkan_GetInstanceExtensions(NULL, &count, names))
    handle_error();

// copy additional extensions after required extensions
for(size_t i = 0; i < additionalExtensionsCount; i++)
    names[i + count] = additionalExtensions[i];

VkInstanceCreateInfo instanceCreateInfo = {};
instanceCreateInfo.enabledExtensionCount = extensionCount;
instanceCreateInfo.ppEnabledExtensionNames = names;
// fill in rest of instanceCreateInfo

VkInstance instance;
// create the Vulkan instance
VkResult result = vkCreateInstance(&instanceCreateInfo, NULL, &instance);
free(names);
```

 - `Vulkan_CreateSurface()`

$(
    if Vulkan_GetInstanceExtensions === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_GetInstanceExtensions), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_GetInstanceExtensions
end

if isdefined(@__MODULE__, Symbol("SetRenderDrawBlendMode"))
    @eval @doc """
    SetRenderDrawBlendMode(Renderer *, BlendMode)

Set the blend mode used for drawing operations (Fill and Line).

param: renderer The renderer for which blend mode should be set.
param: blendMode ::BlendMode to use for blending.

Return 0 on success, or -1 on error

!!!note

    If the blend mode is not supported, the closest supported mode is
      chosen.

 - `GetRenderDrawBlendMode()`

$(
    if SetRenderDrawBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetRenderDrawBlendMode), r"^No documentation found.\n" => "")
    end
)
""" SetRenderDrawBlendMode
end

if isdefined(@__MODULE__, Symbol("MAX_SINT16"))
    @eval @doc """
    MAX_SINT16

A signed 16-bit integer type.

$(
    if MAX_SINT16 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_SINT16), r"^No documentation found.\n" => "")
    end
)
""" MAX_SINT16
end

if isdefined(@__MODULE__, Symbol("RenderDrawLine"))
    @eval @doc """
    RenderDrawLine(Renderer *, int, int, int, int)

Draw a line on the current rendering target.

param: renderer The renderer which should draw a line.
param: x1 The x coordinate of the start point.
param: y1 The y coordinate of the start point.
param: x2 The x coordinate of the end point.
param: y2 The y coordinate of the end point.

Return 0 on success, or -1 on error

$(
    if RenderDrawLine === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawLine), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawLine
end

if isdefined(@__MODULE__, Symbol("GL_ResetAttributes"))
    @eval @doc """
    GL_ResetAttributes()

Reset all previously set OpenGL context attributes to their default values

$(
    if GL_ResetAttributes === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_ResetAttributes), r"^No documentation found.\n" => "")
    end
)
""" GL_ResetAttributes
end

if isdefined(@__MODULE__, Symbol("MixAudio"))
    @eval @doc """
    MixAudio(Uint8 *, const Uint8 *, Uint32, int)

This takes two audio buffers of the playing audio format and mixes
them, performing addition, volume adjustment, and overflow clipping.
The volume ranges from 0 - 128, and should be set to ::MIX_MAXVOLUME
for full audio volume.  Note this does not change hardware volume.
This is provided for convenience -- you can mix your own audio data.

$(
    if MixAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MixAudio), r"^No documentation found.\n" => "")
    end
)
""" MixAudio
end

if isdefined(@__MODULE__, Symbol("HINT_TV_REMOTE_AS_JOYSTICK"))
    @eval @doc """
    HINT_TV_REMOTE_AS_JOYSTICK

 A variable controlling whether the Android / tvOS remotes
should be listed as joystick devices, instead of sending keyboard events.

This variable can be set to the following values:
  "0"       - Remotes send enter/escape/arrow key events
  "1"       - Remotes are available as 2 axis, 2 button joysticks (the default).

$(
    if HINT_TV_REMOTE_AS_JOYSTICK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_TV_REMOTE_AS_JOYSTICK), r"^No documentation found.\n" => "")
    end
)
""" HINT_TV_REMOTE_AS_JOYSTICK
end

if isdefined(@__MODULE__, Symbol("HapticEffectSupported"))
    @eval @doc """
    HapticEffectSupported(Haptic *, HapticEffect *)

Checks to see if effect is supported by haptic.

param: haptic Haptic device to check on.
param: effect Effect to check to see if it is supported.
Return TRUE if effect is supported, FALSE if it isn't or -1 on error.

 - `HapticQuery`
 - `HapticNewEffect`

$(
    if HapticEffectSupported === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticEffectSupported), r"^No documentation found.\n" => "")
    end
)
""" HapticEffectSupported
end

if isdefined(@__MODULE__, Symbol("SetWindowHitTest"))
    @eval @doc """
    SetWindowHitTest(Window *, HitTest, void *)

Provide a callback that decides if a window region has special properties.

Normally windows are dragged and resized by decorations provided by the
system window manager (a title bar, borders, etc), but for some apps, it
makes sense to drag them from somewhere else inside the window itself; for
example, one might have a borderless window that wants to be draggable
from any part, or simulate its own title bar, etc.

This function lets the app provide a callback that designates pieces of
a given window as special. This callback is run during event processing
if we need to tell the OS to treat a region of the window specially; the
use of this callback is known as "hit testing."

Mouse input may not be delivered to your application if it is within
a special area; the OS will often apply that input to moving the window or
resizing the window and not deliver it to the application.

Specifying NULL for a callback disables hit-testing. Hit-testing is
disabled by default.

Platforms that don't support this functionality will return -1
unconditionally, even if you're attempting to disable hit-testing.

Your callback may fire at any time, and its firing does not indicate any
specific behavior (for example, on Windows, this certainly might fire
when the OS is deciding whether to drag your window, but it fires for lots
of other reasons, too, some unrelated to anything you probably care about
_and when the mouse isn't actually at the location it is testing_).
Since this can fire at any time, you should try to keep your callback
efficient, devoid of allocations, etc.

param: window The window to set hit-testing on.
param: callback The callback to call when doing a hit-test.
param: callback_data An app-defined void pointer passed to the callback.
Return 0 on success, -1 on error (including unsupported).

$(
    if SetWindowHitTest === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowHitTest), r"^No documentation found.\n" => "")
    end
)
""" SetWindowHitTest
end

if isdefined(@__MODULE__, Symbol("RenderCopyExF"))
    @eval @doc """
    RenderCopyExF(Renderer *, Texture *, const Rect *, const FRect *, const double, const FPoint *, const RendererFlip)

Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center

param: renderer The renderer which should copy parts of a texture.
param: texture The source texture.
param: srcrect   A pointer to the source rectangle, or NULL for the entire
                 texture.
param: dstrect   A pointer to the destination rectangle, or NULL for the
                 entire rendering target.
param: angle    An angle in degrees that indicates the rotation that will be applied to dstrect, rotating it in a clockwise direction
param: center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done around dstrect.w/2, dstrect.h/2).
param: flip     An RendererFlip value stating which flipping actions should be performed on the texture

Return 0 on success, or -1 on error

$(
    if RenderCopyExF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderCopyExF), r"^No documentation found.\n" => "")
    end
)
""" RenderCopyExF
end

if isdefined(@__MODULE__, Symbol("mutexP"))
    @eval @doc """
    mutexP

Lock the mutex.

Return 0, or -1 on error.

$(
    if mutexP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc mutexP), r"^No documentation found.\n" => "")
    end
)
""" mutexP
end

if isdefined(@__MODULE__, Symbol("QuitSubSystem"))
    @eval @doc """
    QuitSubSystem(Uint32)

This function cleans up specific SDL subsystems

$(
    if QuitSubSystem === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc QuitSubSystem), r"^No documentation found.\n" => "")
    end
)
""" QuitSubSystem
end

if isdefined(@__MODULE__, Symbol("Surface"))
    @eval @doc """
    Surface

A collection of pixels used in software blitting.

!!!note

     This structure should be treated as read-only, except for `pixels,
`      which, if not NULL, contains the raw pixel data for the surface.

$(
    if Surface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Surface), r"^No documentation found.\n" => "")
    end
)
""" Surface
end

if isdefined(@__MODULE__, Symbol("STRINGIFY_ARG"))
    @eval @doc """
    STRINGIFY_ARG

Macro useful for building other macros with strings in them

e.g. #define LOG_ERROR(X) OutputDebugString(STRINGIFY_ARG(__FUNCTION__) ": " X ":n")

$(
    if STRINGIFY_ARG === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc STRINGIFY_ARG), r"^No documentation found.\n" => "")
    end
)
""" STRINGIFY_ARG
end

if isdefined(@__MODULE__, Symbol("SensorGetName"))
    @eval @doc """
    SensorGetName(Sensor *)

Get the implementation dependent name of a sensor.

Return The sensor name, or NULL if the sensor is NULL.

$(
    if SensorGetName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetName), r"^No documentation found.\n" => "")
    end
)
""" SensorGetName
end

if isdefined(@__MODULE__, Symbol("HapticOpenFromJoystick"))
    @eval @doc """
    HapticOpenFromJoystick(Joystick *)

Opens a haptic device for use from a joystick device.

You must still close the haptic device separately.  It will not be closed
with the joystick.

When opening from a joystick you should first close the haptic device before
closing the joystick device.  If not, on some implementations the haptic
device will also get unallocated and you'll be unable to use force feedback
on that device.

param: joystick Joystick to create a haptic device from.
Return A valid haptic device identifier on success or NULL on error.

 - `HapticOpen`
 - `HapticClose`

$(
    if HapticOpenFromJoystick === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticOpenFromJoystick), r"^No documentation found.\n" => "")
    end
)
""" HapticOpenFromJoystick
end

if isdefined(@__MODULE__, Symbol("GetYUVConversionModeForResolution"))
    @eval @doc """
    GetYUVConversionModeForResolution(int, int)

Get the YUV conversion mode, returning the correct mode for the resolution when the current conversion mode is YUV_CONVERSION_AUTOMATIC

$(
    if GetYUVConversionModeForResolution === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetYUVConversionModeForResolution), r"^No documentation found.\n" => "")
    end
)
""" GetYUVConversionModeForResolution
end

if isdefined(@__MODULE__, Symbol("Quit"))
    @eval @doc """
    Quit()

This function cleans up all initialized subsystems. You should
call it upon all exit conditions.

$(
    if Quit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Quit), r"^No documentation found.\n" => "")
    end
)
""" Quit
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_BATCHING"))
    @eval @doc """
    HINT_RENDER_BATCHING

 A variable controlling whether the 2D render API is compatible or efficient.

This variable can be set to the following values:

  "0"     - Don't use batching to make rendering more efficient.
  "1"     - Use batching, but might cause problems if app makes its own direct OpenGL calls.

Up to SDL 2.0.9, the render API would draw immediately when requested. Now
it batches up draw requests and sends them all to the GPU only when forced
to (during RenderPresent, when changing render targets, by updating a
texture that the batch needs, etc). This is significantly more efficient,
but it can cause problems for apps that expect to render on top of the
render API's output. As such, SDL will disable batching if a specific
render backend is requested (since this might indicate that the app is
planning to use the underlying graphics API directly). This hint can
be used to explicitly request batching in this instance. It is a contract
that you will either never use the underlying graphics API directly, or
if you do, you will call RenderFlush() before you do so any current
batch goes to the GPU before your work begins. Not following this contract
will result in undefined behavior.

$(
    if HINT_RENDER_BATCHING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_BATCHING), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_BATCHING
end

if isdefined(@__MODULE__, Symbol("GetKeyboardFocus"))
    @eval @doc """
    GetKeyboardFocus()

Get the window which currently has keyboard focus.

$(
    if GetKeyboardFocus === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetKeyboardFocus), r"^No documentation found.\n" => "")
    end
)
""" GetKeyboardFocus
end

if isdefined(@__MODULE__, Symbol("HINT_WINDOWS_DISABLE_THREAD_NAMING"))
    @eval @doc """
    HINT_WINDOWS_DISABLE_THREAD_NAMING

Tell SDL not to name threads on Windows with the 0x406D1388 Exception.
      The 0x406D1388 Exception is a trick used to inform Visual Studio of a
      thread's name, but it tends to cause problems with other debuggers,
      and the .NET runtime. Note that SDL 2.0.6 and later will still use
      the (safer) SetThreadDescription API, introduced in the Windows 10
      Creators Update, if available.

The variable can be set to the following values:
 "0"       - SDL will raise the 0x406D1388 Exception to name threads.
             This is the default behavior of SDL <= 2.0.4.
 "1"       - SDL will not raise this exception, and threads will be unnamed. (default)
             This is necessary with .NET languages or debuggers that aren't Visual Studio.

$(
    if HINT_WINDOWS_DISABLE_THREAD_NAMING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINDOWS_DISABLE_THREAD_NAMING), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINDOWS_DISABLE_THREAD_NAMING
end

if isdefined(@__MODULE__, Symbol("RWread"))
    @eval @doc """
    RWread(RWops *, void *, size_t, size_t)

Read up to `maxnum` objects each of size `size` from the data
stream to the area pointed at by `ptr.

:return` the number of objects read, or 0 at error or end of file.

$(
    if RWread === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWread), r"^No documentation found.\n" => "")
    end
)
""" RWread
end

if isdefined(@__MODULE__, Symbol("CreateSystemCursor"))
    @eval @doc """
    CreateSystemCursor(SystemCursor)

Create a system cursor.

 - `FreeCursor()`

$(
    if CreateSystemCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateSystemCursor), r"^No documentation found.\n" => "")
    end
)
""" CreateSystemCursor
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_GAMECUBE"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_GAMECUBE

 A variable controlling whether the HIDAPI driver for Nintendo GameCube controllers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI driver is not used
  "1"       - HIDAPI driver is used

The default is the value of HINT_JOYSTICK_HIDAPI

$(
    if HINT_JOYSTICK_HIDAPI_GAMECUBE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_GAMECUBE), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_GAMECUBE
end

if isdefined(@__MODULE__, Symbol("MemoryBarrierReleaseFunction"))
    @eval @doc """
    MemoryBarrierReleaseFunction()

Memory barriers are designed to prevent reads and writes from being
reordered by the compiler and being seen out of order on multi-core CPUs.

A typical pattern would be for thread A to write some data and a flag,
and for thread B to read the flag and get the data. In this case you
would insert a release barrier between writing the data and the flag,
guaranteeing that the data write completes no later than the flag is
written, and you would insert an acquire barrier between reading the
flag and reading the data, to ensure that all the reads associated
with the flag have completed.

In this pattern you should always see a release barrier paired with
an acquire barrier and you should gate the data reads/writes with a
single flag variable.

For more information on these semantics, take a look at the blog post:
http://preshing.com/20120913/acquire-and-release-semantics

$(
    if MemoryBarrierReleaseFunction === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MemoryBarrierReleaseFunction), r"^No documentation found.\n" => "")
    end
)
""" MemoryBarrierReleaseFunction
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_MAC_FULLSCREEN_SPACES"))
    @eval @doc """
    HINT_VIDEO_MAC_FULLSCREEN_SPACES

 A variable that dictates policy for fullscreen Spaces on Mac OS X.

This hint only applies to Mac OS X.

The variable can be set to the following values:
  "0"       - Disable Spaces support (FULLSCREEN_DESKTOP won't use them and
              WINDOW_RESIZABLE windows won't offer the "fullscreen"
              button on their titlebars).
  "1"       - Enable Spaces support (FULLSCREEN_DESKTOP will use them and
              WINDOW_RESIZABLE windows will offer the "fullscreen"
              button on their titlebars).

The default value is "1". Spaces are disabled regardless of this hint if
 the OS isn't at least Mac OS X Lion (10.7). This hint must be set before
 any windows are created.

$(
    if HINT_VIDEO_MAC_FULLSCREEN_SPACES === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_MAC_FULLSCREEN_SPACES), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_MAC_FULLSCREEN_SPACES
end

if isdefined(@__MODULE__, Symbol("MAX_UINT16"))
    @eval @doc """
    MAX_UINT16

An unsigned 16-bit integer type.

$(
    if MAX_UINT16 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_UINT16), r"^No documentation found.\n" => "")
    end
)
""" MAX_UINT16
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR"))
    @eval @doc """
    HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR

A variable controlling whether the X11 _NET_WM_BYPASS_COMPOSITOR hint should be used.

This variable can be set to the following values:
"0" - Disable _NET_WM_BYPASS_COMPOSITOR
"1" - Enable _NET_WM_BYPASS_COMPOSITOR

By default SDL will use _NET_WM_BYPASS_COMPOSITOR


$(
    if HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR
end

if isdefined(@__MODULE__, Symbol("RenderDrawLinesF"))
    @eval @doc """
    RenderDrawLinesF(Renderer *, const FPoint *, int)

Draw a series of connected lines on the current rendering target.

param: renderer The renderer which should draw multiple lines.
param: points The points along the lines
param: count The number of points, drawing count-1 lines

Return 0 on success, or -1 on error

$(
    if RenderDrawLinesF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawLinesF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawLinesF
end

if isdefined(@__MODULE__, Symbol("GL_SetAttribute"))
    @eval @doc """
    GL_SetAttribute(GLattr, int)

Set an OpenGL window attribute before window creation.

Return 0 on success, or -1 if the attribute could not be set.

$(
    if GL_SetAttribute === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_SetAttribute), r"^No documentation found.\n" => "")
    end
)
""" GL_SetAttribute
end

if isdefined(@__MODULE__, Symbol("GameControllerName"))
    @eval @doc """
    GameControllerName(GameController *)

Return the name for this currently opened controller

$(
    if GameControllerName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerName), r"^No documentation found.\n" => "")
    end
)
""" GameControllerName
end

if isdefined(@__MODULE__, Symbol("HINT_FRAMEBUFFER_ACCELERATION"))
    @eval @doc """
    HINT_FRAMEBUFFER_ACCELERATION

 A variable controlling how 3D acceleration is used to accelerate the SDL screen surface.

SDL can try to accelerate the SDL screen surface by using streaming
textures with a 3D rendering engine.  This variable controls whether and
how this is done.

This variable can be set to the following values:
  "0"       - Disable 3D acceleration
  "1"       - Enable 3D acceleration, using the default renderer.
  "X"       - Enable 3D acceleration, using X where X is one of the valid rendering drivers.  (e.g. "direct3d", "opengl", etc.)

By default SDL tries to make a best guess for each platform whether
to use acceleration or not.

$(
    if HINT_FRAMEBUFFER_ACCELERATION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_FRAMEBUFFER_ACCELERATION), r"^No documentation found.\n" => "")
    end
)
""" HINT_FRAMEBUFFER_ACCELERATION
end

if isdefined(@__MODULE__, Symbol("GameControllerGetStringForButton"))
    @eval @doc """
    GameControllerGetStringForButton(GameControllerButton)

turn this button enum into a string mapping

$(
    if GameControllerGetStringForButton === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetStringForButton), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetStringForButton
end

if isdefined(@__MODULE__, Symbol("MultiGestureEvent"))
    @eval @doc """
    MultiGestureEvent

Multiple Finger Gesture Event (event.mgesture.*)

$(
    if MultiGestureEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MultiGestureEvent), r"^No documentation found.\n" => "")
    end
)
""" MultiGestureEvent
end

if isdefined(@__MODULE__, Symbol("SysWMinfo"))
    @eval @doc """
    SysWMinfo

The custom window manager information structure.

When this structure is returned, it holds information about which
low level system it is using, and will be one of SYSWM_TYPE.

$(
    if SysWMinfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SysWMinfo), r"^No documentation found.\n" => "")
    end
)
""" SysWMinfo
end

if isdefined(@__MODULE__, Symbol("MapRGB"))
    @eval @doc """
    MapRGB(const PixelFormat *, Uint8, Uint8, Uint8)

Maps an RGB triple to an opaque pixel value for a given pixel format.

 - `MapRGBA`

$(
    if MapRGB === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MapRGB), r"^No documentation found.\n" => "")
    end
)
""" MapRGB
end

if isdefined(@__MODULE__, Symbol("HapticRamp"))
    @eval @doc """
    HapticRamp

A structure containing a template for a Ramp effect.

This struct is exclusively for the ::HAPTIC_RAMP effect.

The ramp effect starts at start strength and ends at end strength.
It augments in linear fashion.  If you use attack and fade with a ramp
the effects get added to the ramp effect making the effect become
quadratic instead of linear.

 - `HAPTIC_RAMP`
 - `HapticEffect`

$(
    if HapticRamp === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRamp), r"^No documentation found.\n" => "")
    end
)
""" HapticRamp
end

if isdefined(@__MODULE__, Symbol("UnionRect"))
    @eval @doc """
    UnionRect(const Rect *, const Rect *, Rect *)

Calculate the union of two rectangles.

$(
    if UnionRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UnionRect), r"^No documentation found.\n" => "")
    end
)
""" UnionRect
end

if isdefined(@__MODULE__, Symbol("SetWindowInputFocus"))
    @eval @doc """
    SetWindowInputFocus(Window *)

Explicitly sets input focus to the window.

You almost certainly want RaiseWindow() instead of this function. Use
this with caution, as you might give focus to a window that's completely
obscured by other windows.

param: window The window that should get the input focus

Return 0 on success, or -1 otherwise.
 - `RaiseWindow()`

$(
    if SetWindowInputFocus === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowInputFocus), r"^No documentation found.\n" => "")
    end
)
""" SetWindowInputFocus
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_EXTERNAL_CONTEXT"))
    @eval @doc """
    HINT_VIDEO_EXTERNAL_CONTEXT

A variable controlling whether the graphics context is externally managed.

This variable can be set to the following values:
"0"         - SDL will manage graphics contexts that are attached to windows.
"1"         - Disable graphics context management on windows.

By default SDL will manage OpenGL contexts in certain situations. For example, on Android the
context will be automatically saved and restored when pausing the application. Additionally, some
platforms will assume usage of OpenGL if Vulkan isn't used. Setting this to "1" will prevent this
behavior, which is desireable when the application manages the graphics context, such as
an externally managed OpenGL context or attaching a Vulkan surface to the window.

$(
    if HINT_VIDEO_EXTERNAL_CONTEXT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_EXTERNAL_CONTEXT), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_EXTERNAL_CONTEXT
end

if isdefined(@__MODULE__, Symbol("GL_GetProcAddress"))
    @eval @doc """
    GL_GetProcAddress(const char *)

Get the address of an OpenGL function.

$(
    if GL_GetProcAddress === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetProcAddress), r"^No documentation found.\n" => "")
    end
)
""" GL_GetProcAddress
end

if isdefined(@__MODULE__, Symbol("Window"))
    @eval @doc """
    Window

The type used to identify a window

 - `CreateWindow()`
 - `CreateWindowFrom()`
 - `DestroyWindow()`
 - `GetWindowData()`
 - `GetWindowFlags()`
 - `GetWindowGrab()`
 - `GetWindowPosition()`
 - `GetWindowSize()`
 - `GetWindowTitle()`
 - `HideWindow()`
 - `MaximizeWindow()`
 - `MinimizeWindow()`
 - `RaiseWindow()`
 - `RestoreWindow()`
 - `SetWindowData()`
 - `SetWindowFullscreen()`
 - `SetWindowGrab()`
 - `SetWindowIcon()`
 - `SetWindowPosition()`
 - `SetWindowSize()`
 - `SetWindowBordered()`
 - `SetWindowResizable()`
 - `SetWindowTitle()`
 - `ShowWindow()`

$(
    if Window === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Window), r"^No documentation found.\n" => "")
    end
)
""" Window
end

if isdefined(@__MODULE__, Symbol("HAPTIC_FRICTION"))
    @eval @doc """
    HAPTIC_FRICTION

Friction effect supported - uses axes movement.

Condition haptic effect that simulates friction.  Effect is based on the
axes movement.

 - `HapticCondition`

$(
    if HAPTIC_FRICTION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_FRICTION), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_FRICTION
end

if isdefined(@__MODULE__, Symbol("GetPlatform"))
    @eval @doc """
    GetPlatform()

Gets the name of the platform.

$(
    if GetPlatform === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPlatform), r"^No documentation found.\n" => "")
    end
)
""" GetPlatform
end

if isdefined(@__MODULE__, Symbol("StopTextInput"))
    @eval @doc """
    StopTextInput()

Stop receiving any text input events.
       This function will hide the on-screen keyboard if supported.

 - `StartTextInput()`
 - `HasScreenKeyboardSupport()`

$(
    if StopTextInput === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc StopTextInput), r"^No documentation found.\n" => "")
    end
)
""" StopTextInput
end

if isdefined(@__MODULE__, Symbol("AudioStreamGet"))
    @eval @doc """
    AudioStreamGet(AudioStream *, void *, int)

Get converted/resampled data from the stream

param: stream The stream the audio is being requested from
param: buf A buffer to fill with audio data
param: len The maximum number of bytes to fill
Return The number of bytes read from the stream, or -1 on error

 - `NewAudioStream`
 - `AudioStreamPut`
 - `AudioStreamAvailable`
 - `AudioStreamFlush`
 - `AudioStreamClear`
 - `FreeAudioStream`

$(
    if AudioStreamGet === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioStreamGet), r"^No documentation found.\n" => "")
    end
)
""" AudioStreamGet
end

if isdefined(@__MODULE__, Symbol("main_func"))
    @eval @doc """
    main_func

The prototype for the application's main() function

$(
    if main_func === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc main_func), r"^No documentation found.\n" => "")
    end
)
""" main_func
end

if isdefined(@__MODULE__, Symbol("CaptureMouse"))
    @eval @doc """
    CaptureMouse(bool)

Capture the mouse, to track input outside an SDL window.

param: enabled Whether or not to enable capturing

Capturing enables your app to obtain mouse events globally, instead of
just within your window. Not all video targets support this function.
When capturing is enabled, the current window will get all mouse events,
but unlike relative mode, no change is made to the cursor and it is
not restrained to your window.

This function may also deny mouse input to other windows--both those in
your application and others on the system--so you should use this
function sparingly, and in small bursts. For example, you might want to
track the mouse while the user is dragging something, until the user
releases a mouse button. It is not recommended that you capture the mouse
for long periods of time, such as the entire time your app is running.

While captured, mouse events still report coordinates relative to the
current (foreground) window, but those coordinates may be outside the
bounds of the window (including negative values). Capturing is only
allowed for the foreground window. If the window loses focus while
capturing, the capture will be disabled automatically.

While capturing is enabled, the current window will have the
WINDOW_MOUSE_CAPTURE flag set.

Return 0 on success, or -1 if not supported.

$(
    if CaptureMouse === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CaptureMouse), r"^No documentation found.\n" => "")
    end
)
""" CaptureMouse
end

if isdefined(@__MODULE__, Symbol("HasARMSIMD"))
    @eval @doc """
    HasARMSIMD()

This function returns true if the CPU has ARM SIMD (ARMv6) features.

$(
    if HasARMSIMD === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasARMSIMD), r"^No documentation found.\n" => "")
    end
)
""" HasARMSIMD
end

if isdefined(@__MODULE__, Symbol("UpdateWindowSurface"))
    @eval @doc """
    UpdateWindowSurface(Window *)

Copy the window surface to the screen.

Return 0 on success, or -1 on error.

 - `GetWindowSurface()`
 - `UpdateWindowSurfaceRects()`

$(
    if UpdateWindowSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpdateWindowSurface), r"^No documentation found.\n" => "")
    end
)
""" UpdateWindowSurface
end

if isdefined(@__MODULE__, Symbol("UpdateTexture"))
    @eval @doc """
    UpdateTexture(Texture *, const Rect *, const void *, int)

Update the given texture rectangle with new pixel data.

param: texture   The texture to update
param: rect      A pointer to the rectangle of pixels to update, or NULL to
                 update the entire texture.
param: pixels    The raw pixel data in the format of the texture.
param: pitch     The number of bytes in a row of pixel data, including padding between lines.

The pixel data must be in the format of the texture. The pixel format can be
queried with QueryTexture.

Return 0 on success, or -1 if the texture is not valid.

!!!note

    This is a fairly slow function.

$(
    if UpdateTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpdateTexture), r"^No documentation found.\n" => "")
    end
)
""" UpdateTexture
end

if isdefined(@__MODULE__, Symbol("JoystickID"))
    @eval @doc """
    JoystickID

This is a unique ID for a joystick for the time it is connected to the system,
and is never reused for the lifetime of the application. If the joystick is
disconnected and reconnected, it will get a new ID.

The ID value starts at 0 and increments from there. The value -1 is an invalid ID.

$(
    if JoystickID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickID), r"^No documentation found.\n" => "")
    end
)
""" JoystickID
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_XBOX"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_XBOX

 A variable controlling whether the HIDAPI driver for XBox controllers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI driver is not used
  "1"       - HIDAPI driver is used

The default is the value of HINT_JOYSTICK_HIDAPI

$(
    if HINT_JOYSTICK_HIDAPI_XBOX === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_XBOX), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_XBOX
end

if isdefined(@__MODULE__, Symbol("SetTextureScaleMode"))
    @eval @doc """
    SetTextureScaleMode(Texture *, ScaleMode)

Set the scale mode used for texture scale operations.

param: texture The texture to update.
param: scaleMode ::ScaleMode to use for texture scaling.

Return 0 on success, or -1 if the texture is not valid.

!!!note

    If the scale mode is not supported, the closest supported mode is
      chosen.

 - `GetTextureScaleMode()`

$(
    if SetTextureScaleMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetTextureScaleMode), r"^No documentation found.\n" => "")
    end
)
""" SetTextureScaleMode
end

if isdefined(@__MODULE__, Symbol("GetWindowBrightness"))
    @eval @doc """
    GetWindowBrightness(Window *)

Get the brightness (gamma correction) for a window.

Return The last brightness value passed to SetWindowBrightness()

 - `SetWindowBrightness()`

$(
    if GetWindowBrightness === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowBrightness), r"^No documentation found.\n" => "")
    end
)
""" GetWindowBrightness
end

if isdefined(@__MODULE__, Symbol("RenderIsClipEnabled"))
    @eval @doc """
    RenderIsClipEnabled(Renderer *)

Get whether clipping is enabled on the given renderer.

param: renderer The renderer from which clip state should be queried.

 - `RenderGetClipRect()`

$(
    if RenderIsClipEnabled === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderIsClipEnabled), r"^No documentation found.\n" => "")
    end
)
""" RenderIsClipEnabled
end

if isdefined(@__MODULE__, Symbol("HINT_WINRT_PRIVACY_POLICY_LABEL"))
    @eval @doc """
    HINT_WINRT_PRIVACY_POLICY_LABEL


Network-enabled WinRT apps must include a privacy policy.  On Windows 8, 8.1, and RT,
Microsoft mandates that this policy be available via the Windows Settings charm.
SDL provides code to add a link there, with its label text being set via the
optional hint, HINT_WINRT_PRIVACY_POLICY_LABEL.

Please note that a privacy policy's contents are not set via this hint.  A separate
hint, HINT_WINRT_PRIVACY_POLICY_URL, is used to link to the actual text of the
policy.

The contents of this hint should be encoded as a UTF8 string.

The default value is "Privacy Policy".  This hint should only be set during app
initialization, preferably before any calls to Init().

For additional information on linking to a privacy policy, see the documentation for
HINT_WINRT_PRIVACY_POLICY_URL.

$(
    if HINT_WINRT_PRIVACY_POLICY_LABEL === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINRT_PRIVACY_POLICY_LABEL), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINRT_PRIVACY_POLICY_LABEL
end

if isdefined(@__MODULE__, Symbol("JoystickFromInstanceID"))
    @eval @doc """
    JoystickFromInstanceID(JoystickID)

Return the Joystick associated with an instance id.

$(
    if JoystickFromInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickFromInstanceID), r"^No documentation found.\n" => "")
    end
)
""" JoystickFromInstanceID
end

if isdefined(@__MODULE__, Symbol("FlushEvent"))
    @eval @doc """
    FlushEvent(Uint32)

This function clears events from the event queue
This function only affects currently queued events. If you want to make
sure that all pending OS events are flushed, you can call PumpEvents()
on the main thread immediately before the flush call.

$(
    if FlushEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FlushEvent), r"^No documentation found.\n" => "")
    end
)
""" FlushEvent
end

if isdefined(@__MODULE__, Symbol("AudioStreamClear"))
    @eval @doc """
    AudioStreamClear(AudioStream *)

Clear any pending data in the stream without converting it

 - `NewAudioStream`
 - `AudioStreamPut`
 - `AudioStreamGet`
 - `AudioStreamAvailable`
 - `AudioStreamFlush`
 - `FreeAudioStream`

$(
    if AudioStreamClear === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioStreamClear), r"^No documentation found.\n" => "")
    end
)
""" AudioStreamClear
end

if isdefined(@__MODULE__, Symbol("HINT_IOS_HIDE_HOME_INDICATOR"))
    @eval @doc """
    HINT_IOS_HIDE_HOME_INDICATOR

 A variable controlling whether the home indicator bar on iPhone X
       should be hidden.

This variable can be set to the following values:
  "0"       - The indicator bar is not hidden (default for windowed applications)
  "1"       - The indicator bar is hidden and is shown when the screen is touched (useful for movie playback applications)
  "2"       - The indicator bar is dim and the first swipe makes it visible and the second swipe performs the "home" action (default for fullscreen applications)

$(
    if HINT_IOS_HIDE_HOME_INDICATOR === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_IOS_HIDE_HOME_INDICATOR), r"^No documentation found.\n" => "")
    end
)
""" HINT_IOS_HIDE_HOME_INDICATOR
end

if isdefined(@__MODULE__, Symbol("ShowWindow"))
    @eval @doc """
    ShowWindow(Window *)

Show a window.

 - `HideWindow()`

$(
    if ShowWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ShowWindow), r"^No documentation found.\n" => "")
    end
)
""" ShowWindow
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_STEAM"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_STEAM

 A variable controlling whether the HIDAPI driver for Steam Controllers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI driver is not used
  "1"       - HIDAPI driver is used

The default is the value of HINT_JOYSTICK_HIDAPI

$(
    if HINT_JOYSTICK_HIDAPI_STEAM === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_STEAM), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_STEAM
end

if isdefined(@__MODULE__, Symbol("JoystickNumButtons"))
    @eval @doc """
    JoystickNumButtons(Joystick *)

Get the number of buttons on a joystick.

$(
    if JoystickNumButtons === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickNumButtons), r"^No documentation found.\n" => "")
    end
)
""" JoystickNumButtons
end

if isdefined(@__MODULE__, Symbol("OpenAudio"))
    @eval @doc """
    OpenAudio(AudioSpec *, AudioSpec *)

This function opens the audio device with the desired parameters, and
returns 0 if successful, placing the actual hardware parameters in the
structure pointed to by `obtained.`  If `obtained` is NULL, the audio
data passed to the callback function will be guaranteed to be in the
requested format, and will be automatically converted to the hardware
audio format if necessary.  This function returns -1 if it failed
to open the audio device, or couldn't set up the audio thread.

When filling in the desired audio spec structure,
  - `desired->freq` should be the desired audio frequency in samples-per-
    second.
  - `desired->format` should be the desired audio format.
  - `desired->samples` is the desired size of the audio buffer, in
    samples.  This number should be a power of two, and may be adjusted by
    the audio driver to a value more suitable for the hardware.  Good values
    seem to range between 512 and 8096 inclusive, depending on the
    application and CPU speed.  Smaller values yield faster response time,
    but can lead to underflow if the application is doing heavy processing
    and cannot fill the audio buffer in time.  A stereo sample consists of
    both right and left channels in LR ordering.
    Note that the number of samples is directly related to time by the
    following formula:  ```C ms = (samples*1000)/freq ```
  - `desired->size` is the size in bytes of the audio buffer, and is
    calculated by OpenAudio().
  - `desired->silence` is the value used to set the buffer to silence,
    and is calculated by OpenAudio().
  - `desired->callback` should be set to a function that will be called
    when the audio device is ready for more data.  It is passed a pointer
    to the audio buffer, and the length in bytes of the audio buffer.
    This function usually runs in a separate thread, and so you should
    protect data structures that it accesses by calling LockAudio()
    and UnlockAudio() in your code. Alternately, you may pass a NULL
    pointer here, and call QueueAudio() with some frequency, to queue
    more audio samples to be played (or for capture devices, call
    DequeueAudio() with some frequency, to obtain audio samples).
  - `desired->userdata` is passed as the first parameter to your callback
    function. If you passed a NULL callback, this value is ignored.

The audio device starts out playing silence when it's opened, and should
be enabled for playing by calling `PauseAudio(0)` when you are ready
for your audio callback function to be called.  Since the audio driver
may modify the requested size of the audio buffer, you should allocate
any local mixing buffers after you open the audio device.

$(
    if OpenAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc OpenAudio), r"^No documentation found.\n" => "")
    end
)
""" OpenAudio
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_XVIDMODE"))
    @eval @doc """
    HINT_VIDEO_X11_XVIDMODE

 A variable controlling whether the X11 VidMode extension should be used.

This variable can be set to the following values:
  "0"       - Disable XVidMode
  "1"       - Enable XVidMode

By default SDL will use XVidMode if it is available.

$(
    if HINT_VIDEO_X11_XVIDMODE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_XVIDMODE), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_XVIDMODE
end

if isdefined(@__MODULE__, Symbol("HapticClose"))
    @eval @doc """
    HapticClose(Haptic *)

Closes a haptic device previously opened with HapticOpen().

param: haptic Haptic device to close.

$(
    if HapticClose === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticClose), r"^No documentation found.\n" => "")
    end
)
""" HapticClose
end

if isdefined(@__MODULE__, Symbol("SetWindowPosition"))
    @eval @doc """
    SetWindowPosition(Window *, int, int)

Set the position of a window.

param: window   The window to reposition.
param: x        The x coordinate of the window in screen coordinates, or
                ::WINDOWPOS_CENTERED or ::WINDOWPOS_UNDEFINED.
param: y        The y coordinate of the window in screen coordinates, or
                ::WINDOWPOS_CENTERED or ::WINDOWPOS_UNDEFINED.

!!!note

    The window coordinate origin is the upper left of the display.

 - `GetWindowPosition()`

$(
    if SetWindowPosition === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowPosition), r"^No documentation found.\n" => "")
    end
)
""" SetWindowPosition
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceProduct"))
    @eval @doc """
    JoystickGetDeviceProduct(int)

Get the USB product ID of a joystick, if available.
This can be called before any joysticks are opened.
If the product ID isn't available this function returns 0.

$(
    if JoystickGetDeviceProduct === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceProduct), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceProduct
end

if isdefined(@__MODULE__, Symbol("LoadBMP"))
    @eval @doc """
    LoadBMP

Load a surface from a file.

Convenience macro.

$(
    if LoadBMP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadBMP), r"^No documentation found.\n" => "")
    end
)
""" LoadBMP
end

if isdefined(@__MODULE__, Symbol("LoadDollarTemplates"))
    @eval @doc """
    LoadDollarTemplates(TouchID, RWops *)

Load Dollar Gesture templates from a file



$(
    if LoadDollarTemplates === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadDollarTemplates), r"^No documentation found.\n" => "")
    end
)
""" LoadDollarTemplates
end

if isdefined(@__MODULE__, Symbol("GetModState"))
    @eval @doc """
    GetModState()

Get the current key modifier state for the keyboard.

$(
    if GetModState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetModState), r"^No documentation found.\n" => "")
    end
)
""" GetModState
end

if isdefined(@__MODULE__, Symbol("RenderFillRects"))
    @eval @doc """
    RenderFillRects(Renderer *, const Rect *, int)

Fill some number of rectangles on the current rendering target with the drawing color.

param: renderer The renderer which should fill multiple rectangles.
param: rects A pointer to an array of destination rectangles.
param: count The number of rectangles.

Return 0 on success, or -1 on error

$(
    if RenderFillRects === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderFillRects), r"^No documentation found.\n" => "")
    end
)
""" RenderFillRects
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLERCONFIG_FILE"))
    @eval @doc """
    HINT_GAMECONTROLLERCONFIG_FILE

 A variable that lets you provide a file with extra gamecontroller db entries.

The file should contain lines of gamecontroller config data, see gamecontroller.h

This hint must be set before calling Init(INIT_GAMECONTROLLER)
You can update mappings after the system is initialized with GameControllerMappingForGUID() and GameControllerAddMapping()

$(
    if HINT_GAMECONTROLLERCONFIG_FILE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLERCONFIG_FILE), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLERCONFIG_FILE
end

if isdefined(@__MODULE__, Symbol("SetTextureBlendMode"))
    @eval @doc """
    SetTextureBlendMode(Texture *, BlendMode)

Set the blend mode used for texture copy operations.

param: texture The texture to update.
param: blendMode ::BlendMode to use for texture blending.

Return 0 on success, or -1 if the texture is not valid or the blend mode is
        not supported.

!!!note

    If the blend mode is not supported, the closest supported mode is
      chosen.

 - `GetTextureBlendMode()`

$(
    if SetTextureBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetTextureBlendMode), r"^No documentation found.\n" => "")
    end
)
""" SetTextureBlendMode
end

if isdefined(@__MODULE__, Symbol("GetHint"))
    @eval @doc """
    GetHint(const char *)

Get a hint

Return The string value of a hint variable.

$(
    if GetHint === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetHint), r"^No documentation found.\n" => "")
    end
)
""" GetHint
end

if isdefined(@__MODULE__, Symbol("SetYUVConversionMode"))
    @eval @doc """
    SetYUVConversionMode(YUV_CONVERSION_MODE)

Set the YUV conversion mode

$(
    if SetYUVConversionMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetYUVConversionMode), r"^No documentation found.\n" => "")
    end
)
""" SetYUVConversionMode
end

if isdefined(@__MODULE__, Symbol("IsScreenSaverEnabled"))
    @eval @doc """
    IsScreenSaverEnabled()

Returns whether the screensaver is currently enabled (default off).

 - `EnableScreenSaver()`
 - `DisableScreenSaver()`

$(
    if IsScreenSaverEnabled === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IsScreenSaverEnabled), r"^No documentation found.\n" => "")
    end
)
""" IsScreenSaverEnabled
end

if isdefined(@__MODULE__, Symbol("Event"))
    @eval @doc """
    Event

General event structure

$(
    if Event === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Event), r"^No documentation found.\n" => "")
    end
)
""" Event
end

if isdefined(@__MODULE__, Symbol("GL_SetSwapInterval"))
    @eval @doc """
    GL_SetSwapInterval(int)

Set the swap interval for the current OpenGL context.

param: interval 0 for immediate updates, 1 for updates synchronized with the
                vertical retrace. If the system supports it, you may
                specify -1 to allow late swaps to happen immediately
                instead of waiting for the next retrace.

Return 0 on success, or -1 if setting the swap interval is not supported.

 - `GL_GetSwapInterval()`

$(
    if GL_SetSwapInterval === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_SetSwapInterval), r"^No documentation found.\n" => "")
    end
)
""" GL_SetSwapInterval
end

if isdefined(@__MODULE__, Symbol("RenderDrawPointsF"))
    @eval @doc """
    RenderDrawPointsF(Renderer *, const FPoint *, int)

Draw multiple points on the current rendering target.

param: renderer The renderer which should draw multiple points.
param: points The points to draw
param: count The number of points to draw

Return 0 on success, or -1 on error

$(
    if RenderDrawPointsF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawPointsF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawPointsF
end

if isdefined(@__MODULE__, Symbol("Rect"))
    @eval @doc """
    Rect

A rectangle, with the origin at the upper left (integer).

 - `RectEmpty`
 - `RectEquals`
 - `HasIntersection`
 - `IntersectRect`
 - `UnionRect`
 - `EnclosePoints`

$(
    if Rect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Rect), r"^No documentation found.\n" => "")
    end
)
""" Rect
end

if isdefined(@__MODULE__, Symbol("FreePalette"))
    @eval @doc """
    FreePalette(Palette *)

Free a palette created with AllocPalette().

 - `AllocPalette()`

$(
    if FreePalette === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FreePalette), r"^No documentation found.\n" => "")
    end
)
""" FreePalette
end

if isdefined(@__MODULE__, Symbol("GetDisplayOrientation"))
    @eval @doc """
    GetDisplayOrientation(int)

Get the orientation of a display

Return The orientation of the display, or ORIENTATION_UNKNOWN if it isn't available.

 - `GetNumVideoDisplays()`

$(
    if GetDisplayOrientation === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayOrientation), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayOrientation
end

if isdefined(@__MODULE__, Symbol("HINT_WINRT_HANDLE_BACK_BUTTON"))
    @eval @doc """
    HINT_WINRT_HANDLE_BACK_BUTTON


Windows Phone devices typically feature a Back button.  When pressed,
the OS will emit back-button-press events, which apps are expected to
handle in an appropriate manner.  If apps do not explicitly mark these
events as 'Handled', then the OS will invoke its default behavior for
unhandled back-button-press events, which on Windows Phone 8 and 8.1 is to
terminate the app (and attempt to switch to the previous app, or to the
device's home screen).

Setting the HINT_WINRT_HANDLE_BACK_BUTTON hint to "1" will cause SDL
to mark back-button-press events as Handled, if and when one is sent to
the app.

Internally, Windows Phone sends back button events as parameters to
special back-button-press callback functions.  Apps that need to respond
to back-button-press events are expected to register one or more
callback functions for such, shortly after being launched (during the
app's initialization phase).  After the back button is pressed, the OS
will invoke these callbacks.  If the app's callback(s) do not explicitly
mark the event as handled by the time they return, or if the app never
registers one of these callback, the OS will consider the event
un-handled, and it will apply its default back button behavior (terminate
the app).

SDL registers its own back-button-press callback with the Windows Phone
OS.  This callback will emit a pair of SDL key-press events (KEYDOWN
and KEYUP), each with a scancode of SCANCODE_AC_BACK, after which
it will check the contents of the hint, HINT_WINRT_HANDLE_BACK_BUTTON.
If the hint's value is set to "1", the back button event's Handled
property will get set to 'true'.  If the hint's value is set to something
else, or if it is unset, SDL will leave the event's Handled property
alone.  (By default, the OS sets this property to 'false', to note.)

SDL apps can either set HINT_WINRT_HANDLE_BACK_BUTTON well before a
back button is pressed, or can set it in direct-response to a back button
being pressed.

In order to get notified when a back button is pressed, SDL apps should
register a callback function with AddEventWatch(), and have it listen
for KEYDOWN events that have a scancode of SCANCODE_AC_BACK.
(Alternatively, KEYUP events can be listened-for.  Listening for
either event type is suitable.)  Any value of HINT_WINRT_HANDLE_BACK_BUTTON
set by such a callback, will be applied to the OS' current
back-button-press event.

More details on back button behavior in Windows Phone apps can be found
at the following page, on Microsoft's developer site:
http://msdn.microsoft.com/en-us/library/windowsphone/develop/jj247550(v=vs.105).aspx

$(
    if HINT_WINRT_HANDLE_BACK_BUTTON === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINRT_HANDLE_BACK_BUTTON), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINRT_HANDLE_BACK_BUTTON
end

if isdefined(@__MODULE__, Symbol("Has3DNow"))
    @eval @doc """
    Has3DNow()

This function returns true if the CPU has 3DNow! features.

$(
    if Has3DNow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Has3DNow), r"^No documentation found.\n" => "")
    end
)
""" Has3DNow
end

if isdefined(@__MODULE__, Symbol("HAPTIC_PAUSE"))
    @eval @doc """
    HAPTIC_PAUSE

Device can be paused.

Devices supports being paused.

 - `HapticPause`
 - `HapticUnpause`

$(
    if HAPTIC_PAUSE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_PAUSE), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_PAUSE
end

if isdefined(@__MODULE__, Symbol("GetTextureScaleMode"))
    @eval @doc """
    GetTextureScaleMode(Texture *, ScaleMode *)

Get the scale mode used for texture scale operations.

param: texture   The texture to query.
param: scaleMode A pointer filled in with the current scale mode.

Return 0 on success, or -1 if the texture is not valid.

 - `SetTextureScaleMode()`

$(
    if GetTextureScaleMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTextureScaleMode), r"^No documentation found.\n" => "")
    end
)
""" GetTextureScaleMode
end

if isdefined(@__MODULE__, Symbol("RaiseWindow"))
    @eval @doc """
    RaiseWindow(Window *)

Raise a window above other windows and set the input focus.

$(
    if RaiseWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RaiseWindow), r"^No documentation found.\n" => "")
    end
)
""" RaiseWindow
end

if isdefined(@__MODULE__, Symbol("JoystickGetAttached"))
    @eval @doc """
    JoystickGetAttached(Joystick *)

Returns TRUE if the joystick has been opened and currently connected, or FALSE if it has not.

$(
    if JoystickGetAttached === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetAttached), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetAttached
end

if isdefined(@__MODULE__, Symbol("GameControllerMappingForDeviceIndex"))
    @eval @doc """
    GameControllerMappingForDeviceIndex(int)

Get the mapping of a game controller.
This can be called before any controllers are opened.

Return the mapping string.  Must be freed with free().  Returns NULL if no mapping is available

$(
    if GameControllerMappingForDeviceIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerMappingForDeviceIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerMappingForDeviceIndex
end

if isdefined(@__MODULE__, Symbol("HINT_EVENT_LOGGING"))
    @eval @doc """
    HINT_EVENT_LOGGING

 A variable controlling whether SDL logs all events pushed onto its internal queue.

This variable can be set to the following values:

  "0"     - Don't log any events (default)
  "1"     - Log all events except mouse and finger motion, which are pretty spammy.
  "2"     - Log all events.

This is generally meant to be used to debug SDL itself, but can be useful
for application developers that need better visibility into what is going
on in the event queue. Logged events are sent through Log(), which
means by default they appear on stdout on most platforms or maybe
OutputDebugString() on Windows, and can be funneled by the app with
LogSetOutputFunction(), etc.

This hint can be toggled on and off at runtime, if you only need to log
events for a small subset of program execution.

$(
    if HINT_EVENT_LOGGING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_EVENT_LOGGING), r"^No documentation found.\n" => "")
    end
)
""" HINT_EVENT_LOGGING
end

if isdefined(@__MODULE__, Symbol("IsShapedWindow"))
    @eval @doc """
    IsShapedWindow(const Window *)

Return whether the given window is a shaped window.

param: window The window to query for being shaped.

Return TRUE if the window is a window that can be shaped, FALSE if the window is unshaped or NULL.

 - `CreateShapedWindow`

$(
    if IsShapedWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IsShapedWindow), r"^No documentation found.\n" => "")
    end
)
""" IsShapedWindow
end

if isdefined(@__MODULE__, Symbol("HapticConstant"))
    @eval @doc """
    HapticConstant

A structure containing a template for a Constant effect.

This struct is exclusively for the ::HAPTIC_CONSTANT effect.

A constant effect applies a constant force in the specified direction
to the joystick.

 - `HAPTIC_CONSTANT`
 - `HapticEffect`

$(
    if HapticConstant === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticConstant), r"^No documentation found.\n" => "")
    end
)
""" HapticConstant
end

if isdefined(@__MODULE__, Symbol("HAPTIC_TRIANGLE"))
    @eval @doc """
    HAPTIC_TRIANGLE

Triangle wave effect supported.

Periodic haptic effect that simulates triangular waves.

 - `HapticPeriodic`

$(
    if HAPTIC_TRIANGLE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_TRIANGLE), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_TRIANGLE
end

if isdefined(@__MODULE__, Symbol("BUTTON"))
    @eval @doc """
    BUTTON

Used as a mask when testing buttons in buttonstate.
 - Button 1:  Left mouse button
 - Button 2:  Middle mouse button
 - Button 3:  Right mouse button

$(
    if BUTTON === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc BUTTON), r"^No documentation found.\n" => "")
    end
)
""" BUTTON
end

if isdefined(@__MODULE__, Symbol("MouseButtonEvent"))
    @eval @doc """
    MouseButtonEvent

Mouse button event structure (event.button.*)

$(
    if MouseButtonEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MouseButtonEvent), r"^No documentation found.\n" => "")
    end
)
""" MouseButtonEvent
end

if isdefined(@__MODULE__, Symbol("SensorUpdate"))
    @eval @doc """
    SensorUpdate()

Update the current state of the open sensors.

This is called automatically by the event loop if sensor events are enabled.

This needs to be called from the thread that initialized the sensor subsystem.

$(
    if SensorUpdate === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorUpdate), r"^No documentation found.\n" => "")
    end
)
""" SensorUpdate
end

if isdefined(@__MODULE__, Symbol("GetClipboardText"))
    @eval @doc """
    GetClipboardText()

Get UTF-8 text from the clipboard, which must be freed with free()

 - `SetClipboardText()`

$(
    if GetClipboardText === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetClipboardText), r"^No documentation found.\n" => "")
    end
)
""" GetClipboardText
end

if isdefined(@__MODULE__, Symbol("QueryTexture"))
    @eval @doc """
    QueryTexture(Texture *, Uint32 *, int *, int *, int *)

Query the attributes of a texture

param: texture A texture to be queried.
param: format  A pointer filled in with the raw format of the texture.  The
               actual format may differ, but pixel transfers will use this
               format.
param: access  A pointer filled in with the actual access to the texture.
param: w       A pointer filled in with the width of the texture in pixels.
param: h       A pointer filled in with the height of the texture in pixels.

Return 0 on success, or -1 if the texture is not valid.

$(
    if QueryTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc QueryTexture), r"^No documentation found.\n" => "")
    end
)
""" QueryTexture
end

if isdefined(@__MODULE__, Symbol("HINT_WAVE_FACT_CHUNK"))
    @eval @doc """
    HINT_WAVE_FACT_CHUNK

 Controls how the fact chunk affects the loading of a WAVE file.

The fact chunk stores information about the number of samples of a WAVE
file. The Standards Update from Microsoft notes that this value can be used
to 'determine the length of the data in seconds'. This is especially useful
for compressed formats (for which this is a mandatory chunk) if they produce
multiple sample frames per block and truncating the block is not allowed.
The fact chunk can exactly specify how many sample frames there should be
in this case.

Unfortunately, most application seem to ignore the fact chunk and so SDL
ignores it by default as well.

This variable can be set to the following values:

  "truncate"    - Use the number of samples to truncate the wave data if
                  the fact chunk is present and valid
  "strict"      - Like "truncate", but raise an error if the fact chunk
                  is invalid, not present for non-PCM formats, or if the
                  data chunk doesn't have that many samples
  "ignorezero"  - Like "truncate", but ignore fact chunk if the number of
                  samples is zero
  "ignore"      - Ignore fact chunk entirely (default)

$(
    if HINT_WAVE_FACT_CHUNK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WAVE_FACT_CHUNK), r"^No documentation found.\n" => "")
    end
)
""" HINT_WAVE_FACT_CHUNK
end

if isdefined(@__MODULE__, Symbol("MUTEX_MAXWAIT"))
    @eval @doc """
    MUTEX_MAXWAIT

This is the timeout value which corresponds to never time out.

$(
    if MUTEX_MAXWAIT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MUTEX_MAXWAIT), r"^No documentation found.\n" => "")
    end
)
""" MUTEX_MAXWAIT
end

if isdefined(@__MODULE__, Symbol("RenderDrawRect"))
    @eval @doc """
    RenderDrawRect(Renderer *, const Rect *)

Draw a rectangle on the current rendering target.

param: renderer The renderer which should draw a rectangle.
param: rect A pointer to the destination rectangle, or NULL to outline the entire rendering target.

Return 0 on success, or -1 on error

$(
    if RenderDrawRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawRect), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawRect
end

if isdefined(@__MODULE__, Symbol("SemWaitTimeout"))
    @eval @doc """
    SemWaitTimeout(sem *, Uint32)

Variant of SemWait() with a timeout in milliseconds.

Return 0 if the wait succeeds, ::MUTEX_TIMEDOUT if the wait does not
        succeed in the allotted time, and -1 on error.

!!!warning

    On some platforms this function is implemented by looping with a
         delay of 1 ms, and so should be avoided if possible.

$(
    if SemWaitTimeout === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SemWaitTimeout), r"^No documentation found.\n" => "")
    end
)
""" SemWaitTimeout
end

if isdefined(@__MODULE__, Symbol("HasRDTSC"))
    @eval @doc """
    HasRDTSC()

This function returns true if the CPU has the RDTSC instruction.

$(
    if HasRDTSC === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasRDTSC), r"^No documentation found.\n" => "")
    end
)
""" HasRDTSC
end

if isdefined(@__MODULE__, Symbol("HAPTIC_INERTIA"))
    @eval @doc """
    HAPTIC_INERTIA

Inertia effect supported - uses axes acceleration.

Condition haptic effect that simulates inertia.  Effect is based on the axes
acceleration.

 - `HapticCondition`

$(
    if HAPTIC_INERTIA === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_INERTIA), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_INERTIA
end

if isdefined(@__MODULE__, Symbol("arraysize"))
    @eval @doc """
    arraysize

The number of elements in an array.

$(
    if arraysize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc arraysize), r"^No documentation found.\n" => "")
    end
)
""" arraysize
end

if isdefined(@__MODULE__, Symbol("SetMainReady"))
    @eval @doc """
    SetMainReady()

This is called by the real SDL main function to let the rest of the
library know that initialization was done properly.

Calling this yourself without knowing what you're doing can cause
crashes and hard to diagnose problems with your application.

$(
    if SetMainReady === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetMainReady), r"^No documentation found.\n" => "")
    end
)
""" SetMainReady
end

if isdefined(@__MODULE__, Symbol("GetRendererOutputSize"))
    @eval @doc """
    GetRendererOutputSize(Renderer *, int *, int *)

Get the output size in pixels of a rendering context.

$(
    if GetRendererOutputSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRendererOutputSize), r"^No documentation found.\n" => "")
    end
)
""" GetRendererOutputSize
end

if isdefined(@__MODULE__, Symbol("SensorGetNonPortableType"))
    @eval @doc """
    SensorGetNonPortableType(Sensor *)

Get the platform dependent type of a sensor.

This can be called before any sensors are opened.

Return The sensor platform dependent type, or -1 if the sensor is NULL.

$(
    if SensorGetNonPortableType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetNonPortableType), r"^No documentation found.\n" => "")
    end
)
""" SensorGetNonPortableType
end

if isdefined(@__MODULE__, Symbol("GameControllerNameForIndex"))
    @eval @doc """
    GameControllerNameForIndex(int)

Get the implementation dependent name of a game controller.
This can be called before any controllers are opened.
If no name can be found, this function returns NULL.

$(
    if GameControllerNameForIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerNameForIndex), r"^No documentation found.\n" => "")
    end
)
""" GameControllerNameForIndex
end

if isdefined(@__MODULE__, Symbol("GL_GetDrawableSize"))
    @eval @doc """
    GL_GetDrawableSize(Window *, int *, int *)

Get the size of a window's underlying drawable in pixels (for use
       with glViewport).

param: window   Window from which the drawable size should be queried
param: w        Pointer to variable for storing the width in pixels, may be NULL
param: h        Pointer to variable for storing the height in pixels, may be NULL

This may differ from GetWindowSize() if we're rendering to a high-DPI
drawable, i.e. the window was created with WINDOW_ALLOW_HIGHDPI on a
platform with high-DPI support (Apple calls this "Retina"), and not disabled
by the HINT_VIDEO_HIGHDPI_DISABLED hint.

 - `GetWindowSize()`
 - `CreateWindow()`

$(
    if GL_GetDrawableSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetDrawableSize), r"^No documentation found.\n" => "")
    end
)
""" GL_GetDrawableSize
end

if isdefined(@__MODULE__, Symbol("GetWindowGammaRamp"))
    @eval @doc """
    GetWindowGammaRamp(Window *, Uint16 *, Uint16 *, Uint16 *)

Get the gamma ramp for a window.

param: window The window from which the gamma ramp should be queried.
param: red   A pointer to a 256 element array of 16-bit quantities to hold
             the translation table for the red channel, or NULL.
param: green A pointer to a 256 element array of 16-bit quantities to hold
             the translation table for the green channel, or NULL.
param: blue  A pointer to a 256 element array of 16-bit quantities to hold
             the translation table for the blue channel, or NULL.

Return 0 on success, or -1 if gamma ramps are unsupported.

 - `SetWindowGammaRamp()`

$(
    if GetWindowGammaRamp === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowGammaRamp), r"^No documentation found.\n" => "")
    end
)
""" GetWindowGammaRamp
end

if isdefined(@__MODULE__, Symbol("JoystickOpen"))
    @eval @doc """
    JoystickOpen(int)

Open a joystick for use.
The index passed as an argument refers to the N'th joystick on the system.
This index is not the value which will identify this joystick in future
joystick events.  The joystick's instance id (::JoystickID) will be used
there instead.

Return A joystick identifier, or NULL if an error occurred.

$(
    if JoystickOpen === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickOpen), r"^No documentation found.\n" => "")
    end
)
""" JoystickOpen
end

if isdefined(@__MODULE__, Symbol("AudioFormat"))
    @eval @doc """
    AudioFormat


There are macros in SDL 2.0 and later to query these bits.

$(
    if AudioFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioFormat), r"^No documentation found.\n" => "")
    end
)
""" AudioFormat
end

if isdefined(@__MODULE__, Symbol("GL_UnbindTexture"))
    @eval @doc """
    GL_UnbindTexture(Texture *)

Unbind a texture from the current OpenGL/ES/ES2 context.

param: texture  The SDL texture to unbind

Return 0 on success, or -1 if the operation is not supported

$(
    if GL_UnbindTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_UnbindTexture), r"^No documentation found.\n" => "")
    end
)
""" GL_UnbindTexture
end

if isdefined(@__MODULE__, Symbol("ConvertAudio"))
    @eval @doc """
    ConvertAudio(AudioCVT *)

Once you have initialized the `cvt` structure using BuildAudioCVT(),
created an audio buffer `cvt->buf,` and filled it with `cvt->len` bytes of
audio data in the source format, this function will convert it in-place
to the desired format.

The data conversion may expand the size of the audio data, so the buffer
`cvt->buf` should be allocated after the `cvt` structure is initialized by
BuildAudioCVT(), and should be `cvt->len*cvt->len_mult` bytes long.

Return 0 on success or -1 if `cvt->buf` is NULL.

$(
    if ConvertAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ConvertAudio), r"^No documentation found.\n" => "")
    end
)
""" ConvertAudio
end

if isdefined(@__MODULE__, Symbol("blit"))
    @eval @doc """
    blit

The type of function used for surface blitting functions.

$(
    if blit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc blit), r"^No documentation found.\n" => "")
    end
)
""" blit
end

if isdefined(@__MODULE__, Symbol("GetCursor"))
    @eval @doc """
    GetCursor()

Return the active cursor.

$(
    if GetCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCursor), r"^No documentation found.\n" => "")
    end
)
""" GetCursor
end

if isdefined(@__MODULE__, Symbol("VERSION_ATLEAST"))
    @eval @doc """
    VERSION_ATLEAST

This macro will evaluate to true if compiled with SDL at least X.Y.Z.

$(
    if VERSION_ATLEAST === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc VERSION_ATLEAST), r"^No documentation found.\n" => "")
    end
)
""" VERSION_ATLEAST
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLERTYPE"))
    @eval @doc """
    HINT_GAMECONTROLLERTYPE

 A variable that overrides the automatic controller type detection

The variable should be comma separated entries, in the form: VID/PID=type

The VID and PID should be hexadecimal with exactly 4 digits, e.g. 0x00fd

The type should be one of:
    Xbox360
    XboxOne
    PS3
    PS4
    SwitchPro

This hint affects what driver is used, and must be set before calling Init(INIT_GAMECONTROLLER)

$(
    if HINT_GAMECONTROLLERTYPE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLERTYPE), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLERTYPE
end

if isdefined(@__MODULE__, Symbol("HINT_MAC_BACKGROUND_APP"))
    @eval @doc """
    HINT_MAC_BACKGROUND_APP

 When set don't force the SDL app to become a foreground process

This hint only applies to Mac OS X.


$(
    if HINT_MAC_BACKGROUND_APP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MAC_BACKGROUND_APP), r"^No documentation found.\n" => "")
    end
)
""" HINT_MAC_BACKGROUND_APP
end

if isdefined(@__MODULE__, Symbol("HasAVX512F"))
    @eval @doc """
    HasAVX512F()

This function returns true if the CPU has AVX-512F (foundation) features.

$(
    if HasAVX512F === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HasAVX512F), r"^No documentation found.\n" => "")
    end
)
""" HasAVX512F
end

if isdefined(@__MODULE__, Symbol("SaveAllDollarTemplates"))
    @eval @doc """
    SaveAllDollarTemplates(RWops *)

Save all currently loaded Dollar Gesture templates



$(
    if SaveAllDollarTemplates === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SaveAllDollarTemplates), r"^No documentation found.\n" => "")
    end
)
""" SaveAllDollarTemplates
end

if isdefined(@__MODULE__, Symbol("FillRect"))
    @eval @doc """
    FillRect(Surface *, const Rect *, Uint32)

Performs a fast fill of the given rectangle with `color.

If` `rect` is NULL, the whole surface will be filled with `color.

The` color should be a pixel of the format used by the surface, and
can be generated by the MapRGB() function.

Return 0 on success, or -1 on error.

$(
    if FillRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FillRect), r"^No documentation found.\n" => "")
    end
)
""" FillRect
end

if isdefined(@__MODULE__, Symbol("LoadObject"))
    @eval @doc """
    LoadObject(const char *)

This function dynamically loads a shared object and returns a pointer
to the object handle (or NULL if there was an error).
The 'sofile' parameter is a system dependent name of the object file.

$(
    if LoadObject === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadObject), r"^No documentation found.\n" => "")
    end
)
""" LoadObject
end

if isdefined(@__MODULE__, Symbol("GL_LoadLibrary"))
    @eval @doc """
    GL_LoadLibrary(const char *)

Dynamically load an OpenGL library.

param: path The platform dependent OpenGL library name, or NULL to open the
            default OpenGL library.

Return 0 on success, or -1 if the library couldn't be loaded.

This should be done after initializing the video driver, but before
creating any OpenGL windows.  If no OpenGL library is loaded, the default
library will be loaded upon creation of the first OpenGL window.

!!!note

    If you do this, you need to retrieve all of the GL functions used in
      your program from the dynamic library using GL_GetProcAddress().

 - `GL_GetProcAddress()`
 - `GL_UnloadLibrary()`

$(
    if GL_LoadLibrary === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_LoadLibrary), r"^No documentation found.\n" => "")
    end
)
""" GL_LoadLibrary
end

if isdefined(@__MODULE__, Symbol("SemWait"))
    @eval @doc """
    SemWait(sem *)

This function suspends the calling thread until the semaphore pointed
to by `sem` has a positive count. It then atomically decreases the
semaphore count.

$(
    if SemWait === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SemWait), r"^No documentation found.\n" => "")
    end
)
""" SemWait
end

if isdefined(@__MODULE__, Symbol("LoadWAV"))
    @eval @doc """
    LoadWAV

Loads a WAV from a file.
Compatibility convenience function.

$(
    if LoadWAV === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadWAV), r"^No documentation found.\n" => "")
    end
)
""" LoadWAV
end

if isdefined(@__MODULE__, Symbol("CondWaitTimeout"))
    @eval @doc """
    CondWaitTimeout(cond *, mutex *, Uint32)

Waits for at most `ms` milliseconds, and returns 0 if the condition
variable is signaled, ::MUTEX_TIMEDOUT if the condition is not
signaled in the allotted time, and -1 on error.

!!!warning

    On some platforms this function is implemented by looping with a
         delay of 1 ms, and so should be avoided if possible.

$(
    if CondWaitTimeout === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CondWaitTimeout), r"^No documentation found.\n" => "")
    end
)
""" CondWaitTimeout
end

if isdefined(@__MODULE__, Symbol("PixelFormat"))
    @eval @doc """
    PixelFormat

!!!note

    Everything in the pixel format structure is read-only.

$(
    if PixelFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PixelFormat), r"^No documentation found.\n" => "")
    end
)
""" PixelFormat
end

if isdefined(@__MODULE__, Symbol("GetVideoDriver"))
    @eval @doc """
    GetVideoDriver(int)

Get the name of a built in video driver.

!!!note

    The video drivers are presented in the order in which they are
      normally checked during initialization.

 - `GetNumVideoDrivers()`

$(
    if GetVideoDriver === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetVideoDriver), r"^No documentation found.\n" => "")
    end
)
""" GetVideoDriver
end

if isdefined(@__MODULE__, Symbol("GetThreadName"))
    @eval @doc """
    GetThreadName(Thread *)

Get the thread name, as it was specified in CreateThread().
This function returns a pointer to a UTF-8 string that names the
specified thread, or NULL if it doesn't have a name. This is internal
memory, not to be free()'d by the caller, and remains valid until the
specified thread is cleaned up by WaitThread().

$(
    if GetThreadName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetThreadName), r"^No documentation found.\n" => "")
    end
)
""" GetThreadName
end

if isdefined(@__MODULE__, Symbol("iconv_string"))
    @eval @doc """
    iconv_string(const char *, const char *, const char *, size_t)

This function converts a string between encodings in one pass, returning a
string that must be freed with free() or NULL on error.

$(
    if iconv_string === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc iconv_string), r"^No documentation found.\n" => "")
    end
)
""" iconv_string
end

if isdefined(@__MODULE__, Symbol("GetCPUCount"))
    @eval @doc """
    GetCPUCount()

This function returns the number of CPU cores available.

$(
    if GetCPUCount === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCPUCount), r"^No documentation found.\n" => "")
    end
)
""" GetCPUCount
end

if isdefined(@__MODULE__, Symbol("GetPowerInfo"))
    @eval @doc """
    GetPowerInfo(int *, int *)

Get the current power supply details.

param: secs Seconds of battery life left. You can pass a NULL here if
            you don't care. Will return -1 if we can't determine a
            value, or we're not running on a battery.

param: pct Percentage of battery life left, between 0 and 100. You can
           pass a NULL here if you don't care. Will return -1 if we
           can't determine a value, or we're not running on a battery.

Return The state of the battery (if any).

$(
    if GetPowerInfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPowerInfo), r"^No documentation found.\n" => "")
    end
)
""" GetPowerInfo
end

if isdefined(@__MODULE__, Symbol("CloseAudio"))
    @eval @doc """
    CloseAudio()

This function shuts down audio processing and closes the audio device.

$(
    if CloseAudio === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CloseAudio), r"^No documentation found.\n" => "")
    end
)
""" CloseAudio
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLER_IGNORE_DEVICES"))
    @eval @doc """
    HINT_GAMECONTROLLER_IGNORE_DEVICES

 A variable containing a list of devices to skip when scanning for game controllers.

The format of the string is a comma separated list of USB VID/PID pairs
in hexadecimal form, e.g.

    0xAAAA/0xBBBB,0xCCCC/0xDDDD

The variable can also take the form of @file, in which case the named
file will be loaded and interpreted as the value of the variable.

$(
    if HINT_GAMECONTROLLER_IGNORE_DEVICES === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLER_IGNORE_DEVICES), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLER_IGNORE_DEVICES
end

if isdefined(@__MODULE__, Symbol("MinimizeWindow"))
    @eval @doc """
    MinimizeWindow(Window *)

Minimize a window to an iconic representation.

 - `RestoreWindow()`

$(
    if MinimizeWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MinimizeWindow), r"^No documentation found.\n" => "")
    end
)
""" MinimizeWindow
end

if isdefined(@__MODULE__, Symbol("TLSCreate"))
    @eval @doc """
    TLSCreate()

Create an identifier that is globally visible to all threads but refers to data that is thread-specific.

Return The newly created thread local storage identifier, or 0 on error

```C
static SpinLock tls_lock;
static TLSID thread_local_storage;

void SetMyThreadData(void *value)
{
    if (!thread_local_storage) {
        AtomicLock(&tls_lock);
        if (!thread_local_storage) {
            thread_local_storage = TLSCreate();
        }
        AtomicUnlock(&tls_lock);
    }
    TLSSet(thread_local_storage, value, 0);
}

void *GetMyThreadData(void)
{
    return TLSGet(thread_local_storage);
}
```

 - `TLSGet()`
 - `TLSSet()`

$(
    if TLSCreate === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TLSCreate), r"^No documentation found.\n" => "")
    end
)
""" TLSCreate
end

if isdefined(@__MODULE__, Symbol("GetDisplayName"))
    @eval @doc """
    GetDisplayName(int)

Get the name of a display in UTF-8 encoding

Return The name of a display, or NULL for an invalid display index.

 - `GetNumVideoDisplays()`

$(
    if GetDisplayName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayName), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayName
end

if isdefined(@__MODULE__, Symbol("HINT_ALLOW_TOPMOST"))
    @eval @doc """
    HINT_ALLOW_TOPMOST

If set to "0" then never set the top most bit on a SDL Window, even if the video mode expects it.
    This is a debugging aid for developers and not expected to be used by end users. The default is "1"

This variable can be set to the following values:
  "0"       - don't allow topmost
  "1"       - allow topmost

$(
    if HINT_ALLOW_TOPMOST === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ALLOW_TOPMOST), r"^No documentation found.\n" => "")
    end
)
""" HINT_ALLOW_TOPMOST
end

if isdefined(@__MODULE__, Symbol("GetTouchDevice"))
    @eval @doc """
    GetTouchDevice(int)

Get the touch ID with the given index, or 0 if the index is invalid.

$(
    if GetTouchDevice === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTouchDevice), r"^No documentation found.\n" => "")
    end
)
""" GetTouchDevice
end

if isdefined(@__MODULE__, Symbol("GetWindowPixelFormat"))
    @eval @doc """
    GetWindowPixelFormat(Window *)

Get the pixel format associated with the window.

$(
    if GetWindowPixelFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowPixelFormat), r"^No documentation found.\n" => "")
    end
)
""" GetWindowPixelFormat
end

if isdefined(@__MODULE__, Symbol("SetTextureAlphaMod"))
    @eval @doc """
    SetTextureAlphaMod(Texture *, Uint8)

Set an additional alpha value used in render copy operations.

param: texture The texture to update.
param: alpha     The alpha value multiplied into copy operations.

Return 0 on success, or -1 if the texture is not valid or alpha modulation
        is not supported.

 - `GetTextureAlphaMod()`

$(
    if SetTextureAlphaMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetTextureAlphaMod), r"^No documentation found.\n" => "")
    end
)
""" SetTextureAlphaMod
end

if isdefined(@__MODULE__, Symbol("SensorClose"))
    @eval @doc """
    SensorClose(Sensor *)

Close a sensor previously opened with SensorOpen()

$(
    if SensorClose === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorClose), r"^No documentation found.\n" => "")
    end
)
""" SensorClose
end

if isdefined(@__MODULE__, Symbol("AtomicTryLock"))
    @eval @doc """
    AtomicTryLock(SpinLock *)

Try to lock a spin lock by setting it to a non-zero value.

param: lock Points to the lock.

Return TRUE if the lock succeeded, FALSE if the lock is already held.

$(
    if AtomicTryLock === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicTryLock), r"^No documentation found.\n" => "")
    end
)
""" AtomicTryLock
end

if isdefined(@__MODULE__, Symbol("SetRelativeMouseMode"))
    @eval @doc """
    SetRelativeMouseMode(bool)

Set relative mouse mode.

param: enabled Whether or not to enable relative mode

Return 0 on success, or -1 if relative mode is not supported.

While the mouse is in relative mode, the cursor is hidden, and the
driver will try to report continuous motion in the current window.
Only relative motion events will be delivered, the mouse position
will not change.

!!!note

    This function will flush any pending mouse motion.

 - `GetRelativeMouseMode()`

$(
    if SetRelativeMouseMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetRelativeMouseMode), r"^No documentation found.\n" => "")
    end
)
""" SetRelativeMouseMode
end

if isdefined(@__MODULE__, Symbol("ShowMessageBox"))
    @eval @doc """
    ShowMessageBox(const MessageBoxData *, int *)

Create a modal message box.

param: messageboxdata The MessageBoxData structure with title, text, etc.
param: buttonid The pointer to which user id of hit button should be copied.

Return -1 on error, otherwise 0 and buttonid contains user id of button
        hit or -1 if dialog was closed.

!!!note

    This function should be called on the thread that created the parent
      window, or on the main thread if the messagebox has no parent.  It will
      block execution of that thread until the user clicks a button or
      closes the messagebox.

$(
    if ShowMessageBox === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ShowMessageBox), r"^No documentation found.\n" => "")
    end
)
""" ShowMessageBox
end

if isdefined(@__MODULE__, Symbol("DECLSPEC"))
    @eval @doc """
    DECLSPEC

Get the size of a window's underlying drawable in pixels (for use
       with setting viewport, scissor & etc).

param: window   Window from which the drawable size should be queried
param: w        Pointer to variable for storing the width in pixels,
                may be NULL
param: h        Pointer to variable for storing the height in pixels,
                may be NULL

This may differ from GetWindowSize() if we're rendering to a high-DPI
drawable, i.e. the window was created with WINDOW_ALLOW_HIGHDPI on a
platform with high-DPI support (Apple calls this "Retina"), and not disabled
by the `HINT_VIDEO_HIGHDPI_DISABLED` hint.

!!!note

    On macOS high-DPI support must be enabled for an application by
      setting NSHighResolutionCapable to true in its Info.plist.

 - `GetWindowSize()`
 - `CreateWindow()`

$(
    if DECLSPEC === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DECLSPEC), r"^No documentation found.\n" => "")
    end
)
""" DECLSPEC
end

if isdefined(@__MODULE__, Symbol("JoystickClose"))
    @eval @doc """
    JoystickClose(Joystick *)

Close a joystick previously opened with JoystickOpen().

$(
    if JoystickClose === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickClose), r"^No documentation found.\n" => "")
    end
)
""" JoystickClose
end

if isdefined(@__MODULE__, Symbol("RenderGetIntegerScale"))
    @eval @doc """
    RenderGetIntegerScale(Renderer *)

Get whether integer scales are forced for resolution-independent rendering

param: renderer The renderer from which integer scaling should be queried.

 - `RenderSetIntegerScale()`

$(
    if RenderGetIntegerScale === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetIntegerScale), r"^No documentation found.\n" => "")
    end
)
""" RenderGetIntegerScale
end

if isdefined(@__MODULE__, Symbol("GetWindowID"))
    @eval @doc """
    GetWindowID(Window *)

Get the numeric ID of a window, for logging purposes.

$(
    if GetWindowID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowID), r"^No documentation found.\n" => "")
    end
)
""" GetWindowID
end

if isdefined(@__MODULE__, Symbol("GL_MakeCurrent"))
    @eval @doc """
    GL_MakeCurrent(Window *, GLContext)

Set up an OpenGL context for rendering into an OpenGL window.

!!!note

    The context must have been created with a compatible window.

$(
    if GL_MakeCurrent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_MakeCurrent), r"^No documentation found.\n" => "")
    end
)
""" GL_MakeCurrent
end

if isdefined(@__MODULE__, Symbol("SetSurfacePalette"))
    @eval @doc """
    SetSurfacePalette(Surface *, Palette *)

Set the palette used by a surface.

Return 0, or -1 if the surface format doesn't use a palette.

!!!note

    A single palette can be shared with many surfaces.

$(
    if SetSurfacePalette === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetSurfacePalette), r"^No documentation found.\n" => "")
    end
)
""" SetSurfacePalette
end

if isdefined(@__MODULE__, Symbol("JoystickGetGUIDFromString"))
    @eval @doc """
    JoystickGetGUIDFromString(const char *)

Convert a string into a joystick guid

$(
    if JoystickGetGUIDFromString === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetGUIDFromString), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetGUIDFromString
end

if isdefined(@__MODULE__, Symbol("AddEventWatch"))
    @eval @doc """
    AddEventWatch(EventFilter, void *)

Add a function which is called when an event is added to the queue.

$(
    if AddEventWatch === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AddEventWatch), r"^No documentation found.\n" => "")
    end
)
""" AddEventWatch
end

if isdefined(@__MODULE__, Symbol("HAPTIC_SPHERICAL"))
    @eval @doc """
    HAPTIC_SPHERICAL

Uses spherical coordinates for the direction.

 - `HapticDirection`

$(
    if HAPTIC_SPHERICAL === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_SPHERICAL), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_SPHERICAL
end

if isdefined(@__MODULE__, Symbol("HAPTIC_INFINITY"))
    @eval @doc """
    HAPTIC_INFINITY

Used to play a device an infinite number of times.

 - `HapticRunEffect`

$(
    if HAPTIC_INFINITY === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_INFINITY), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_INFINITY
end

if isdefined(@__MODULE__, Symbol("HapticRunEffect"))
    @eval @doc """
    HapticRunEffect(Haptic *, int, Uint32)

Runs the haptic effect on its associated haptic device.

If iterations are ::HAPTIC_INFINITY, it'll run the effect over and over
repeating the envelope (attack and fade) every time.  If you only want the
effect to last forever, set ::HAPTIC_INFINITY in the effect's length
parameter.

param: haptic Haptic device to run the effect on.
param: effect Identifier of the haptic effect to run.
param: iterations Number of iterations to run the effect. Use
       ::HAPTIC_INFINITY for infinity.
Return 0 on success or -1 on error.

 - `HapticStopEffect`
 - `HapticDestroyEffect`
 - `HapticGetEffectStatus`

$(
    if HapticRunEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRunEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticRunEffect
end

if isdefined(@__MODULE__, Symbol("HAPTIC_DAMPER"))
    @eval @doc """
    HAPTIC_DAMPER

Damper effect supported - uses axes velocity.

Condition haptic effect that simulates dampening.  Effect is based on the
axes velocity.

 - `HapticCondition`

$(
    if HAPTIC_DAMPER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_DAMPER), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_DAMPER
end

if isdefined(@__MODULE__, Symbol("DestroyWindow"))
    @eval @doc """
    DestroyWindow(Window *)

Destroy a window.

$(
    if DestroyWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroyWindow), r"^No documentation found.\n" => "")
    end
)
""" DestroyWindow
end

if isdefined(@__MODULE__, Symbol("GetDesktopDisplayMode"))
    @eval @doc """
    GetDesktopDisplayMode(int, DisplayMode *)

Fill in information about the desktop display mode.

$(
    if GetDesktopDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDesktopDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" GetDesktopDisplayMode
end

if isdefined(@__MODULE__, Symbol("GL_SwapWindow"))
    @eval @doc """
    GL_SwapWindow(Window *)

Swap the OpenGL buffers for a window, if double-buffering is
      supported.

$(
    if GL_SwapWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_SwapWindow), r"^No documentation found.\n" => "")
    end
)
""" GL_SwapWindow
end

if isdefined(@__MODULE__, Symbol("FreeFormat"))
    @eval @doc """
    FreeFormat(PixelFormat *)

Free an PixelFormat structure.

$(
    if FreeFormat === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FreeFormat), r"^No documentation found.\n" => "")
    end
)
""" FreeFormat
end

if isdefined(@__MODULE__, Symbol("HapticCustom"))
    @eval @doc """
    HapticCustom

A structure containing a template for the ::HAPTIC_CUSTOM effect.

This struct is exclusively for the ::HAPTIC_CUSTOM effect.

A custom force feedback effect is much like a periodic effect, where the
application can define its exact shape.  You will have to allocate the
data yourself.  Data should consist of channels * samples Uint16 samples.

If channels is one, the effect is rotated using the defined direction.
Otherwise it uses the samples in data for the different axes.

 - `HAPTIC_CUSTOM`
 - `HapticEffect`

$(
    if HapticCustom === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticCustom), r"^No documentation found.\n" => "")
    end
)
""" HapticCustom
end

if isdefined(@__MODULE__, Symbol("RenderDrawPoints"))
    @eval @doc """
    RenderDrawPoints(Renderer *, const Point *, int)

Draw multiple points on the current rendering target.

param: renderer The renderer which should draw multiple points.
param: points The points to draw
param: count The number of points to draw

Return 0 on success, or -1 on error

$(
    if RenderDrawPoints === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawPoints), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawPoints
end

if isdefined(@__MODULE__, Symbol("ConvertPixels"))
    @eval @doc """
    ConvertPixels(int, int, Uint32, const void *, int, Uint32, void *, int)

Copy a block of pixels of one format to another format

Return 0 on success, or -1 if there was an error

$(
    if ConvertPixels === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ConvertPixels), r"^No documentation found.\n" => "")
    end
)
""" ConvertPixels
end

if isdefined(@__MODULE__, Symbol("TryLockMutex"))
    @eval @doc """
    TryLockMutex(mutex *)

Try to lock the mutex

Return 0, MUTEX_TIMEDOUT, or -1 on error

$(
    if TryLockMutex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TryLockMutex), r"^No documentation found.\n" => "")
    end
)
""" TryLockMutex
end

if isdefined(@__MODULE__, Symbol("HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION"))
    @eval @doc """
    HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION

Android APK expansion main file version. Should be a string number like "1", "2" etc.

Must be set together with HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION.

If both hints were set then RWFromFile() will look into expansion files
after a given relative path was not found in the internal storage and assets.

By default this hint is not set and the APK expansion files are not searched.

$(
    if HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION), r"^No documentation found.\n" => "")
    end
)
""" HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION
end

if isdefined(@__MODULE__, Symbol("ComposeCustomBlendMode"))
    @eval @doc """
    ComposeCustomBlendMode(BlendFactor, BlendFactor, BlendOperation, BlendFactor, BlendFactor, BlendOperation)

Create a custom blend mode, which may or may not be supported by a given renderer

param: srcColorFactor source color factor
param: dstColorFactor destination color factor
param: colorOperation color operation
param: srcAlphaFactor source alpha factor
param: dstAlphaFactor destination alpha factor
param: alphaOperation alpha operation

The result of the blend mode operation will be:
    dstRGB = dstRGB * dstColorFactor colorOperation srcRGB * srcColorFactor
and
    dstA = dstA * dstAlphaFactor alphaOperation srcA * srcAlphaFactor

$(
    if ComposeCustomBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ComposeCustomBlendMode), r"^No documentation found.\n" => "")
    end
)
""" ComposeCustomBlendMode
end

if isdefined(@__MODULE__, Symbol("JoyHatEvent"))
    @eval @doc """
    JoyHatEvent

Joystick hat position change event structure (event.jhat.*)

$(
    if JoyHatEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoyHatEvent), r"^No documentation found.\n" => "")
    end
)
""" JoyHatEvent
end

if isdefined(@__MODULE__, Symbol("GetTextureBlendMode"))
    @eval @doc """
    GetTextureBlendMode(Texture *, BlendMode *)

Get the blend mode used for texture copy operations.

param: texture   The texture to query.
param: blendMode A pointer filled in with the current blend mode.

Return 0 on success, or -1 if the texture is not valid.

 - `SetTextureBlendMode()`

$(
    if GetTextureBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTextureBlendMode), r"^No documentation found.\n" => "")
    end
)
""" GetTextureBlendMode
end

if isdefined(@__MODULE__, Symbol("SensorEvent"))
    @eval @doc """
    SensorEvent

Sensor event structure (event.sensor.*)

$(
    if SensorEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorEvent), r"^No documentation found.\n" => "")
    end
)
""" SensorEvent
end

if isdefined(@__MODULE__, Symbol("RenderTargetSupported"))
    @eval @doc """
    RenderTargetSupported(Renderer *)

Determines whether a window supports the use of render targets

param: renderer The renderer that will be checked

Return TRUE if supported, FALSE if not.

$(
    if RenderTargetSupported === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderTargetSupported), r"^No documentation found.\n" => "")
    end
)
""" RenderTargetSupported
end

if isdefined(@__MODULE__, Symbol("AtomicAdd"))
    @eval @doc """
    AtomicAdd(atomic_t *, int)

Add to an atomic variable.

Return The previous value of the atomic variable.

!!!note

    This same style can be used for any number operation

$(
    if AtomicAdd === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicAdd), r"^No documentation found.\n" => "")
    end
)
""" AtomicAdd
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_NORMAL_SPEED_SCALE"))
    @eval @doc """
    HINT_MOUSE_NORMAL_SPEED_SCALE

 A variable setting the speed scale for mouse motion, in floating point, when the mouse is not in relative mode

$(
    if HINT_MOUSE_NORMAL_SPEED_SCALE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_NORMAL_SPEED_SCALE), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_NORMAL_SPEED_SCALE
end

if isdefined(@__MODULE__, Symbol("InitSubSystem"))
    @eval @doc """
    InitSubSystem(Uint32)

This function initializes specific SDL subsystems

Subsystem initialization is ref-counted, you must call
QuitSubSystem() for each InitSubSystem() to correctly
shutdown a subsystem manually (or call Quit() to force shutdown).
If a subsystem is already loaded then this call will
increase the ref-count and return.

$(
    if InitSubSystem === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc InitSubSystem), r"^No documentation found.\n" => "")
    end
)
""" InitSubSystem
end

if isdefined(@__MODULE__, Symbol("UpperBlitScaled"))
    @eval @doc """
    UpperBlitScaled(Surface *, const Rect *, Surface *, Rect *)

This is the public scaled blit function, BlitScaled(), and it performs
rectangle validation and clipping before passing it to LowerBlitScaled()

$(
    if UpperBlitScaled === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpperBlitScaled), r"^No documentation found.\n" => "")
    end
)
""" UpperBlitScaled
end

if isdefined(@__MODULE__, Symbol("RenderGetScale"))
    @eval @doc """
    RenderGetScale(Renderer *, float *, float *)

Get the drawing scale for the current target.

param: renderer The renderer from which drawing scale should be queried.
param: scaleX A pointer filled in with the horizontal scaling factor
param: scaleY A pointer filled in with the vertical scaling factor

 - `RenderSetScale()`

$(
    if RenderGetScale === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderGetScale), r"^No documentation found.\n" => "")
    end
)
""" RenderGetScale
end

if isdefined(@__MODULE__, Symbol("RenderCopyEx"))
    @eval @doc """
    RenderCopyEx(Renderer *, Texture *, const Rect *, const Rect *, const double, const Point *, const RendererFlip)

Copy a portion of the source texture to the current rendering target, rotating it by angle around the given center

param: renderer The renderer which should copy parts of a texture.
param: texture The source texture.
param: srcrect   A pointer to the source rectangle, or NULL for the entire
                 texture.
param: dstrect   A pointer to the destination rectangle, or NULL for the
                 entire rendering target.
param: angle    An angle in degrees that indicates the rotation that will be applied to dstrect, rotating it in a clockwise direction
param: center   A pointer to a point indicating the point around which dstrect will be rotated (if NULL, rotation will be done around dstrect.w/2, dstrect.h/2).
param: flip     An RendererFlip value stating which flipping actions should be performed on the texture

Return 0 on success, or -1 on error

$(
    if RenderCopyEx === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderCopyEx), r"^No documentation found.\n" => "")
    end
)
""" RenderCopyEx
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS"))
    @eval @doc """
    HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS

 A variable that lets you enable joystick (and gamecontroller) events even when your app is in the background.

The variable can be set to the following values:
  "0"       - Disable joystick & gamecontroller input events when the
              application is in the background.
  "1"       - Enable joystick & gamecontroller input events when the
              application is in the background.

The default value is "0".  This hint may be set at any time.

$(
    if HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS
end

if isdefined(@__MODULE__, Symbol("GetThreadID"))
    @eval @doc """
    GetThreadID(Thread *)

Get the thread identifier for the specified thread.

Equivalent to ThreadID() if the specified thread is NULL.

$(
    if GetThreadID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetThreadID), r"^No documentation found.\n" => "")
    end
)
""" GetThreadID
end

if isdefined(@__MODULE__, Symbol("GetCurrentDisplayMode"))
    @eval @doc """
    GetCurrentDisplayMode(int, DisplayMode *)

Fill in information about the current display mode.

$(
    if GetCurrentDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCurrentDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" GetCurrentDisplayMode
end

if isdefined(@__MODULE__, Symbol("SetWindowSize"))
    @eval @doc """
    SetWindowSize(Window *, int, int)

Set the size of a window's client area.

param: window   The window to resize.
param: w        The width of the window, in screen coordinates. Must be >0.
param: h        The height of the window, in screen coordinates. Must be >0.

!!!note

    Fullscreen windows automatically match the size of the display mode,
      and you should use SetWindowDisplayMode() to change their size.

The window size in screen coordinates may differ from the size in pixels, if
the window was created with WINDOW_ALLOW_HIGHDPI on a platform with
high-dpi support (e.g. iOS or OS X). Use GL_GetDrawableSize() or
GetRendererOutputSize() to get the real client area size in pixels.

 - `GetWindowSize()`
 - `SetWindowDisplayMode()`

$(
    if SetWindowSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowSize), r"^No documentation found.\n" => "")
    end
)
""" SetWindowSize
end

if isdefined(@__MODULE__, Symbol("RenderDrawRectsF"))
    @eval @doc """
    RenderDrawRectsF(Renderer *, const FRect *, int)

Draw some number of rectangles on the current rendering target.

param: renderer The renderer which should draw multiple rectangles.
param: rects A pointer to an array of destination rectangles.
param: count The number of rectangles.

Return 0 on success, or -1 on error

$(
    if RenderDrawRectsF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderDrawRectsF), r"^No documentation found.\n" => "")
    end
)
""" RenderDrawRectsF
end

if isdefined(@__MODULE__, Symbol("GetWindowSize"))
    @eval @doc """
    GetWindowSize(Window *, int *, int *)

Get the size of a window's client area.

param: window   The window to query.
param: w        Pointer to variable for storing the width, in screen
                coordinates. May be NULL.
param: h        Pointer to variable for storing the height, in screen
                coordinates. May be NULL.

The window size in screen coordinates may differ from the size in pixels, if
the window was created with WINDOW_ALLOW_HIGHDPI on a platform with
high-dpi support (e.g. iOS or OS X). Use GL_GetDrawableSize() or
GetRendererOutputSize() to get the real client area size in pixels.

 - `SetWindowSize()`

$(
    if GetWindowSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowSize), r"^No documentation found.\n" => "")
    end
)
""" GetWindowSize
end

if isdefined(@__MODULE__, Symbol("HapticLeftRight"))
    @eval @doc """
    HapticLeftRight

A structure containing a template for a Left/Right effect.

This struct is exclusively for the ::HAPTIC_LEFTRIGHT effect.

The Left/Right effect is used to explicitly control the large and small
motors, commonly found in modern game controllers. The small (right) motor
is high frequency, and the large (left) motor is low frequency.

 - `HAPTIC_LEFTRIGHT`
 - `HapticEffect`

$(
    if HapticLeftRight === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticLeftRight), r"^No documentation found.\n" => "")
    end
)
""" HapticLeftRight
end

if isdefined(@__MODULE__, Symbol("HapticNewEffect"))
    @eval @doc """
    HapticNewEffect(Haptic *, HapticEffect *)

Creates a new haptic effect on the device.

param: haptic Haptic device to create the effect on.
param: effect Properties of the effect to create.
Return The identifier of the effect on success or -1 on error.

 - `HapticUpdateEffect`
 - `HapticRunEffect`
 - `HapticDestroyEffect`

$(
    if HapticNewEffect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticNewEffect), r"^No documentation found.\n" => "")
    end
)
""" HapticNewEffect
end

if isdefined(@__MODULE__, Symbol("RenderCopy"))
    @eval @doc """
    RenderCopy(Renderer *, Texture *, const Rect *, const Rect *)

Copy a portion of the texture to the current rendering target.

param: renderer The renderer which should copy parts of a texture.
param: texture The source texture.
param: srcrect   A pointer to the source rectangle, or NULL for the entire
                 texture.
param: dstrect   A pointer to the destination rectangle, or NULL for the
                 entire rendering target.

Return 0 on success, or -1 on error

$(
    if RenderCopy === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderCopy), r"^No documentation found.\n" => "")
    end
)
""" RenderCopy
end

if isdefined(@__MODULE__, Symbol("FilterEvents"))
    @eval @doc """
    FilterEvents(EventFilter, void *)

Run the filter function on the current event queue, removing any
events for which the filter returns 0.

$(
    if FilterEvents === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FilterEvents), r"^No documentation found.\n" => "")
    end
)
""" FilterEvents
end

if isdefined(@__MODULE__, Symbol("JoystickUpdate"))
    @eval @doc """
    JoystickUpdate()

Update the current state of the open joysticks.

This is called automatically by the event loop if any joystick
events are enabled.

$(
    if JoystickUpdate === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickUpdate), r"^No documentation found.\n" => "")
    end
)
""" JoystickUpdate
end

if isdefined(@__MODULE__, Symbol("GetRenderTarget"))
    @eval @doc """
    GetRenderTarget(Renderer *)

Get the current render target or NULL for the default render target.

Return The current render target

 - `SetRenderTarget()`

$(
    if GetRenderTarget === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRenderTarget), r"^No documentation found.\n" => "")
    end
)
""" GetRenderTarget
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceGUID"))
    @eval @doc """
    JoystickGetDeviceGUID(int)

Return the GUID for the joystick at this index
This can be called before any joysticks are opened.

$(
    if JoystickGetDeviceGUID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceGUID), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceGUID
end

if isdefined(@__MODULE__, Symbol("AtomicGet"))
    @eval @doc """
    AtomicGet(atomic_t *)

Get the value of an atomic variable

$(
    if AtomicGet === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicGet), r"^No documentation found.\n" => "")
    end
)
""" AtomicGet
end

if isdefined(@__MODULE__, Symbol("GetKeyName"))
    @eval @doc """
    GetKeyName(Keycode)

Get a human-readable name for a key.

Return A pointer to a UTF-8 string that stays valid at least until the next
        call to this function. If you need it around any longer, you must
        copy it.  If the key doesn't have a name, this function returns an
        empty string ("").

 - `Keycode`

$(
    if GetKeyName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetKeyName), r"^No documentation found.\n" => "")
    end
)
""" GetKeyName
end

if isdefined(@__MODULE__, Symbol("SoftStretch"))
    @eval @doc """
    SoftStretch(Surface *, const Rect *, Surface *, const Rect *)

Perform a fast, low quality, stretch blit between two surfaces of the
       same pixel format.

!!!note

    This function uses a static buffer, and is not thread-safe.

$(
    if SoftStretch === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SoftStretch), r"^No documentation found.\n" => "")
    end
)
""" SoftStretch
end

if isdefined(@__MODULE__, Symbol("OpenAudioDevice"))
    @eval @doc """
    OpenAudioDevice(const char *, int, const AudioSpec *, AudioSpec *, int)

Open a specific audio device. Passing in a device name of NULL requests
the most reasonable default (and is equivalent to calling OpenAudio()).

The device name is a UTF-8 string reported by GetAudioDeviceName(), but
some drivers allow arbitrary and driver-specific strings, such as a
hostname/IP address for a remote audio server, or a filename in the
diskaudio driver.

Return 0 on error, a valid device ID that is >= 2 on success.

OpenAudio(), unlike this function, always acts on device ID 1.

$(
    if OpenAudioDevice === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc OpenAudioDevice), r"^No documentation found.\n" => "")
    end
)
""" OpenAudioDevice
end

if isdefined(@__MODULE__, Symbol("SetSurfaceAlphaMod"))
    @eval @doc """
    SetSurfaceAlphaMod(Surface *, Uint8)

Set an additional alpha value used in blit operations.

param: surface The surface to update.
param: alpha The alpha value multiplied into blit operations.

Return 0 on success, or -1 if the surface is not valid.

 - `GetSurfaceAlphaMod()`

$(
    if SetSurfaceAlphaMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetSurfaceAlphaMod), r"^No documentation found.\n" => "")
    end
)
""" SetSurfaceAlphaMod
end

if isdefined(@__MODULE__, Symbol("GetCPUCacheLineSize"))
    @eval @doc """
    GetCPUCacheLineSize()

This function returns the L1 cache line size of the CPU

This is useful for determining multi-threaded structure padding
or SIMD prefetch sizes.

$(
    if GetCPUCacheLineSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetCPUCacheLineSize), r"^No documentation found.\n" => "")
    end
)
""" GetCPUCacheLineSize
end

if isdefined(@__MODULE__, Symbol("GetPerformanceFrequency"))
    @eval @doc """
    GetPerformanceFrequency()

Get the count per second of the high resolution counter

$(
    if GetPerformanceFrequency === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetPerformanceFrequency), r"^No documentation found.\n" => "")
    end
)
""" GetPerformanceFrequency
end

if isdefined(@__MODULE__, Symbol("GameControllerClose"))
    @eval @doc """
    GameControllerClose(GameController *)

Close a controller previously opened with GameControllerOpen().

$(
    if GameControllerClose === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerClose), r"^No documentation found.\n" => "")
    end
)
""" GameControllerClose
end

if isdefined(@__MODULE__, Symbol("HINT_AUDIO_RESAMPLING_MODE"))
    @eval @doc """
    HINT_AUDIO_RESAMPLING_MODE

 A variable controlling speed/quality tradeoff of audio resampling.

If available, SDL can use libsamplerate ( http://www.mega-nerd.com/SRC/ )
to handle audio resampling. There are different resampling modes available
that produce different levels of quality, using more CPU.

If this hint isn't specified to a valid setting, or libsamplerate isn't
available, SDL will use the default, internal resampling algorithm.

Note that this is currently only applicable to resampling audio that is
being written to a device for playback or audio being read from a device
for capture. AudioCVT always uses the default resampler (although this
might change for SDL 2.1).

This hint is currently only checked at audio subsystem initialization.

This variable can be set to the following values:

  "0" or "default" - Use SDL's internal resampling (Default when not set - low quality, fast)
  "1" or "fast"    - Use fast, slightly higher quality resampling, if available
  "2" or "medium"  - Use medium quality resampling, if available
  "3" or "best"    - Use high quality resampling, if available

$(
    if HINT_AUDIO_RESAMPLING_MODE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_AUDIO_RESAMPLING_MODE), r"^No documentation found.\n" => "")
    end
)
""" HINT_AUDIO_RESAMPLING_MODE
end

if isdefined(@__MODULE__, Symbol("FORCE_INLINE"))
    @eval @doc """
    FORCE_INLINE

Returns true if the two rectangles are equal.

$(
    if FORCE_INLINE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FORCE_INLINE), r"^No documentation found.\n" => "")
    end
)
""" FORCE_INLINE
end

if isdefined(@__MODULE__, Symbol("JoystickSetPlayerIndex"))
    @eval @doc """
    JoystickSetPlayerIndex(Joystick *, int)

Set the player index of an opened joystick

$(
    if JoystickSetPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickSetPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" JoystickSetPlayerIndex
end

if isdefined(@__MODULE__, Symbol("RenderFillRectsF"))
    @eval @doc """
    RenderFillRectsF(Renderer *, const FRect *, int)

Fill some number of rectangles on the current rendering target with the drawing color.

param: renderer The renderer which should fill multiple rectangles.
param: rects A pointer to an array of destination rectangles.
param: count The number of rectangles.

Return 0 on success, or -1 on error

$(
    if RenderFillRectsF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderFillRectsF), r"^No documentation found.\n" => "")
    end
)
""" RenderFillRectsF
end

if isdefined(@__MODULE__, Symbol("AudioDeviceEvent"))
    @eval @doc """
    AudioDeviceEvent

Audio device event structure (event.adevice.*)

$(
    if AudioDeviceEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioDeviceEvent), r"^No documentation found.\n" => "")
    end
)
""" AudioDeviceEvent
end

if isdefined(@__MODULE__, Symbol("FreeCursor"))
    @eval @doc """
    FreeCursor(Cursor *)

Frees a cursor created with CreateCursor() or similar functions.

 - `CreateCursor()`
 - `CreateColorCursor()`
 - `CreateSystemCursor()`

$(
    if FreeCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FreeCursor), r"^No documentation found.\n" => "")
    end
)
""" FreeCursor
end

if isdefined(@__MODULE__, Symbol("RenderSetLogicalSize"))
    @eval @doc """
    RenderSetLogicalSize(Renderer *, int, int)

Set device independent resolution for rendering

param: renderer The renderer for which resolution should be set.
param: w      The width of the logical resolution
param: h      The height of the logical resolution

This function uses the viewport and scaling functionality to allow a fixed logical
resolution for rendering, regardless of the actual output resolution.  If the actual
output resolution doesn't have the same aspect ratio the output rendering will be
centered within the output display.

If the output display is a window, mouse events in the window will be filtered
and scaled so they seem to arrive within the logical resolution.

!!!note

    If this function results in scaling or subpixel drawing by the
      rendering backend, it will be handled using the appropriate
      quality hints.

 - `RenderGetLogicalSize()`
 - `RenderSetScale()`
 - `RenderSetViewport()`

$(
    if RenderSetLogicalSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderSetLogicalSize), r"^No documentation found.\n" => "")
    end
)
""" RenderSetLogicalSize
end

if isdefined(@__MODULE__, Symbol("PollEvent"))
    @eval @doc """
    PollEvent(Event *)

Polls for currently pending events.

Return 1 if there are any pending events, or 0 if there are none available.

param: event If not NULL, the next event is removed from the queue and
             stored in that area.

$(
    if PollEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PollEvent), r"^No documentation found.\n" => "")
    end
)
""" PollEvent
end

if isdefined(@__MODULE__, Symbol("UpdateWindowSurfaceRects"))
    @eval @doc """
    UpdateWindowSurfaceRects(Window *, const Rect *, int)

Copy a number of rectangles on the window surface to the screen.

Return 0 on success, or -1 on error.

 - `GetWindowSurface()`
 - `UpdateWindowSurface()`

$(
    if UpdateWindowSurfaceRects === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UpdateWindowSurfaceRects), r"^No documentation found.\n" => "")
    end
)
""" UpdateWindowSurfaceRects
end

if isdefined(@__MODULE__, Symbol("MouseIsHaptic"))
    @eval @doc """
    MouseIsHaptic()

Gets whether or not the current mouse has haptic capabilities.

Return TRUE if the mouse is haptic, FALSE if it isn't.

 - `HapticOpenFromMouse`

$(
    if MouseIsHaptic === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MouseIsHaptic), r"^No documentation found.\n" => "")
    end
)
""" MouseIsHaptic
end

if isdefined(@__MODULE__, Symbol("HAPTIC_RAMP"))
    @eval @doc """
    HAPTIC_RAMP

Ramp effect supported.

Ramp haptic effect.

 - `HapticRamp`

$(
    if HAPTIC_RAMP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_RAMP), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_RAMP
end

if isdefined(@__MODULE__, Symbol("Vulkan_CreateSurface"))
    @eval @doc """
    Vulkan_CreateSurface(Window *, VkInstance, VkSurfaceKHR *)

Create a Vulkan rendering surface for a window.

param: [in]  window   Window to which to attach the rendering surface.
param: [in]  instance handle to the Vulkan instance to use.
param: [out] surface  pointer to a VkSurfaceKHR handle to receive the
                      handle of the newly created surface.

Return `TRUE` on success, `FALSE` on error.

```C
VkInstance instance;
Window *window;

// create instance and window

// create the Vulkan surface
VkSurfaceKHR surface;
if(!Vulkan_CreateSurface(window, instance, &surface))
    handle_error();
```

!!!note

    :a window should have been created with the `WINDOW_VULKAN` flag.

!!!note

    :a instance should have been created with the extensions returned
      by `Vulkan_CreateSurface()` enabled.

 - `Vulkan_GetInstanceExtensions()`

$(
    if Vulkan_CreateSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_CreateSurface), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_CreateSurface
end

if isdefined(@__MODULE__, Symbol("RenderSetScale"))
    @eval @doc """
    RenderSetScale(Renderer *, float, float)

Set the drawing scale for rendering on the current target.

param: renderer The renderer for which the drawing scale should be set.
param: scaleX The horizontal scaling factor
param: scaleY The vertical scaling factor

The drawing coordinates are scaled by the x/y scaling factors
before they are used by the renderer.  This allows resolution
independent drawing with a single coordinate system.

!!!note

    If this results in scaling or subpixel drawing by the
      rendering backend, it will be handled using the appropriate
      quality hints.  For best results use integer scaling factors.

 - `RenderGetScale()`
 - `RenderSetLogicalSize()`

$(
    if RenderSetScale === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderSetScale), r"^No documentation found.\n" => "")
    end
)
""" RenderSetScale
end

if isdefined(@__MODULE__, Symbol("GetRelativeMouseMode"))
    @eval @doc """
    GetRelativeMouseMode()

Query whether relative mouse mode is enabled.

 - `SetRelativeMouseMode()`

$(
    if GetRelativeMouseMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRelativeMouseMode), r"^No documentation found.\n" => "")
    end
)
""" GetRelativeMouseMode
end

if isdefined(@__MODULE__, Symbol("IsGameController"))
    @eval @doc """
    IsGameController(int)

Is the joystick on this index supported by the game controller interface?

$(
    if IsGameController === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IsGameController), r"^No documentation found.\n" => "")
    end
)
""" IsGameController
end

if isdefined(@__MODULE__, Symbol("WindowEvent"))
    @eval @doc """
    WindowEvent

Window state change event data (event.window.*)

$(
    if WindowEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WindowEvent), r"^No documentation found.\n" => "")
    end
)
""" WindowEvent
end

if isdefined(@__MODULE__, Symbol("SetTextInputRect"))
    @eval @doc """
    SetTextInputRect(Rect *)

Set the rectangle used to type Unicode text inputs.
       This is used as a hint for IME and on-screen keyboard placement.

 - `StartTextInput()`

$(
    if SetTextInputRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetTextInputRect), r"^No documentation found.\n" => "")
    end
)
""" SetTextInputRect
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_LOGICAL_SIZE_MODE"))
    @eval @doc """
    HINT_RENDER_LOGICAL_SIZE_MODE

 A variable controlling the scaling policy for RenderSetLogicalSize.

This variable can be set to the following values:
  "0" or "letterbox" - Uses letterbox/sidebars to fit the entire rendering on screen
  "1" or "overscan"  - Will zoom the rendering so it fills the entire screen, allowing edges to be drawn offscreen

By default letterbox is used

$(
    if HINT_RENDER_LOGICAL_SIZE_MODE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_LOGICAL_SIZE_MODE), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_LOGICAL_SIZE_MODE
end

if isdefined(@__MODULE__, Symbol("SetPaletteColors"))
    @eval @doc """
    SetPaletteColors(Palette *, const Color *, int, int)

Set a range of colors in a palette.

param: palette    The palette to modify.
param: colors     An array of colors to copy into the palette.
param: firstcolor The index of the first palette entry to modify.
param: ncolors    The number of entries to modify.

Return 0 on success, or -1 if not all of the colors could be set.

$(
    if SetPaletteColors === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetPaletteColors), r"^No documentation found.\n" => "")
    end
)
""" SetPaletteColors
end

if isdefined(@__MODULE__, Symbol("SetWindowTitle"))
    @eval @doc """
    SetWindowTitle(Window *, const char *)

Set the title of a window, in UTF-8 format.

 - `GetWindowTitle()`

$(
    if SetWindowTitle === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowTitle), r"^No documentation found.\n" => "")
    end
)
""" SetWindowTitle
end

if isdefined(@__MODULE__, Symbol("SemPost"))
    @eval @doc """
    SemPost(sem *)

Atomically increases the semaphore's count (not blocking).

Return 0, or -1 on error.

$(
    if SemPost === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SemPost), r"^No documentation found.\n" => "")
    end
)
""" SemPost
end

if isdefined(@__MODULE__, Symbol("GetNumAllocations"))
    @eval @doc """
    GetNumAllocations()

Get the number of outstanding (unfreed) allocations

$(
    if GetNumAllocations === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumAllocations), r"^No documentation found.\n" => "")
    end
)
""" GetNumAllocations
end

if isdefined(@__MODULE__, Symbol("HINT_NO_SIGNAL_HANDLERS"))
    @eval @doc """
    HINT_NO_SIGNAL_HANDLERS

Tell SDL not to catch the SIGINT or SIGTERM signals.

This hint only applies to Unix-like platforms.

The variable can be set to the following values:
 "0"       - SDL will install a SIGINT and SIGTERM handler, and when it
             catches a signal, convert it into an QUIT event.
 "1"       - SDL will not install a signal handler at all.

$(
    if HINT_NO_SIGNAL_HANDLERS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_NO_SIGNAL_HANDLERS), r"^No documentation found.\n" => "")
    end
)
""" HINT_NO_SIGNAL_HANDLERS
end

if isdefined(@__MODULE__, Symbol("GL_UnloadLibrary"))
    @eval @doc """
    GL_UnloadLibrary()

Unload the OpenGL library previously loaded by GL_LoadLibrary().

 - `GL_LoadLibrary()`

$(
    if GL_UnloadLibrary === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_UnloadLibrary), r"^No documentation found.\n" => "")
    end
)
""" GL_UnloadLibrary
end

if isdefined(@__MODULE__, Symbol("GetNumAudioDevices"))
    @eval @doc """
    GetNumAudioDevices(int)

Get the number of available devices exposed by the current driver.
Only valid after a successfully initializing the audio subsystem.
Returns -1 if an explicit list of devices can't be determined; this is
not an error. For example, if SDL is set up to talk to a remote audio
server, it can't list every one available on the Internet, but it will
still allow a specific host to be specified to OpenAudioDevice().

In many common cases, when this function returns a value <= 0, it can still
successfully open the default device (NULL for first argument of
OpenAudioDevice()).

$(
    if GetNumAudioDevices === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumAudioDevices), r"^No documentation found.\n" => "")
    end
)
""" GetNumAudioDevices
end

if isdefined(@__MODULE__, Symbol("IsScreenKeyboardShown"))
    @eval @doc """
    IsScreenKeyboardShown(Window *)

Returns whether the screen keyboard is shown for given window.

param: window The window for which screen keyboard should be queried.

Return TRUE if screen keyboard is shown else FALSE.

 - `HasScreenKeyboardSupport()`

$(
    if IsScreenKeyboardShown === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IsScreenKeyboardShown), r"^No documentation found.\n" => "")
    end
)
""" IsScreenKeyboardShown
end

if isdefined(@__MODULE__, Symbol("SetWindowResizable"))
    @eval @doc """
    SetWindowResizable(Window *, bool)

Set the user-resizable state of a window.

This will add or remove the window's WINDOW_RESIZABLE flag and
allow/disallow user resizing of the window. This is a no-op if the
window's resizable state already matches the requested state.

param: window The window of which to change the resizable state.
param: resizable TRUE to allow resizing, FALSE to disallow.

!!!note

    You can't change the resizable state of a fullscreen window.

 - `GetWindowFlags()`

$(
    if SetWindowResizable === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowResizable), r"^No documentation found.\n" => "")
    end
)
""" SetWindowResizable
end

if isdefined(@__MODULE__, Symbol("GL_GetCurrentWindow"))
    @eval @doc """
    GL_GetCurrentWindow()

Get the currently active OpenGL window.

$(
    if GL_GetCurrentWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_GetCurrentWindow), r"^No documentation found.\n" => "")
    end
)
""" GL_GetCurrentWindow
end

if isdefined(@__MODULE__, Symbol("MouseMotionEvent"))
    @eval @doc """
    MouseMotionEvent

Mouse motion event structure (event.motion.*)

$(
    if MouseMotionEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MouseMotionEvent), r"^No documentation found.\n" => "")
    end
)
""" MouseMotionEvent
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_NET_WM_PING"))
    @eval @doc """
    HINT_VIDEO_X11_NET_WM_PING

 A variable controlling whether the X11 _NET_WM_PING protocol should be supported.

This variable can be set to the following values:
  "0"       - Disable _NET_WM_PING
  "1"       - Enable _NET_WM_PING

By default SDL will use _NET_WM_PING, but for applications that know they
will not always be able to respond to ping requests in a timely manner they can
turn it off to avoid the window manager thinking the app is hung.
The hint is checked in CreateWindow.

$(
    if HINT_VIDEO_X11_NET_WM_PING === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_NET_WM_PING), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_NET_WM_PING
end

if isdefined(@__MODULE__, Symbol("DropEvent"))
    @eval @doc """
    DropEvent

An event used to request a file open by the system (event.drop.*)
       This event is enabled by default, you can disable it with EventState().
!!!note

    If this event is enabled, you must free the filename in the event.

$(
    if DropEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DropEvent), r"^No documentation found.\n" => "")
    end
)
""" DropEvent
end

if isdefined(@__MODULE__, Symbol("SIMDAlloc"))
    @eval @doc """
    SIMDAlloc(const size_t)

Allocate memory in a SIMD-friendly way.

This will allocate a block of memory that is suitable for use with SIMD
instructions. Specifically, it will be properly aligned and padded for
the system's supported vector instructions.

The memory returned will be padded such that it is safe to read or write
an incomplete vector at the end of the memory block. This can be useful
so you don't have to drop back to a scalar fallback at the end of your
SIMD processing loop to deal with the final elements without overflowing
the allocated buffer.

You must free this memory with FreeSIMD(), not free() or free()
or delete[], etc.

Note that SDL will only deal with SIMD instruction sets it is aware of;
for example, SDL 2.0.8 knows that SSE wants 16-byte vectors
(HasSSE()), and AVX2 wants 32 bytes (HasAVX2()), but doesn't
know that AVX-512 wants 64. To be clear: if you can't decide to use an
instruction set with an Has*() function, don't use that instruction
set with memory allocated through here.

AllocSIMD(0) will return a non-NULL pointer, assuming the system isn't
out of memory.

param: len The length, in bytes, of the block to allocated. The actual
           allocated block might be larger due to padding, etc.
Return Pointer to newly-allocated block, NULL if out of memory.

 - `SIMDAlignment`
 - `SIMDFree`

$(
    if SIMDAlloc === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SIMDAlloc), r"^No documentation found.\n" => "")
    end
)
""" SIMDAlloc
end

if isdefined(@__MODULE__, Symbol("GetNumVideoDisplays"))
    @eval @doc """
    GetNumVideoDisplays()

Returns the number of available video displays.

 - `GetDisplayBounds()`

$(
    if GetNumVideoDisplays === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetNumVideoDisplays), r"^No documentation found.\n" => "")
    end
)
""" GetNumVideoDisplays
end

if isdefined(@__MODULE__, Symbol("ControllerDeviceEvent"))
    @eval @doc """
    ControllerDeviceEvent

Controller device event structure (event.cdevice.*)

$(
    if ControllerDeviceEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc ControllerDeviceEvent), r"^No documentation found.\n" => "")
    end
)
""" ControllerDeviceEvent
end

if isdefined(@__MODULE__, Symbol("Vulkan_LoadLibrary"))
    @eval @doc """
    Vulkan_LoadLibrary(const char *)

Dynamically load a Vulkan loader library.

param: [in] path The platform dependent Vulkan loader library name, or
            `NULL.

:return` `0` on success, or `-1` if the library couldn't be loaded.

If :a path is NULL SDL will use the value of the environment variable
`VULKAN_LIBRARY,` if set, otherwise it loads the default Vulkan
loader library.

This should be called after initializing the video driver, but before
creating any Vulkan windows. If no Vulkan loader library is loaded, the
default library will be loaded upon creation of the first Vulkan window.

!!!note

    It is fairly common for Vulkan applications to link with :a libvulkan
      instead of explicitly loading it at run time. This will work with
      SDL provided the application links to a dynamic library and both it
      and SDL use the same search path.

!!!note

    If you specify a non-NULL `path,` an application should retrieve all
      of the Vulkan functions it uses from the dynamic library using
      `Vulkan_GetVkGetInstanceProcAddr()` unless you can guarantee
      `path` points to the same vulkan loader library the application
      linked to.

!!!note

    On Apple devices, if :a path is NULL, SDL will attempt to find
      the vkGetInstanceProcAddr address within all the mach-o images of
      the current process. This is because it is fairly common for Vulkan
      applications to link with libvulkan (and historically MoltenVK was
      provided as a static library). If it is not found then, on macOS, SDL
      will attempt to load `vulkan.framework/vulkan,` `libvulkan.1.dylib,
`      followed by `libvulkan.dylib,` in that order.
      On iOS SDL will attempt to load `libvulkan.dylib` only. Applications
      using a dynamic framework or .dylib must ensure it is included in its
      application bundle.

!!!note

    On non-Apple devices, application linking with a static libvulkan is
      not supported. Either do not link to the Vulkan loader or link to a
      dynamic library version.

!!!note

    This function will fail if there are no working Vulkan drivers
      installed.

 - `Vulkan_GetVkGetInstanceProcAddr()`
 - `Vulkan_UnloadLibrary()`

$(
    if Vulkan_LoadLibrary === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_LoadLibrary), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_LoadLibrary
end

if isdefined(@__MODULE__, Symbol("SysWMEvent"))
    @eval @doc """
    SysWMEvent

A video driver dependent system event (event.syswm.*)
       This event is disabled by default, you can enable it with EventState()

!!!note

    If you want to use this event, you should include syswm.h.

$(
    if SysWMEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SysWMEvent), r"^No documentation found.\n" => "")
    end
)
""" SysWMEvent
end

if isdefined(@__MODULE__, Symbol("DisplayEvent"))
    @eval @doc """
    DisplayEvent

Display state change event data (event.display.*)

$(
    if DisplayEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DisplayEvent), r"^No documentation found.\n" => "")
    end
)
""" DisplayEvent
end

if isdefined(@__MODULE__, Symbol("GetClosestDisplayMode"))
    @eval @doc """
    GetClosestDisplayMode(int, const DisplayMode *, DisplayMode *)

Get the closest match to the requested display mode.

param: displayIndex The index of display from which mode should be queried.
param: mode The desired display mode
param: closest A pointer to a display mode to be filled in with the closest
               match of the available display modes.

Return The passed in value `closest,` or NULL if no matching video mode
        was available.

The available display modes are scanned, and `closest` is filled in with the
closest mode matching the requested mode and returned.  The mode format and
refresh_rate default to the desktop mode if they are 0.  The modes are
scanned with size being first priority, format being second priority, and
finally checking the refresh_rate.  If all the available modes are too
small, then NULL is returned.

 - `GetNumDisplayModes()`
 - `GetDisplayMode()`

$(
    if GetClosestDisplayMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetClosestDisplayMode), r"^No documentation found.\n" => "")
    end
)
""" GetClosestDisplayMode
end

if isdefined(@__MODULE__, Symbol("CondBroadcast"))
    @eval @doc """
    CondBroadcast(cond *)

Restart all threads that are waiting on the condition variable.

Return 0 or -1 on error.

$(
    if CondBroadcast === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CondBroadcast), r"^No documentation found.\n" => "")
    end
)
""" CondBroadcast
end

if isdefined(@__MODULE__, Symbol("PushEvent"))
    @eval @doc """
    PushEvent(Event *)

Add an event to the event queue.

Return 1 on success, 0 if the event was filtered, or -1 if the event queue
        was full or there was some other error.

$(
    if PushEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PushEvent), r"^No documentation found.\n" => "")
    end
)
""" PushEvent
end

if isdefined(@__MODULE__, Symbol("GetTouchFinger"))
    @eval @doc """
    GetTouchFinger(TouchID, int)

Get the finger object of the given touch, with the given index.

$(
    if GetTouchFinger === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTouchFinger), r"^No documentation found.\n" => "")
    end
)
""" GetTouchFinger
end

if isdefined(@__MODULE__, Symbol("CreateRenderer"))
    @eval @doc """
    CreateRenderer(Window *, int, Uint32)

Create a 2D rendering context for a window.

param: window The window where rendering is displayed.
param: index    The index of the rendering driver to initialize, or -1 to
                initialize the first one supporting the requested flags.
param: flags    ::RendererFlags.

Return A valid rendering context or NULL if there was an error.

 - `CreateSoftwareRenderer()`
 - `GetRendererInfo()`
 - `DestroyRenderer()`

$(
    if CreateRenderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateRenderer), r"^No documentation found.\n" => "")
    end
)
""" CreateRenderer
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_DOUBLE_BUFFER"))
    @eval @doc """
    HINT_VIDEO_DOUBLE_BUFFER

Tell the video driver that we only want a double buffer.

By default, most lowlevel 2D APIs will use a triple buffer scheme that 
wastes no CPU time on waiting for vsync after issuing a flip, but
introduces a frame of latency. On the other hand, using a double buffer
scheme instead is recommended for cases where low latency is an important
factor because we save a whole frame of latency.
We do so by waiting for vsync immediately after issuing a flip, usually just
after eglSwapBuffers call in the backend's *_SwapWindow function.

Since it's driver-specific, it's only supported where possible and
implemented. Currently supported the following drivers:
- KMSDRM (kmsdrm)
- Raspberry Pi (raspberrypi)

$(
    if HINT_VIDEO_DOUBLE_BUFFER === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_DOUBLE_BUFFER), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_DOUBLE_BUFFER
end

if isdefined(@__MODULE__, Symbol("GetBasePath"))
    @eval @doc """
    GetBasePath()

Get the path where the application resides.

Get the "base path". This is the directory where the application was run
from, which is probably the installation directory, and may or may not
be the process's current working directory.

This returns an absolute path in UTF-8 encoding, and is guaranteed to
end with a path separator ('\\' on Windows, '/' most other places).

The pointer returned by this function is owned by you. Please call
free() on the pointer when you are done with it, or it will be a
memory leak. This is not necessarily a fast call, though, so you should
call this once near startup and save the string if you need it.

Some platforms can't determine the application's path, and on other
platforms, this might be meaningless. In such cases, this function will
return NULL.

Return String of base dir in UTF-8 encoding, or NULL on error.

 - `GetPrefPath`

$(
    if GetBasePath === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetBasePath), r"^No documentation found.\n" => "")
    end
)
""" GetBasePath
end

if isdefined(@__MODULE__, Symbol("SensorGetDeviceName"))
    @eval @doc """
    SensorGetDeviceName(int)

Get the implementation dependent name of a sensor.

This can be called before any sensors are opened.

Return The sensor name, or NULL if device_index is out of range.

$(
    if SensorGetDeviceName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetDeviceName), r"^No documentation found.\n" => "")
    end
)
""" SensorGetDeviceName
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_RELATIVE_MODE_WARP"))
    @eval @doc """
    HINT_MOUSE_RELATIVE_MODE_WARP

 A variable controlling whether relative mouse mode is implemented using mouse warping

This variable can be set to the following values:
  "0"       - Relative mouse mode uses raw input
  "1"       - Relative mouse mode uses mouse warping

By default SDL will use raw input for relative mouse mode

$(
    if HINT_MOUSE_RELATIVE_MODE_WARP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_RELATIVE_MODE_WARP), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_RELATIVE_MODE_WARP
end

if isdefined(@__MODULE__, Symbol("DollarGestureEvent"))
    @eval @doc """
    DollarGestureEvent

Dollar Gesture Event (event.dgesture.*)

$(
    if DollarGestureEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DollarGestureEvent), r"^No documentation found.\n" => "")
    end
)
""" DollarGestureEvent
end

if isdefined(@__MODULE__, Symbol("SetWindowShape"))
    @eval @doc """
    SetWindowShape(Window *, Surface *, WindowShapeMode *)

Set the shape and parameters of a shaped window.

param: window The shaped window whose parameters should be set.
param: shape A surface encoding the desired shape for the window.
param: shape_mode The parameters to set for the shaped window.

Return 0 on success, INVALID_SHAPE_ARGUMENT on an invalid shape argument, or NONSHAPEABLE_WINDOW
         if the Window given does not reference a valid shaped window.

 - `WindowShapeMode`
 - `GetShapedWindowMode.`

$(
    if SetWindowShape === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetWindowShape), r"^No documentation found.\n" => "")
    end
)
""" SetWindowShape
end

if isdefined(@__MODULE__, Symbol("TimerID"))
    @eval @doc """
    TimerID

Definition of the timer ID type.

$(
    if TimerID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TimerID), r"^No documentation found.\n" => "")
    end
)
""" TimerID
end

if isdefined(@__MODULE__, Symbol("HINT_IDLE_TIMER_DISABLED"))
    @eval @doc """
    HINT_IDLE_TIMER_DISABLED

 A variable controlling whether the idle timer is disabled on iOS.

When an iOS app does not receive touches for some time, the screen is
dimmed automatically. For games where the accelerometer is the only input
this is problematic. This functionality can be disabled by setting this
hint.

As of SDL 2.0.4, EnableScreenSaver() and DisableScreenSaver()
accomplish the same thing on iOS. They should be preferred over this hint.

This variable can be set to the following values:
  "0"       - Enable idle timer
  "1"       - Disable idle timer

$(
    if HINT_IDLE_TIMER_DISABLED === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_IDLE_TIMER_DISABLED), r"^No documentation found.\n" => "")
    end
)
""" HINT_IDLE_TIMER_DISABLED
end

if isdefined(@__MODULE__, Symbol("RWtell"))
    @eval @doc """
    RWtell(RWops *)

Return the current offset in the data stream, or -1 on error.

$(
    if RWtell === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWtell), r"^No documentation found.\n" => "")
    end
)
""" RWtell
end

if isdefined(@__MODULE__, Symbol("MAX_SINT32"))
    @eval @doc """
    MAX_SINT32

A signed 32-bit integer type.

$(
    if MAX_SINT32 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_SINT32), r"^No documentation found.\n" => "")
    end
)
""" MAX_SINT32
end

if isdefined(@__MODULE__, Symbol("JoystickGetAxisInitialState"))
    @eval @doc """
    JoystickGetAxisInitialState(Joystick *, int, Sint16 *)

Get the initial state of an axis control on a joystick.

The state is a value ranging from -32768 to 32767.

The axis indices start at index 0.

Return TRUE if this axis has any initial value, or FALSE if not.

$(
    if JoystickGetAxisInitialState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetAxisInitialState), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetAxisInitialState
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_FORCE_EGL"))
    @eval @doc """
    HINT_VIDEO_X11_FORCE_EGL

A variable controlling whether X11 should use GLX or EGL by default

This variable can be set to the following values:
"0" - Use GLX
"1" - Use EGL

By default SDL will use GLX when both are present.

$(
    if HINT_VIDEO_X11_FORCE_EGL === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_FORCE_EGL), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_FORCE_EGL
end

if isdefined(@__MODULE__, Symbol("HINT_VIDEO_X11_XRANDR"))
    @eval @doc """
    HINT_VIDEO_X11_XRANDR

 A variable controlling whether the X11 XRandR extension should be used.

This variable can be set to the following values:
  "0"       - Disable XRandR
  "1"       - Enable XRandR

By default SDL will not use XRandR because of window manager issues.

$(
    if HINT_VIDEO_X11_XRANDR === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_VIDEO_X11_XRANDR), r"^No documentation found.\n" => "")
    end
)
""" HINT_VIDEO_X11_XRANDR
end

if isdefined(@__MODULE__, Symbol("HapticPeriodic"))
    @eval @doc """
    HapticPeriodic


 - `HAPTIC_SINE`
 - `HAPTIC_LEFTRIGHT`
 - `HAPTIC_TRIANGLE`
 - `HAPTIC_SAWTOOTHUP`
 - `HAPTIC_SAWTOOTHDOWN`
 - `HapticEffect`

$(
    if HapticPeriodic === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticPeriodic), r"^No documentation found.\n" => "")
    end
)
""" HapticPeriodic
end

if isdefined(@__MODULE__, Symbol("TLSSet"))
    @eval @doc """
    TLSSet(TLSID, const void *, void (*)(void *))

Set the value associated with a thread local storage ID for the current thread.

param: id The thread local storage ID
param: value The value to associate with the ID for the current thread
param: destructor A function called when the thread exits, to free the value.

Return 0 on success, -1 on error

 - `TLSCreate()`
 - `TLSGet()`

$(
    if TLSSet === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TLSSet), r"^No documentation found.\n" => "")
    end
)
""" TLSSet
end

if isdefined(@__MODULE__, Symbol("MapRGBA"))
    @eval @doc """
    MapRGBA(const PixelFormat *, Uint8, Uint8, Uint8, Uint8)

Maps an RGBA quadruple to a pixel value for a given pixel format.

 - `MapRGB`

$(
    if MapRGBA === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MapRGBA), r"^No documentation found.\n" => "")
    end
)
""" MapRGBA
end

if isdefined(@__MODULE__, Symbol("CreateCursor"))
    @eval @doc """
    CreateCursor(const Uint8 *, const Uint8 *, int, int, int, int)

Create a cursor, using the specified bitmap data and
       mask (in MSB format).

The cursor width must be a multiple of 8 bits.

The cursor is created in black and white according to the following:
<table>
<tr><td> data </td><td> mask </td><td> resulting pixel on screen </td></tr>
<tr><td>  0   </td><td>  1   </td><td> White </td></tr>
<tr><td>  1   </td><td>  1   </td><td> Black </td></tr>
<tr><td>  0   </td><td>  0   </td><td> Transparent </td></tr>
<tr><td>  1   </td><td>  0   </td><td> Inverted color if possible, black
                                       if not. </td></tr>
</table>

 - `FreeCursor()`

$(
    if CreateCursor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateCursor), r"^No documentation found.\n" => "")
    end
)
""" CreateCursor
end

if isdefined(@__MODULE__, Symbol("Point"))
    @eval @doc """
    Point

 The structure that defines a point (integer)

 - `EnclosePoints`
 - `PointInRect`

$(
    if Point === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Point), r"^No documentation found.\n" => "")
    end
)
""" Point
end

if isdefined(@__MODULE__, Symbol("GameControllerUpdate"))
    @eval @doc """
    GameControllerUpdate()

Update the current state of the open game controllers.

This is called automatically by the event loop if any game controller
events are enabled.

$(
    if GameControllerUpdate === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerUpdate), r"^No documentation found.\n" => "")
    end
)
""" GameControllerUpdate
end

if isdefined(@__MODULE__, Symbol("WarpMouseInWindow"))
    @eval @doc """
    WarpMouseInWindow(Window *, int, int)

Moves the mouse to the given position within the window.

param: window The window to move the mouse into, or NULL for the current mouse focus
param: x The x coordinate within the window
param: y The y coordinate within the window

!!!note

    This function generates a mouse motion event

$(
    if WarpMouseInWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WarpMouseInWindow), r"^No documentation found.\n" => "")
    end
)
""" WarpMouseInWindow
end

if isdefined(@__MODULE__, Symbol("DestroyTexture"))
    @eval @doc """
    DestroyTexture(Texture *)

Destroy the specified texture.

 - `CreateTexture()`
 - `CreateTextureFromSurface()`

$(
    if DestroyTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroyTexture), r"^No documentation found.\n" => "")
    end
)
""" DestroyTexture
end

if isdefined(@__MODULE__, Symbol("AudioDeviceID"))
    @eval @doc """
    AudioDeviceID

SDL Audio Device IDs.

A successful call to OpenAudio() is always device id 1, and legacy
SDL audio APIs assume you want this device ID. OpenAudioDevice() calls
always returns devices >= 2 on success. The legacy calls are good both
for backwards compatibility and when you don't care about multiple,
specific, or capture devices.

$(
    if AudioDeviceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioDeviceID), r"^No documentation found.\n" => "")
    end
)
""" AudioDeviceID
end

if isdefined(@__MODULE__, Symbol("SetColorKey"))
    @eval @doc """
    SetColorKey(Surface *, int, Uint32)

Sets the color key (transparent pixel) in a blittable surface.

param: surface The surface to update
param: flag Non-zero to enable colorkey and 0 to disable colorkey
param: key The transparent pixel in the native surface format

Return 0 on success, or -1 if the surface is not valid

You can pass RLEACCEL to enable RLE accelerated blits.

$(
    if SetColorKey === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetColorKey), r"^No documentation found.\n" => "")
    end
)
""" SetColorKey
end

if isdefined(@__MODULE__, Symbol("GetHintBoolean"))
    @eval @doc """
    GetHintBoolean(const char *, bool)

Get a hint

Return The boolean value of a hint variable.

$(
    if GetHintBoolean === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetHintBoolean), r"^No documentation found.\n" => "")
    end
)
""" GetHintBoolean
end

if isdefined(@__MODULE__, Symbol("VERSIONNUM"))
    @eval @doc """
    VERSIONNUM


This assumes that there will never be more than 100 patchlevels.

$(
    if VERSIONNUM === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc VERSIONNUM), r"^No documentation found.\n" => "")
    end
)
""" VERSIONNUM
end

if isdefined(@__MODULE__, Symbol("GetSurfaceBlendMode"))
    @eval @doc """
    GetSurfaceBlendMode(Surface *, BlendMode *)

Get the blend mode used for blit operations.

param: surface   The surface to query.
param: blendMode A pointer filled in with the current blend mode.

Return 0 on success, or -1 if the surface is not valid.

 - `SetSurfaceBlendMode()`

$(
    if GetSurfaceBlendMode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetSurfaceBlendMode), r"^No documentation found.\n" => "")
    end
)
""" GetSurfaceBlendMode
end

if isdefined(@__MODULE__, Symbol("JoystickGetProductVersion"))
    @eval @doc """
    JoystickGetProductVersion(Joystick *)

Get the product version of an opened joystick, if available.
If the product version isn't available this function returns 0.

$(
    if JoystickGetProductVersion === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetProductVersion), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetProductVersion
end

if isdefined(@__MODULE__, Symbol("JoystickFromPlayerIndex"))
    @eval @doc """
    JoystickFromPlayerIndex(int)

Return the Joystick associated with a player index.

$(
    if JoystickFromPlayerIndex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickFromPlayerIndex), r"^No documentation found.\n" => "")
    end
)
""" JoystickFromPlayerIndex
end

if isdefined(@__MODULE__, Symbol("GetWindowMaximumSize"))
    @eval @doc """
    GetWindowMaximumSize(Window *, int *, int *)

Get the maximum size of a window's client area.

param: window   The window to query.
param: w        Pointer to variable for storing the maximum width, may be NULL
param: h        Pointer to variable for storing the maximum height, may be NULL

 - `GetWindowMinimumSize()`
 - `SetWindowMaximumSize()`

$(
    if GetWindowMaximumSize === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowMaximumSize), r"^No documentation found.\n" => "")
    end
)
""" GetWindowMaximumSize
end

if isdefined(@__MODULE__, Symbol("GetDefaultAssertionHandler"))
    @eval @doc """
    GetDefaultAssertionHandler()

Get the default assertion handler.

This returns the function pointer that is called by default when an
 assertion is triggered. This is an internal function provided by SDL,
 that is used for assertions when SetAssertionHandler() hasn't been
 used to provide a different function.

Return The default AssertionHandler that is called when an assert triggers.

$(
    if GetDefaultAssertionHandler === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDefaultAssertionHandler), r"^No documentation found.\n" => "")
    end
)
""" GetDefaultAssertionHandler
end

if isdefined(@__MODULE__, Symbol("GameControllerGetVendor"))
    @eval @doc """
    GameControllerGetVendor(GameController *)

Get the USB vendor ID of an opened controller, if available.
If the vendor ID isn't available this function returns 0.

$(
    if GameControllerGetVendor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetVendor), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetVendor
end

if isdefined(@__MODULE__, Symbol("RectEquals"))
    @eval @doc """
    RectEquals(const Rect *, const Rect *)

Returns true if the two rectangles are equal.

$(
    if RectEquals === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RectEquals), r"^No documentation found.\n" => "")
    end
)
""" RectEquals
end

if isdefined(@__MODULE__, Symbol("GetEventFilter"))
    @eval @doc """
    GetEventFilter(EventFilter *, void **)

Return the current event filter - can be used to "chain" filters.
If there is no event filter set, this function returns FALSE.

$(
    if GetEventFilter === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetEventFilter), r"^No documentation found.\n" => "")
    end
)
""" GetEventFilter
end

if isdefined(@__MODULE__, Symbol("UnloadObject"))
    @eval @doc """
    UnloadObject(void *)

Unload a shared object from memory.

$(
    if UnloadObject === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UnloadObject), r"^No documentation found.\n" => "")
    end
)
""" UnloadObject
end

if isdefined(@__MODULE__, Symbol("HINT_THREAD_STACK_SIZE"))
    @eval @doc """
    HINT_THREAD_STACK_SIZE

 A string specifying SDL's threads stack size in bytes or "0" for the backend's default size

Use this hint in case you need to set SDL's threads stack size to other than the default.
This is specially useful if you build SDL against a non glibc libc library (such as musl) which
provides a relatively small default thread stack size (a few kilobytes versus the default 8MB glibc uses).
Support for this hint is currently available only in the pthread, Windows, and PSP backend.

Instead of this hint, in 2.0.9 and later, you can use
CreateThreadWithStackSize(). This hint only works with the classic
CreateThread().

$(
    if HINT_THREAD_STACK_SIZE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_THREAD_STACK_SIZE), r"^No documentation found.\n" => "")
    end
)
""" HINT_THREAD_STACK_SIZE
end

if isdefined(@__MODULE__, Symbol("CreateTextureFromSurface"))
    @eval @doc """
    CreateTextureFromSurface(Renderer *, Surface *)

Create a texture from an existing surface.

param: renderer The renderer.
param: surface The surface containing pixel data used to fill the texture.

Return The created texture is returned, or NULL on error.

!!!note

    The surface is not modified or freed by this function.

 - `QueryTexture()`
 - `DestroyTexture()`

$(
    if CreateTextureFromSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc CreateTextureFromSurface), r"^No documentation found.\n" => "")
    end
)
""" CreateTextureFromSurface
end

if isdefined(@__MODULE__, Symbol("EnclosePoints"))
    @eval @doc """
    EnclosePoints(const Point *, int, const Rect *, Rect *)

Calculate a minimal rectangle enclosing a set of points

Return TRUE if any points were within the clipping rect

$(
    if EnclosePoints === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc EnclosePoints), r"^No documentation found.\n" => "")
    end
)
""" EnclosePoints
end

if isdefined(@__MODULE__, Symbol("DestroyMutex"))
    @eval @doc """
    DestroyMutex(mutex *)

Destroy a mutex.

$(
    if DestroyMutex === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroyMutex), r"^No documentation found.\n" => "")
    end
)
""" DestroyMutex
end

if isdefined(@__MODULE__, Symbol("RWops"))
    @eval @doc """
    RWops

This is the read/write operation structure -- very basic.

$(
    if RWops === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RWops), r"^No documentation found.\n" => "")
    end
)
""" RWops
end

if isdefined(@__MODULE__, Symbol("AddHintCallback"))
    @eval @doc """
    AddHintCallback(const char *, HintCallback, void *)

Add a function to watch a particular hint

param: name The hint to watch
param: callback The function to call when the hint value changes
param: userdata A pointer to pass to the callback function

$(
    if AddHintCallback === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AddHintCallback), r"^No documentation found.\n" => "")
    end
)
""" AddHintCallback
end

if isdefined(@__MODULE__, Symbol("GetRevision"))
    @eval @doc """
    GetRevision()

Get the code revision of SDL that is linked against your program.

Returns an arbitrary string (a hash value) uniquely identifying the
exact revision of the SDL library in use, and is only useful in comparing
against other revisions. It is NOT an incrementing number.

$(
    if GetRevision === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRevision), r"^No documentation found.\n" => "")
    end
)
""" GetRevision
end

if isdefined(@__MODULE__, Symbol("EventState"))
    @eval @doc """
    EventState(Uint32, int)

This function allows you to set the state of processing certain events.
 - If `state` is set to ::IGNORE, that event will be automatically
   dropped from the event queue and will not be filtered.
 - If `state` is set to ::ENABLE, that event will be processed
   normally.
 - If `state` is set to ::QUERY, EventState() will return the
   current processing state of the specified event.

$(
    if EventState === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc EventState), r"^No documentation found.\n" => "")
    end
)
""" EventState
end

if isdefined(@__MODULE__, Symbol("JoyDeviceEvent"))
    @eval @doc """
    JoyDeviceEvent

Joystick device event structure (event.jdevice.*)

$(
    if JoyDeviceEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoyDeviceEvent), r"^No documentation found.\n" => "")
    end
)
""" JoyDeviceEvent
end

if isdefined(@__MODULE__, Symbol("GetColorKey"))
    @eval @doc """
    GetColorKey(Surface *, Uint32 *)

Gets the color key (transparent pixel) in a blittable surface.

param: surface The surface to update
param: key A pointer filled in with the transparent pixel in the native
           surface format

Return 0 on success, or -1 if the surface is not valid or colorkey is not
        enabled.

$(
    if GetColorKey === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetColorKey), r"^No documentation found.\n" => "")
    end
)
""" GetColorKey
end

if isdefined(@__MODULE__, Symbol("HapticOpenFromMouse"))
    @eval @doc """
    HapticOpenFromMouse()

Tries to open a haptic device from the current mouse.

Return The haptic device identifier or NULL on error.

 - `MouseIsHaptic`
 - `HapticOpen`

$(
    if HapticOpenFromMouse === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticOpenFromMouse), r"^No documentation found.\n" => "")
    end
)
""" HapticOpenFromMouse
end

if isdefined(@__MODULE__, Symbol("GameControllerGetButton"))
    @eval @doc """
    GameControllerGetButton(GameController *, GameControllerButton)

Get the current state of a button on a game controller.

The button indices start at index 0.

$(
    if GameControllerGetButton === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetButton), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetButton
end

if isdefined(@__MODULE__, Symbol("HapticOpen"))
    @eval @doc """
    HapticOpen(int)

Opens a haptic device for use.

The index passed as an argument refers to the N'th haptic device on this
system.

When opening a haptic device, its gain will be set to maximum and
autocenter will be disabled.  To modify these values use
HapticSetGain() and HapticSetAutocenter().

param: device_index Index of the device to open.
Return Device identifier or NULL on error.

 - `HapticIndex`
 - `HapticOpenFromMouse`
 - `HapticOpenFromJoystick`
 - `HapticClose`
 - `HapticSetGain`
 - `HapticSetAutocenter`
 - `HapticPause`
 - `HapticStopAll`

$(
    if HapticOpen === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticOpen), r"^No documentation found.\n" => "")
    end
)
""" HapticOpen
end

if isdefined(@__MODULE__, Symbol("SensorGetDeviceInstanceID"))
    @eval @doc """
    SensorGetDeviceInstanceID(int)

Get the instance ID of a sensor.

This can be called before any sensors are opened.

Return The sensor instance ID, or -1 if device_index is out of range.

$(
    if SensorGetDeviceInstanceID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetDeviceInstanceID), r"^No documentation found.\n" => "")
    end
)
""" SensorGetDeviceInstanceID
end

if isdefined(@__MODULE__, Symbol("SetEventFilter"))
    @eval @doc """
    SetEventFilter(EventFilter, void *)

Sets up a filter to process all events before they change internal state and
are posted to the internal event queue.

The filter is prototyped as:
```C
    int EventFilter(void *userdata, Event * event);
```

If the filter returns 1, then the event will be added to the internal queue.
If it returns 0, then the event will be dropped from the queue, but the
internal state will still be updated.  This allows selective filtering of
dynamically arriving events.

!!!warning

     Be very careful of what you do in the event filter function, as
          it may run in a different thread!

There is one caveat when dealing with the ::QuitEvent event type.  The
event filter is only called when the window manager desires to close the
application window.  If the event filter returns 1, then the window will
be closed, otherwise the window will remain open if possible.

If the quit event is generated by an interrupt signal, it will bypass the
internal queue and be delivered to the application at the next event poll.

$(
    if SetEventFilter === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SetEventFilter), r"^No documentation found.\n" => "")
    end
)
""" SetEventFilter
end

if isdefined(@__MODULE__, Symbol("GetAudioDeviceName"))
    @eval @doc """
    GetAudioDeviceName(int, int)

Get the human-readable name of a specific audio device.
Must be a value between 0 and (number of audio devices-1).
Only valid after a successfully initializing the audio subsystem.
The values returned by this function reflect the latest call to
GetNumAudioDevices(); recall that function to redetect available
hardware.

The string returned by this function is UTF-8 encoded, read-only, and
managed internally. You are not to free it. If you need to keep the
string for any length of time, you should make your own copy of it, as it
will be invalid next time any of several other SDL functions is called.

$(
    if GetAudioDeviceName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetAudioDeviceName), r"^No documentation found.\n" => "")
    end
)
""" GetAudioDeviceName
end

if isdefined(@__MODULE__, Symbol("HAPTIC_STATUS"))
    @eval @doc """
    HAPTIC_STATUS

Device can be queried for effect status.

Device supports querying effect status.

 - `HapticGetEffectStatus`

$(
    if HAPTIC_STATUS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_STATUS), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_STATUS
end

if isdefined(@__MODULE__, Symbol("HINT_RENDER_DIRECT3D11_DEBUG"))
    @eval @doc """
    HINT_RENDER_DIRECT3D11_DEBUG

 A variable controlling whether to enable Direct3D 11+'s Debug Layer.

This variable does not have any effect on the Direct3D 9 based renderer.

This variable can be set to the following values:
  "0"       - Disable Debug Layer use
  "1"       - Enable Debug Layer use

By default, SDL does not use Direct3D Debug Layer.

$(
    if HINT_RENDER_DIRECT3D11_DEBUG === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_RENDER_DIRECT3D11_DEBUG), r"^No documentation found.\n" => "")
    end
)
""" HINT_RENDER_DIRECT3D11_DEBUG
end

if isdefined(@__MODULE__, Symbol("LoadFile"))
    @eval @doc """
    LoadFile(const char *, size_t *)

Load an entire file.

The data is allocated with a zero byte at the end (null terminated)

If `datasize` is not NULL, it is filled with the size of the data read.

If `freesrc` is non-zero, the stream will be closed after being read.

The data should be freed with free().

Return the data, or NULL if there was an error.

$(
    if LoadFile === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LoadFile), r"^No documentation found.\n" => "")
    end
)
""" LoadFile
end

if isdefined(@__MODULE__, Symbol("JoyBallEvent"))
    @eval @doc """
    JoyBallEvent

Joystick trackball motion event structure (event.jball.*)

$(
    if JoyBallEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoyBallEvent), r"^No documentation found.\n" => "")
    end
)
""" JoyBallEvent
end

if isdefined(@__MODULE__, Symbol("_Haptic"))
    @eval @doc """
    _Haptic

:typedef Haptic

The haptic structure used to identify an SDL haptic.

 - `HapticOpen`
 - `HapticOpenFromJoystick`
 - `HapticClose`

$(
    if _Haptic === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc _Haptic), r"^No documentation found.\n" => "")
    end
)
""" _Haptic
end

if isdefined(@__MODULE__, Symbol("UserEvent"))
    @eval @doc """
    UserEvent

A user-defined event type (event.user.*)

$(
    if UserEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc UserEvent), r"^No documentation found.\n" => "")
    end
)
""" UserEvent
end

if isdefined(@__MODULE__, Symbol("AtomicSet"))
    @eval @doc """
    AtomicSet(atomic_t *, int)

Set an atomic variable to a value.

Return The previous value of the atomic variable.

$(
    if AtomicSet === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AtomicSet), r"^No documentation found.\n" => "")
    end
)
""" AtomicSet
end

if isdefined(@__MODULE__, Symbol("WINDOWPOS_CENTERED_MASK"))
    @eval @doc """
    WINDOWPOS_CENTERED_MASK

Used to indicate that the window position should be centered.

$(
    if WINDOWPOS_CENTERED_MASK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WINDOWPOS_CENTERED_MASK), r"^No documentation found.\n" => "")
    end
)
""" WINDOWPOS_CENTERED_MASK
end

if isdefined(@__MODULE__, Symbol("HintCallback"))
    @eval @doc """
    HintCallback

type definition of the hint callback function.

$(
    if HintCallback === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HintCallback), r"^No documentation found.\n" => "")
    end
)
""" HintCallback
end

if isdefined(@__MODULE__, Symbol("GetRenderDriverInfo"))
    @eval @doc """
    GetRenderDriverInfo(int, RendererInfo *)

Get information about a specific 2D rendering driver for the current
       display.

param: index The index of the driver to query information about.
param: info  A pointer to an RendererInfo struct to be filled with
             information on the rendering driver.

Return 0 on success, -1 if the index was out of range.

 - `CreateRenderer()`

$(
    if GetRenderDriverInfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetRenderDriverInfo), r"^No documentation found.\n" => "")
    end
)
""" GetRenderDriverInfo
end

if isdefined(@__MODULE__, Symbol("IntersectRect"))
    @eval @doc """
    IntersectRect(const Rect *, const Rect *, Rect *)

Calculate the intersection of two rectangles.

Return TRUE if there is an intersection, FALSE otherwise.

$(
    if IntersectRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IntersectRect), r"^No documentation found.\n" => "")
    end
)
""" IntersectRect
end

if isdefined(@__MODULE__, Symbol("NumJoysticks"))
    @eval @doc """
    NumJoysticks()

Count the number of joysticks attached to the system right now

$(
    if NumJoysticks === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc NumJoysticks), r"^No documentation found.\n" => "")
    end
)
""" NumJoysticks
end

if isdefined(@__MODULE__, Symbol("SemValue"))
    @eval @doc """
    SemValue(sem *)

Returns the current count of the semaphore.

$(
    if SemValue === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SemValue), r"^No documentation found.\n" => "")
    end
)
""" SemValue
end

if isdefined(@__MODULE__, Symbol("GameControllerMappingForGUID"))
    @eval @doc """
    GameControllerMappingForGUID(JoystickGUID)

Get a mapping string for a GUID

Return the mapping string.  Must be freed with free().  Returns NULL if no mapping is available

$(
    if GameControllerMappingForGUID === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerMappingForGUID), r"^No documentation found.\n" => "")
    end
)
""" GameControllerMappingForGUID
end

if isdefined(@__MODULE__, Symbol("HapticNumAxes"))
    @eval @doc """
    HapticNumAxes(Haptic *)

Gets the number of haptic axes the device has.

 - `HapticDirection`

$(
    if HapticNumAxes === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticNumAxes), r"^No documentation found.\n" => "")
    end
)
""" HapticNumAxes
end

if isdefined(@__MODULE__, Symbol("COMPILEDVERSION"))
    @eval @doc """
    COMPILEDVERSION

This is the version number macro for the current SDL version.

$(
    if COMPILEDVERSION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc COMPILEDVERSION), r"^No documentation found.\n" => "")
    end
)
""" COMPILEDVERSION
end

if isdefined(@__MODULE__, Symbol("DestroyRenderer"))
    @eval @doc """
    DestroyRenderer(Renderer *)

Destroy the rendering context for a window and free associated
       textures.

 - `CreateRenderer()`

$(
    if DestroyRenderer === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DestroyRenderer), r"^No documentation found.\n" => "")
    end
)
""" DestroyRenderer
end

if isdefined(@__MODULE__, Symbol("HINT_APPLE_TV_REMOTE_ALLOW_ROTATION"))
    @eval @doc """
    HINT_APPLE_TV_REMOTE_ALLOW_ROTATION

 A variable controlling whether the Apple TV remote's joystick axes
       will automatically match the rotation of the remote.

This variable can be set to the following values:
  "0"       - Remote orientation does not affect joystick axes (the default).
  "1"       - Joystick axes are based on the orientation of the remote.

$(
    if HINT_APPLE_TV_REMOTE_ALLOW_ROTATION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_APPLE_TV_REMOTE_ALLOW_ROTATION), r"^No documentation found.\n" => "")
    end
)
""" HINT_APPLE_TV_REMOTE_ALLOW_ROTATION
end

if isdefined(@__MODULE__, Symbol("GetClipRect"))
    @eval @doc """
    GetClipRect(Surface *, Rect *)

Gets the clipping rectangle for the destination surface in a blit.

`rect` must be a pointer to a valid rectangle which will be filled
with the correct values.

$(
    if GetClipRect === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetClipRect), r"^No documentation found.\n" => "")
    end
)
""" GetClipRect
end

if isdefined(@__MODULE__, Symbol("GL_BindTexture"))
    @eval @doc """
    GL_BindTexture(Texture *, float *, float *)

Bind the texture to the current OpenGL/ES/ES2 context for use with
       OpenGL instructions.

param: texture  The SDL texture to bind
param: texw     A pointer to a float that will be filled with the texture width
param: texh     A pointer to a float that will be filled with the texture height

Return 0 on success, or -1 if the operation is not supported

$(
    if GL_BindTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GL_BindTexture), r"^No documentation found.\n" => "")
    end
)
""" GL_BindTexture
end

if isdefined(@__MODULE__, Symbol("HINT_JOYSTICK_HIDAPI_PS4"))
    @eval @doc """
    HINT_JOYSTICK_HIDAPI_PS4

 A variable controlling whether the HIDAPI driver for PS4 controllers should be used.

This variable can be set to the following values:
  "0"       - HIDAPI driver is not used
  "1"       - HIDAPI driver is used

The default is the value of HINT_JOYSTICK_HIDAPI

$(
    if HINT_JOYSTICK_HIDAPI_PS4 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_JOYSTICK_HIDAPI_PS4), r"^No documentation found.\n" => "")
    end
)
""" HINT_JOYSTICK_HIDAPI_PS4
end

if isdefined(@__MODULE__, Symbol("HINT_ACCELEROMETER_AS_JOYSTICK"))
    @eval @doc """
    HINT_ACCELEROMETER_AS_JOYSTICK

 A variable controlling whether the Android / iOS built-in
accelerometer should be listed as a joystick device.

This variable can be set to the following values:
  "0"       - The accelerometer is not listed as a joystick
  "1"       - The accelerometer is available as a 3 axis joystick (the default).

$(
    if HINT_ACCELEROMETER_AS_JOYSTICK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ACCELEROMETER_AS_JOYSTICK), r"^No documentation found.\n" => "")
    end
)
""" HINT_ACCELEROMETER_AS_JOYSTICK
end

if isdefined(@__MODULE__, Symbol("PeepEvents"))
    @eval @doc """
    PeepEvents(Event *, int, eventaction, Uint32, Uint32)

Checks the event queue for messages and optionally returns them.

If `action` is ::ADDEVENT, up to `numevents` events will be added to
the back of the event queue.

If `action` is ::PEEKEVENT, up to `numevents` events at the front
of the event queue, within the specified minimum and maximum type,
will be returned and will not be removed from the queue.

If `action` is ::GETEVENT, up to `numevents` events at the front
of the event queue, within the specified minimum and maximum type,
will be returned and will be removed from the queue.

Return The number of events actually stored, or -1 if there was an error.

This function is thread-safe.

$(
    if PeepEvents === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PeepEvents), r"^No documentation found.\n" => "")
    end
)
""" PeepEvents
end

if isdefined(@__MODULE__, Symbol("GameControllerGetProductVersion"))
    @eval @doc """
    GameControllerGetProductVersion(GameController *)

Get the product version of an opened controller, if available.
If the product version isn't available this function returns 0.

$(
    if GameControllerGetProductVersion === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetProductVersion), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetProductVersion
end

if isdefined(@__MODULE__, Symbol("TimerCallback"))
    @eval @doc """
    TimerCallback

Function prototype for the timer callback function.

The callback function is passed the current timer interval and returns
the next timer interval.  If the returned value is the same as the one
passed in, the periodic alarm continues, otherwise a new alarm is
scheduled.  If the callback returns 0, the periodic alarm is cancelled.

$(
    if TimerCallback === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TimerCallback), r"^No documentation found.\n" => "")
    end
)
""" TimerCallback
end

if isdefined(@__MODULE__, Symbol("HINT_WINDOWS_ENABLE_MESSAGELOOP"))
    @eval @doc """
    HINT_WINDOWS_ENABLE_MESSAGELOOP

 A variable controlling whether the windows message loop is processed by SDL 

This variable can be set to the following values:
  "0"       - The window message loop is not run
  "1"       - The window message loop is processed in PumpEvents()

By default SDL will process the windows message loop

$(
    if HINT_WINDOWS_ENABLE_MESSAGELOOP === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINDOWS_ENABLE_MESSAGELOOP), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINDOWS_ENABLE_MESSAGELOOP
end

if isdefined(@__MODULE__, Symbol("HapticRumbleInit"))
    @eval @doc """
    HapticRumbleInit(Haptic *)

Initializes the haptic device for simple rumble playback.

param: haptic Haptic device to initialize for simple rumble playback.
Return 0 on success or -1 on error.

 - `HapticOpen`
 - `HapticRumbleSupported`
 - `HapticRumblePlay`
 - `HapticRumbleStop`

$(
    if HapticRumbleInit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRumbleInit), r"^No documentation found.\n" => "")
    end
)
""" HapticRumbleInit
end

if isdefined(@__MODULE__, Symbol("HAPTIC_SAWTOOTHDOWN"))
    @eval @doc """
    HAPTIC_SAWTOOTHDOWN

Sawtoothdown wave effect supported.

Periodic haptic effect that simulates saw tooth down waves.

 - `HapticPeriodic`

$(
    if HAPTIC_SAWTOOTHDOWN === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_SAWTOOTHDOWN), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_SAWTOOTHDOWN
end

if isdefined(@__MODULE__, Symbol("GetDisplayDPI"))
    @eval @doc """
    GetDisplayDPI(int, float *, float *, float *)

Get the dots/pixels-per-inch for a display

!!!note

    Diagonal, horizontal and vertical DPI can all be optionally
      returned if the parameter is non-NULL.

Return 0 on success, or -1 if no DPI information is available or the index is out of range.

 - `GetNumVideoDisplays()`

$(
    if GetDisplayDPI === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetDisplayDPI), r"^No documentation found.\n" => "")
    end
)
""" GetDisplayDPI
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceVendor"))
    @eval @doc """
    JoystickGetDeviceVendor(int)

Get the USB vendor ID of a joystick, if available.
This can be called before any joysticks are opened.
If the vendor ID isn't available this function returns 0.

$(
    if JoystickGetDeviceVendor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceVendor), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceVendor
end

if isdefined(@__MODULE__, Symbol("LowerBlit"))
    @eval @doc """
    LowerBlit(Surface *, Rect *, Surface *, Rect *)

This is a semi-private blit function and it performs low-level surface
blitting only.

$(
    if LowerBlit === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LowerBlit), r"^No documentation found.\n" => "")
    end
)
""" LowerBlit
end

if isdefined(@__MODULE__, Symbol("PixelFormatEnumToMasks"))
    @eval @doc """
    PixelFormatEnumToMasks(Uint32, int *, Uint32 *, Uint32 *, Uint32 *, Uint32 *)

Convert one of the enumerated pixel formats to a bpp and RGBA masks.

Return TRUE, or FALSE if the conversion wasn't possible.

 - `MasksToPixelFormatEnum()`

$(
    if PixelFormatEnumToMasks === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc PixelFormatEnumToMasks), r"^No documentation found.\n" => "")
    end
)
""" PixelFormatEnumToMasks
end

if isdefined(@__MODULE__, Symbol("GetAssertionHandler"))
    @eval @doc """
    GetAssertionHandler(void **)

Get the current assertion handler.

This returns the function pointer that is called when an assertion is
 triggered. This is either the value last passed to
 SetAssertionHandler(), or if no application-specified function is
 set, is equivalent to calling GetDefaultAssertionHandler().

 param: puserdata Pointer to a void*, which will store the "userdata"
                  pointer that was passed to SetAssertionHandler().
                  This value will always be NULL for the default handler.
                  If you don't care about this data, it is safe to pass
                  a NULL pointer to this function to ignore it.
Return The AssertionHandler that is called when an assert triggers.

$(
    if GetAssertionHandler === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetAssertionHandler), r"^No documentation found.\n" => "")
    end
)
""" GetAssertionHandler
end

if isdefined(@__MODULE__, Symbol("HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION"))
    @eval @doc """
    HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION

Android APK expansion patch file version. Should be a string number like "1", "2" etc.

Must be set together with HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION.

If both hints were set then RWFromFile() will look into expansion files
after a given relative path was not found in the internal storage and assets.

By default this hint is not set and the APK expansion files are not searched.

$(
    if HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION), r"^No documentation found.\n" => "")
    end
)
""" HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION
end

if isdefined(@__MODULE__, Symbol("MAX_UINT32"))
    @eval @doc """
    MAX_UINT32

An unsigned 32-bit integer type.

$(
    if MAX_UINT32 === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MAX_UINT32), r"^No documentation found.\n" => "")
    end
)
""" MAX_UINT32
end

if isdefined(@__MODULE__, Symbol("HapticDirection"))
    @eval @doc """
    HapticDirection


If type is ::HAPTIC_POLAR, direction is encoded by hundredths of a
degree starting north and turning clockwise.  ::HAPTIC_POLAR only uses
the first `dir` parameter.  The cardinal directions would be:
 - North: 0 (0 degrees)
 - East: 9000 (90 degrees)
 - South: 18000 (180 degrees)
 - West: 27000 (270 degrees)

If type is ::HAPTIC_CARTESIAN, direction is encoded by three positions
(X axis, Y axis and Z axis (with 3 axes)).  ::HAPTIC_CARTESIAN uses
the first three `dir` parameters.  The cardinal directions would be:
 - North:  0,-1, 0
 - East:   1, 0, 0
 - South:  0, 1, 0
 - West:  -1, 0, 0

The Z axis represents the height of the effect if supported, otherwise
it's unused.  In cartesian encoding (1, 2) would be the same as (2, 4), you
can use any multiple you want, only the direction matters.

If type is ::HAPTIC_SPHERICAL, direction is encoded by two rotations.
The first two `dir` parameters are used.  The `dir` parameters are as
follows (all values are in hundredths of degrees):
 - Degrees from (1, 0) rotated towards (0, 1).
 - Degrees towards (0, 0, 1) (device needs at least 3 axes).


Example of force coming from the south with all encodings (force coming
from the south means the user will have to pull the stick to counteract):
```C
HapticDirection direction;

// Cartesian directions
direction.type = HAPTIC_CARTESIAN; // Using cartesian direction encoding.
direction.dir[0] = 0; // X position
direction.dir[1] = 1; // Y position
// Assuming the device has 2 axes, we don't need to specify third parameter.

// Polar directions
direction.type = HAPTIC_POLAR; // We'll be using polar direction encoding.
direction.dir[0] = 18000; // Polar only uses first parameter

// Spherical coordinates
direction.type = HAPTIC_SPHERICAL; // Spherical encoding
direction.dir[0] = 9000; // Since we only have two axes we don't need more parameters.
```

 - `HAPTIC_POLAR`
 - `HAPTIC_CARTESIAN`
 - `HAPTIC_SPHERICAL`
 - `HapticEffect`
 - `HapticNumAxes`

$(
    if HapticDirection === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticDirection), r"^No documentation found.\n" => "")
    end
)
""" HapticDirection
end

if isdefined(@__MODULE__, Symbol("GameControllerGetButtonFromString"))
    @eval @doc """
    GameControllerGetButtonFromString(const char *)

turn this string into a button mapping

$(
    if GameControllerGetButtonFromString === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetButtonFromString), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetButtonFromString
end

if isdefined(@__MODULE__, Symbol("GameControllerGetAxisFromString"))
    @eval @doc """
    GameControllerGetAxisFromString(const char *)

turn this string into a axis mapping

$(
    if GameControllerGetAxisFromString === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerGetAxisFromString), r"^No documentation found.\n" => "")
    end
)
""" GameControllerGetAxisFromString
end

if isdefined(@__MODULE__, Symbol("HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT"))
    @eval @doc """
    HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT

 If set, all devices will be skipped when scanning for game controllers except for the ones listed in this variable.

The format of the string is a comma separated list of USB VID/PID pairs
in hexadecimal form, e.g.

    0xAAAA/0xBBBB,0xCCCC/0xDDDD

The variable can also take the form of @file, in which case the named
file will be loaded and interpreted as the value of the variable.

$(
    if HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT), r"^No documentation found.\n" => "")
    end
)
""" HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT
end

if isdefined(@__MODULE__, Symbol("GameControllerMapping"))
    @eval @doc """
    GameControllerMapping(GameController *)

Get a mapping string for an open GameController

Return the mapping string.  Must be freed with free().  Returns NULL if no mapping is available

$(
    if GameControllerMapping === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GameControllerMapping), r"^No documentation found.\n" => "")
    end
)
""" GameControllerMapping
end

if isdefined(@__MODULE__, Symbol("RenderFillRectF"))
    @eval @doc """
    RenderFillRectF(Renderer *, const FRect *)

Fill a rectangle on the current rendering target with the drawing color.

param: renderer The renderer which should fill a rectangle.
param: rect A pointer to the destination rectangle, or NULL for the entire
            rendering target.

Return 0 on success, or -1 on error

$(
    if RenderFillRectF === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RenderFillRectF), r"^No documentation found.\n" => "")
    end
)
""" RenderFillRectF
end

if isdefined(@__MODULE__, Symbol("JoystickGetVendor"))
    @eval @doc """
    JoystickGetVendor(Joystick *)

Get the USB vendor ID of an opened joystick, if available.
If the vendor ID isn't available this function returns 0.

$(
    if JoystickGetVendor === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetVendor), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetVendor
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_RELATIVE_SPEED_SCALE"))
    @eval @doc """
    HINT_MOUSE_RELATIVE_SPEED_SCALE

 A variable setting the scale for mouse motion, in floating point, when the mouse is in relative mode

$(
    if HINT_MOUSE_RELATIVE_SPEED_SCALE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_RELATIVE_SPEED_SCALE), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_RELATIVE_SPEED_SCALE
end

if isdefined(@__MODULE__, Symbol("IsTextInputActive"))
    @eval @doc """
    IsTextInputActive()

Return whether or not Unicode text input events are enabled.

 - `StartTextInput()`
 - `StopTextInput()`

$(
    if IsTextInputActive === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc IsTextInputActive), r"^No documentation found.\n" => "")
    end
)
""" IsTextInputActive
end

if isdefined(@__MODULE__, Symbol("WINDOWPOS_UNDEFINED_MASK"))
    @eval @doc """
    WINDOWPOS_UNDEFINED_MASK

Used to indicate that you don't care what the window position is.

$(
    if WINDOWPOS_UNDEFINED_MASK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc WINDOWPOS_UNDEFINED_MASK), r"^No documentation found.\n" => "")
    end
)
""" WINDOWPOS_UNDEFINED_MASK
end

if isdefined(@__MODULE__, Symbol("JoystickGetDeviceType"))
    @eval @doc """
    JoystickGetDeviceType(int)

Get the type of a joystick, if available.
This can be called before any joysticks are opened.

$(
    if JoystickGetDeviceType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickGetDeviceType), r"^No documentation found.\n" => "")
    end
)
""" JoystickGetDeviceType
end

if isdefined(@__MODULE__, Symbol("GetScancodeFromKey"))
    @eval @doc """
    GetScancodeFromKey(Keycode)

Get the scancode corresponding to the given key code according to the
       current keyboard layout.

See ::Scancode for details.

 - `GetScancodeName()`

$(
    if GetScancodeFromKey === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetScancodeFromKey), r"^No documentation found.\n" => "")
    end
)
""" GetScancodeFromKey
end

if isdefined(@__MODULE__, Symbol("GetWindowSurface"))
    @eval @doc """
    GetWindowSurface(Window *)

Get the SDL surface associated with the window.

Return The window's framebuffer surface, or NULL on error.

A new surface will be created with the optimal format for the window,
if necessary. This surface will be freed when the window is destroyed.

!!!note

    You may not combine this with 3D or the rendering API on this window.

 - `UpdateWindowSurface()`
 - `UpdateWindowSurfaceRects()`

$(
    if GetWindowSurface === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowSurface), r"^No documentation found.\n" => "")
    end
)
""" GetWindowSurface
end

if isdefined(@__MODULE__, Symbol("AudioSpec"))
    @eval @doc """
    AudioSpec

The calculated values in this structure are calculated by OpenAudio().

For multi-channel audio, the default SDL channel mapping is:
2:  FL FR                       (stereo)
3:  FL FR LFE                   (2.1 surround)
4:  FL FR BL BR                 (quad)
5:  FL FR FC BL BR              (quad + center)
6:  FL FR FC LFE SL SR          (5.1 surround - last two can also be BL BR)
7:  FL FR FC LFE BC SL SR       (6.1 surround)
8:  FL FR FC LFE BL BR SL SR    (7.1 surround)

$(
    if AudioSpec === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioSpec), r"^No documentation found.\n" => "")
    end
)
""" AudioSpec
end

if isdefined(@__MODULE__, Symbol("BuildAudioCVT"))
    @eval @doc """
    BuildAudioCVT(AudioCVT *, AudioFormat, Uint8, int, AudioFormat, Uint8, int)

This function takes a source format and rate and a destination format
and rate, and initializes the `cvt` structure with information needed
by ConvertAudio() to convert a buffer of audio data from one format
to the other. An unsupported format causes an error and -1 will be returned.

Return 0 if no conversion is needed, 1 if the audio filter is set up,
or -1 on error.

$(
    if BuildAudioCVT === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc BuildAudioCVT), r"^No documentation found.\n" => "")
    end
)
""" BuildAudioCVT
end

if isdefined(@__MODULE__, Symbol("HAPTIC_SINE"))
    @eval @doc """
    HAPTIC_SINE

Sine wave effect supported.

Periodic haptic effect that simulates sine waves.

 - `HapticPeriodic`

$(
    if HAPTIC_SINE === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_SINE), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_SINE
end

if isdefined(@__MODULE__, Symbol("VERSION"))
    @eval @doc """
    VERSION

Macro to determine SDL version program was compiled against.

This macro fills in a version structure with the version of the
library you compiled against. This is determined by what header the
compiler uses. Note that if you dynamically linked the library, you might
have a slightly newer or older version at runtime. That version can be
determined with GetVersion(), which, unlike VERSION(),
is not a macro.

param: x A pointer to a version struct to initialize.

 - `version`
 - `GetVersion`

$(
    if VERSION === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc VERSION), r"^No documentation found.\n" => "")
    end
)
""" VERSION
end

if isdefined(@__MODULE__, Symbol("SensorGetDeviceType"))
    @eval @doc """
    SensorGetDeviceType(int)

Get the type of a sensor.

This can be called before any sensors are opened.

Return The sensor type, or SENSOR_INVALID if device_index is out of range.

$(
    if SensorGetDeviceType === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc SensorGetDeviceType), r"^No documentation found.\n" => "")
    end
)
""" SensorGetDeviceType
end

if isdefined(@__MODULE__, Symbol("GetSurfaceAlphaMod"))
    @eval @doc """
    GetSurfaceAlphaMod(Surface *, Uint8 *)

Get the additional alpha value used in blit operations.

param: surface The surface to query.
param: alpha A pointer filled in with the current alpha value.

Return 0 on success, or -1 if the surface is not valid.

 - `SetSurfaceAlphaMod()`

$(
    if GetSurfaceAlphaMod === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetSurfaceAlphaMod), r"^No documentation found.\n" => "")
    end
)
""" GetSurfaceAlphaMod
end

if isdefined(@__MODULE__, Symbol("mutexV"))
    @eval @doc """
    mutexV

Unlock the mutex.

Return 0, or -1 on error.

!!!warning

    It is an error to unlock a mutex that has not been locked by
         the current thread, and doing so results in undefined behavior.

$(
    if mutexV === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc mutexV), r"^No documentation found.\n" => "")
    end
)
""" mutexV
end

if isdefined(@__MODULE__, Symbol("Keycode"))
    @eval @doc """
    Keycode

The SDL virtual key representation.

Values of this type are used to represent keyboard keys using the current
layout of the keyboard.  These values include Unicode values representing
the unmodified character that would be generated by pressing the key, or
an SDLK_* constant for those keys that do not generate characters.

A special exception is the number keys at the top of the keyboard which
always map to SDLK_0...SDLK_9, regardless of layout.

$(
    if Keycode === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Keycode), r"^No documentation found.\n" => "")
    end
)
""" Keycode
end

if isdefined(@__MODULE__, Symbol("DelHintCallback"))
    @eval @doc """
    DelHintCallback(const char *, HintCallback, void *)

Remove a function watching a particular hint

param: name The hint being watched
param: callback The function being called when the hint value changes
param: userdata A pointer being passed to the callback function

$(
    if DelHintCallback === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DelHintCallback), r"^No documentation found.\n" => "")
    end
)
""" DelHintCallback
end

if isdefined(@__MODULE__, Symbol("HINT_ORIENTATIONS"))
    @eval @doc """
    HINT_ORIENTATIONS

 A variable controlling which orientations are allowed on iOS/Android.

In some circumstances it is necessary to be able to explicitly control
which UI orientations are allowed.

This variable is a space delimited list of the following values:
  "LandscapeLeft", "LandscapeRight", "Portrait" "PortraitUpsideDown"

$(
    if HINT_ORIENTATIONS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ORIENTATIONS), r"^No documentation found.\n" => "")
    end
)
""" HINT_ORIENTATIONS
end

if isdefined(@__MODULE__, Symbol("HapticRumbleSupported"))
    @eval @doc """
    HapticRumbleSupported(Haptic *)

Checks to see if rumble is supported on a haptic device.

param: haptic Haptic device to check to see if it supports rumble.
Return TRUE if effect is supported, FALSE if it isn't or -1 on error.

 - `HapticRumbleInit`
 - `HapticRumblePlay`
 - `HapticRumbleStop`

$(
    if HapticRumbleSupported === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticRumbleSupported), r"^No documentation found.\n" => "")
    end
)
""" HapticRumbleSupported
end

if isdefined(@__MODULE__, Symbol("GetTicks"))
    @eval @doc """
    GetTicks()

Get the number of milliseconds since the SDL library initialization.

!!!note

    This value wraps if the program runs for more than ~49 days.

$(
    if GetTicks === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetTicks), r"^No documentation found.\n" => "")
    end
)
""" GetTicks
end

if isdefined(@__MODULE__, Symbol("HapticUnpause"))
    @eval @doc """
    HapticUnpause(Haptic *)

Unpauses a haptic device.

Call to unpause after HapticPause().

param: haptic Haptic device to unpause.
Return 0 on success or -1 on error.

 - `HapticPause`

$(
    if HapticUnpause === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HapticUnpause), r"^No documentation found.\n" => "")
    end
)
""" HapticUnpause
end

if isdefined(@__MODULE__, Symbol("DetachThread"))
    @eval @doc """
    DetachThread(Thread *)

A thread may be "detached" to signify that it should not remain until
another thread has called WaitThread() on it. Detaching a thread
is useful for long-running threads that nothing needs to synchronize
with or further manage. When a detached thread is done, it simply
goes away.

There is no way to recover the return code of a detached thread. If you
need this, don't detach the thread and instead use WaitThread().

Once a thread is detached, you should usually assume the Thread isn't
safe to reference again, as it will become invalid immediately upon
the detached thread's exit, instead of remaining until someone has called
WaitThread() to finally clean it up. As such, don't detach the same
thread more than once.

If a thread has already exited when passed to DetachThread(), it will
stop waiting for a call to WaitThread() and clean up immediately.
It is not safe to detach a thread that might be used with WaitThread().

You may not call WaitThread() on a thread that has been detached.
Use either that function or this one, but not both, or behavior is
undefined.

It is safe to pass NULL to this function; it is a no-op.

$(
    if DetachThread === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc DetachThread), r"^No documentation found.\n" => "")
    end
)
""" DetachThread
end

if isdefined(@__MODULE__, Symbol("HAPTIC_POLAR"))
    @eval @doc """
    HAPTIC_POLAR

Uses polar coordinates for the direction.

 - `HapticDirection`

$(
    if HAPTIC_POLAR === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HAPTIC_POLAR), r"^No documentation found.\n" => "")
    end
)
""" HAPTIC_POLAR
end

if isdefined(@__MODULE__, Symbol("FreeWAV"))
    @eval @doc """
    FreeWAV(Uint8 *)

This function frees data previously allocated with LoadWAV_RW()

$(
    if FreeWAV === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FreeWAV), r"^No documentation found.\n" => "")
    end
)
""" FreeWAV
end

if isdefined(@__MODULE__, Symbol("MUSTLOCK"))
    @eval @doc """
    MUSTLOCK

Evaluates to true if the surface needs to be locked before access.

$(
    if MUSTLOCK === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc MUSTLOCK), r"^No documentation found.\n" => "")
    end
)
""" MUSTLOCK
end

if isdefined(@__MODULE__, Symbol("GetWindowWMInfo"))
    @eval @doc """
    GetWindowWMInfo(Window *, SysWMinfo *)

This function allows access to driver-dependent window information.

param: window The window about which information is being requested
param: info This structure must be initialized with the SDL version, and is
            then filled in with information about the given window.

Return TRUE if the function is implemented and the version member of
        the `info` struct is valid, FALSE otherwise.

You typically use this function like this:
```C
SysWMinfo info;
VERSION(&info.version);
if ( GetWindowWMInfo(window, &info) ) { ... }
```

$(
    if GetWindowWMInfo === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowWMInfo), r"^No documentation found.\n" => "")
    end
)
""" GetWindowWMInfo
end

if isdefined(@__MODULE__, Symbol("Delay"))
    @eval @doc """
    Delay(Uint32)

Wait a specified number of milliseconds before returning.

$(
    if Delay === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Delay), r"^No documentation found.\n" => "")
    end
)
""" Delay
end

if isdefined(@__MODULE__, Symbol("AudioStreamFlush"))
    @eval @doc """
    AudioStreamFlush(AudioStream *)

Tell the stream that you're done sending data, and anything being buffered
should be converted/resampled and made available immediately.

It is legal to add more data to a stream after flushing, but there will
be audio gaps in the output. Generally this is intended to signal the
end of input, so the complete output becomes available.

 - `NewAudioStream`
 - `AudioStreamPut`
 - `AudioStreamGet`
 - `AudioStreamAvailable`
 - `AudioStreamClear`
 - `FreeAudioStream`

$(
    if AudioStreamFlush === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AudioStreamFlush), r"^No documentation found.\n" => "")
    end
)
""" AudioStreamFlush
end

if isdefined(@__MODULE__, Symbol("HINT_MOUSE_DOUBLE_CLICK_RADIUS"))
    @eval @doc """
    HINT_MOUSE_DOUBLE_CLICK_RADIUS

 A variable setting the double click radius, in pixels.

$(
    if HINT_MOUSE_DOUBLE_CLICK_RADIUS === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_MOUSE_DOUBLE_CLICK_RADIUS), r"^No documentation found.\n" => "")
    end
)
""" HINT_MOUSE_DOUBLE_CLICK_RADIUS
end

if isdefined(@__MODULE__, Symbol("AllocPalette"))
    @eval @doc """
    AllocPalette(int)

Create a palette structure with the specified number of color
       entries.

Return A new palette, or NULL if there wasn't enough memory.

!!!note

    The palette entries are initialized to white.

 - `FreePalette()`

$(
    if AllocPalette === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc AllocPalette), r"^No documentation found.\n" => "")
    end
)
""" AllocPalette
end

if isdefined(@__MODULE__, Symbol("TextInputEvent"))
    @eval @doc """
    TextInputEvent

Keyboard text input event structure (event.text.*)

$(
    if TextInputEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TextInputEvent), r"^No documentation found.\n" => "")
    end
)
""" TextInputEvent
end

if isdefined(@__MODULE__, Symbol("RestoreWindow"))
    @eval @doc """
    RestoreWindow(Window *)

Restore the size and position of a minimized or maximized window.

 - `MaximizeWindow()`
 - `MinimizeWindow()`

$(
    if RestoreWindow === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc RestoreWindow), r"^No documentation found.\n" => "")
    end
)
""" RestoreWindow
end

if isdefined(@__MODULE__, Symbol("HINT_ANDROID_TRAP_BACK_BUTTON"))
    @eval @doc """
    HINT_ANDROID_TRAP_BACK_BUTTON

A variable to control whether we trap the Android back button to handle it manually.
      This is necessary for the right mouse button to work on some Android devices, or
      to be able to trap the back button for use in your code reliably.  If set to true,
      the back button will show up as an KEYDOWN / KEYUP pair with a keycode of 
      SCANCODE_AC_BACK.

The variable can be set to the following values:
 "0"       - Back button will be handled as usual for system. (default)
 "1"       - Back button will be trapped, allowing you to handle the key press
             manually.  (This will also let right mouse click work on systems 
             where the right mouse button functions as back.)

The value of this hint is used at runtime, so it can be changed at any time.

$(
    if HINT_ANDROID_TRAP_BACK_BUTTON === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_ANDROID_TRAP_BACK_BUTTON), r"^No documentation found.\n" => "")
    end
)
""" HINT_ANDROID_TRAP_BACK_BUTTON
end

if isdefined(@__MODULE__, Symbol("GetWindowData"))
    @eval @doc """
    GetWindowData(Window *, const char *)

Retrieve the data pointer associated with a window.

param: window   The window to query.
param: name     The name of the pointer.

Return The value associated with 'name'

 - `SetWindowData()`

$(
    if GetWindowData === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetWindowData), r"^No documentation found.\n" => "")
    end
)
""" GetWindowData
end

if isdefined(@__MODULE__, Symbol("GetScancodeName"))
    @eval @doc """
    GetScancodeName(Scancode)

Get a human-readable name for a scancode.

Return A pointer to the name for the scancode.
        If the scancode doesn't have a name, this function returns
        an empty string ("").

 - `Scancode`

$(
    if GetScancodeName === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc GetScancodeName), r"^No documentation found.\n" => "")
    end
)
""" GetScancodeName
end

if isdefined(@__MODULE__, Symbol("TextEditingEvent"))
    @eval @doc """
    TextEditingEvent

Keyboard text editing event structure (event.edit.*)

$(
    if TextEditingEvent === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc TextEditingEvent), r"^No documentation found.\n" => "")
    end
)
""" TextEditingEvent
end

if isdefined(@__MODULE__, Symbol("JoystickNumHats"))
    @eval @doc """
    JoystickNumHats(Joystick *)

Get the number of POV hats on a joystick.

$(
    if JoystickNumHats === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc JoystickNumHats), r"^No documentation found.\n" => "")
    end
)
""" JoystickNumHats
end

if isdefined(@__MODULE__, Symbol("Vulkan_UnloadLibrary"))
    @eval @doc """
    Vulkan_UnloadLibrary()

Unload the Vulkan loader library previously loaded by
       `Vulkan_LoadLibrary().

:sa` Vulkan_LoadLibrary()

$(
    if Vulkan_UnloadLibrary === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc Vulkan_UnloadLibrary), r"^No documentation found.\n" => "")
    end
)
""" Vulkan_UnloadLibrary
end

if isdefined(@__MODULE__, Symbol("FreeAudioStream"))
    @eval @doc """
    FreeAudioStream(AudioStream *)

Free an audio stream

 - `NewAudioStream`
 - `AudioStreamPut`
 - `AudioStreamGet`
 - `AudioStreamAvailable`
 - `AudioStreamFlush`
 - `AudioStreamClear`

$(
    if FreeAudioStream === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc FreeAudioStream), r"^No documentation found.\n" => "")
    end
)
""" FreeAudioStream
end

if isdefined(@__MODULE__, Symbol("HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN"))
    @eval @doc """
    HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN

 A variable controlling whether the window frame and title bar are interactive when the cursor is hidden 

This variable can be set to the following values:
  "0"       - The window frame is not interactive when the cursor is hidden (no move, resize, etc)
  "1"       - The window frame is interactive when the cursor is hidden

By default SDL will allow interaction with the window frame when the cursor is hidden

$(
    if HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN), r"^No documentation found.\n" => "")
    end
)
""" HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN
end

if isdefined(@__MODULE__, Symbol("LockTexture"))
    @eval @doc """
    LockTexture(Texture *, const Rect *, void **, int *)

Lock a portion of the texture for write-only pixel access.

param: texture   The texture to lock for access, which was created with
                 ::TEXTUREACCESS_STREAMING.
param: rect      A pointer to the rectangle to lock for access. If the rect
                 is NULL, the entire texture will be locked.
param: pixels    This is filled in with a pointer to the locked pixels,
                 appropriately offset by the locked area.
param: pitch     This is filled in with the pitch of the locked pixels.

Return 0 on success, or -1 if the texture is not valid or was not created with ::TEXTUREACCESS_STREAMING.

 - `UnlockTexture()`

$(
    if LockTexture === Nothing
        "Treat as a void pointer\n"
    else
        replace(string(@doc LockTexture), r"^No documentation found.\n" => "")
    end
)
""" LockTexture
end

