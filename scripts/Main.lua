require("pl.strict").module("_G", _G)

local dsecs = 0
local dfixed = 0
local numfixed = 0
local fixedfrac = 0
local fixedrate = 60
local fixedlimit = 1

function love.load(args, unfilteredargs)
    love.graphics.setLineStyle("rough")
    love.event.loadphase("Gameplay", "data/inebriator.lua")
end

local blankphase = {
    loadphase   = function() end,
    fixedupdate = function() end,
    update      = function(dsecs, fixedfrac) end,
    draw        = function(fixedfrac) end,
    quitphase   = function() end,

    displayrotated   = function(index, orientation) end,
    directorydropped = function(path) end,
    filedropped      = function(file) end,
    focus            = function(focus) end,
    mousefocus       = function(focus) end,
    resize           = function(w, h) end,
    visible          = function(visible) end,

    keypressed  = function(key, scancode, isrepeat) end,
    keyreleased = function(key, scancode) end,
    textedited  = function(text, start, length) end,
    textinput   = function(text) end,

    mousemoved    = function(x, y, dx, dy, istouch) end,
    mousepressed  = function(x, y, button, istouch, presses) end,
    mousereleased = function(x, y, button, istouch, presses) end,
    wheelmoved    = function(x, y) end,

    joystickadded   = function(joystick) end,
    joystickremoved = function(joystick) end,
    gamepadaxis     = function(joystick, axis, value) end,
    gamepadpressed  = function(joystick, button) end,
    gamepadreleased = function(joystick, button) end,

    touchmoved    = function(id, x, y, dx, dy, pressure) end,
    touchpressed  = function(id, x, y, dx, dy, pressure) end,
    touchreleased = function(id, x, y, dx, dy, pressure) end
}

function love.event.loadphase(name, ...)
    love.event.push("loadphase", name, ...)
end

function love.handlers.loadphase(name, ...)
    local nextphase = require(name)
    if love.quitphase then
        love.quitphase()
    end
    for k, v in pairs(blankphase) do
        love[k] = nextphase[k] or v
    end
    if love.loadphase then
        love.loadphase(...)
    end
    collectgarbage()
    if love.timer then
        love.timer.step()
        fixedfrac = 0
    end
end

function love.quit()
    if love.quitphase then
        love.quitphase()
    end
end

function love.run()
    if love.load then
        love.load(love.arg.parseGameArguments(arg), arg)
    end
    collectgarbage()

    -- We don't want the first frame's dsecs to include time taken by love.load.
    if love.timer then
        love.timer.step()
    end

    local mainloop = function()
        -- Process events.
        if love.event then
            love.event.pump()
            for name, a, b, c, d, e, f in love.event.poll() do
                if name == "quit" then
                    if not love.quit or not love.quit() then
                        return a or 0
                    end
                else
                    love.handlers[name](a, b, c, d, e, f)
                end
            end
        end

        -- Update dsecs, as we'll be passing it to update
        if love.timer then
            dsecs = love.timer.step()
        end

        -- Call update and draw
        if love.fixedupdate then
            dfixed = dsecs * fixedrate
            fixedfrac = fixedfrac + dfixed
            numfixed, fixedfrac = math.modf(fixedfrac)
            numfixed = math.min(numfixed, fixedlimit)
            for i = 1, numfixed do
                love.fixedupdate()
                collectgarbage("step", 1)
            end
        end

        if love.update then
            love.update(dsecs, fixedfrac)
        end -- will pass 0 if love.timer is disabled

        if love.graphics and love.graphics.isActive() then
            love.graphics.origin()
            love.graphics.clear(love.graphics.getBackgroundColor())

            if love.draw then
                love.draw(fixedfrac)
            end

            love.graphics.present()
        end

        collectgarbage("step", 1)
        if love.timer then
            love.timer.sleep(0.001)
        end
    end

    return mainloop
end
