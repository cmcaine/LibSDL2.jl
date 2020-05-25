# LibSDL2

Julia bindings for LibSDL2, the Simple Directmedia Layer library.

SDL is a cross-platform library for handling 2D graphics, windows, inputs, audio, 3D graphics context creation, etc.

This library differs from SimpleDirectMediaLayer.jl in that:

 - Most functions and structures have docstrings (extracted from the C source)
 - This includes functions up to v2.0.12 instead of v2.0.5
 - The functions are not typed, so you can rely on Julia's native `cconvert` to do the more tedious conversions
 - Fewer irrelevant functions (used a newer Clang)
 - Many constants are wrapped in CEnums (used a newer Clang)
 - This should be easier to update with new versions of SDL

This and SimpleDirectMediaLayer.jl might merge, idk. This is an experiment.

```julia
using LibSDL2
const SDL = LibSDL2

function helloSDL()
    sdlerror() = unsafe_string(SDL.GetError())

    "Throw an error if the ptr is null, else pass it through"
    function checkptr(ptr)
        if ptr == C_NULL
            error(sdlerror())
        else
            ptr
        end
    end

    checkptr(SDL.Init(SDL.INIT_VIDEO))

    window = checkptr(SDL.CreateWindow("Hello!", 100, 100, 640, 480, SDL.WINDOW_SHOWN))

    renderer = checkptr(SDL.CreateRenderer(window, -1, SDL.RENDERER_ACCELERATED))

    surface = checkptr(SDL.LoadBMP("$(@__DIR__)/res/Lesson1/hello.bmp"))
    texture = checkptr(SDL.CreateTextureFromSurface(renderer, surface))

    SDL.FreeSurface(surface)
    surface = C_NULL

    for _ in 1:3
        SDL.RenderClear(renderer)
        SDL.RenderCopy(renderer, texture, C_NULL, C_NULL)
        SDL.RenderPresent(renderer)
        sleep(1)
    end

    SDL.DestroyTexture(texture)
    SDL.DestroyRenderer(renderer)
    SDL.DestroyWindow(window)
    SDL.Quit()

    return nothing
end

helloSDL()
```
