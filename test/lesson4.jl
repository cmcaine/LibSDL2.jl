"""
Lesson 4 - This is pretty Eventful

Close the window in response to an event.

Shows a smiley face with a transparent background over a tiled background of red and yellow text.

"""

sdlerror() = unsafe_string(SDL.GetError())

function checkptr(ptr)
    if ptr == C_NULL
        # The tutorial has us freeing and quitting and all sorts.
        # My philosophy: exit(1) is the simplest way of freeing
        # resources.
        error(sdlerror())
    else
        ptr
    end
end

function load_texture!(renderer, filename)
    surface = checkptr(SDL.LoadBMP(filename))
    texture = checkptr(SDL.CreateTextureFromSurface(renderer, surface))
    SDL.FreeSurface(surface)
    return texture
end

"""
    draw!(ren, tex::Ptr{SDL.Texture}, x, y, w, h)

Draw texture to renderer at position x, y, scaled to width & height w, h.

"""
function draw!(ren, tex::Ptr{SDL.Texture}, x, y, w, h)
    dst = SDL.Rect(x, y, w, h)
    # Don't know if I should be using Ref or pointer.
    # dst is a regular Julia struct, so it's lifetime is controlled by Julia,
    # so I'm going with Ref.
    SDL.RenderCopy(ren, tex, C_NULL, Ref(dst))
    return nothing
end

"""
    draw!(ren, tex::Ptr{SDL.Texture}, x, y)

Draw texture to renderer at position x, y, preserving texture's width and height

"""
function draw!(ren, tex::Ptr{SDL.Texture}, x, y)
    w, h = texture_wh(tex)
    draw!(ren, tex, x, y, w, h)
    return nothing
end

function query_texture(tex)
    # Is there a better way to do this?
    # Ref{Cint}(0) also works.
    format = UInt32[0]
    access = Cint[0]
    w = Cint[0]
    h = Cint[0]
    checkptr(SDL.QueryTexture(tex, format, access, w, h))
    return format[], access[], w[], h[]
end

"Return the width and height of `tex`"
function texture_wh(tex)
    return query_texture(tex)[3:4]
end

### Main

SDL.Event(::UndefInitializer) = SDL.Event(SDL.EventType(0), UInt32(0), ntuple(_ -> 0x00, 48))

function main()
    screen_width = 640
    screen_height = 480
    tile_size = 40

    checkptr(SDL.Init(SDL.INIT_VIDEO))

    window = checkptr(SDL.CreateWindow(
        "Lesson 4", 100, 100,
        screen_width, screen_height,
        SDL.WINDOW_SHOWN))

    # -1 is for the "index of the rendering driver to initialise, or -1
    # for the first one supporting the requested flags"
    renderer = checkptr(SDL.CreateRenderer(window, -1, SDL.RENDERER_ACCELERATED))

    background = load_texture!(renderer, "res/Lesson2/background.bmp")
    image = load_texture!(renderer, "res/Lesson2/image.bmp")

    quit = false
    while !quit
        event = SDL.Event(undef)
        while SDL.PollEvent(Ref(event)) != 0
            #= if event.type in (SDL.QUIT, SDL.KEYDOWN, SDL.MOUSEBUTTONDOWN) =#
                quit = true
            #= end =#
        end

        SDL.RenderClear(renderer)

        # Tiled background
        xtiles = screen_width ÷ tile_size
        ytiles = screen_height ÷ tile_size
        for i in 0:(xtiles * ytiles - 1)
            x = (i % xtiles) * tile_size
            y = (i ÷ xtiles) * tile_size
            draw!(renderer, background, x, y, tile_size, tile_size)
        end

        # Foreground
        iW, iH = texture_wh(image)
        draw!(renderer, image,
            screen_width ÷ 2 - iW ÷ 2,
            screen_height ÷ 2 - iH ÷ 2)

        SDL.RenderPresent(renderer)
        # Sleep 10 ms to avoid blowing the screen right off
        sleep(0.010)
    end

    SDL.DestroyTexture(background)
    SDL.DestroyTexture(image)
    SDL.DestroyRenderer(renderer)
    SDL.DestroyWindow(window)
    SDL.Quit()
end

main()
