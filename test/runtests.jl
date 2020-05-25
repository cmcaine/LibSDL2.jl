using SDL2_bindings
using Test

const SDL = SDL2_bindings

# Need on systems without system libSDL2
#= using SDL2_jll =#
#= @eval SDL const libsdl2 = $(SDL2_jll.libsdl2) =#

# We're just going to test that none of these programs crash.

@testset "Hello!" begin
    function helloSDL()
        sdlerror() = unsafe_string(SDL.GetError())

        # TODO: checkptr is a bad name
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
        end

        SDL.DestroyTexture(texture)
        SDL.DestroyRenderer(renderer)
        SDL.DestroyWindow(window)
        SDL.Quit()

        # We only care that this didn't error.
        return true
    end

    #= @test helloSDL() =#

    include("lesson4.jl")
end


