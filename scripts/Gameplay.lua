local Stage = require "Stage"
local Config = require "Config"
local Tiled = require "Tiled"
local Audio = require "Audio"
local Gui = require "Gui"
local GameplayGui = require "GameplayGui"
local Stats = require "Stats"
local Camera = require "Camera"

local Gameplay = {}

local canvas

function Gameplay.loadphase(stagefile)
    Stage.init(stagefile, "AmyDrunk")
    GameplayGui.load()
    canvas = love.graphics.newCanvas(Camera.Prefab.width, Camera.Prefab.height)
    canvas:setFilter("nearest")
    Stats.reset()
    Stats.refreshGui(GameplayGui)
end

function Gameplay.quitphase()
    GameplayGui.clear()
    canvas = nil
    Stage.quit()
    Tiled.clearCache()
end

function Gameplay.fixedupdate()
    Stage.fixedupdate()
end

function Gameplay.keypressed(key)
    if key=="escape" then
        love.event.quit()
    end
end

function Gameplay.update(dsecs, fixedfrac)
    Stage.update(dsecs, fixedfrac)
    Audio.update(dsecs)
    Gui.update(dsecs)
    Stats.refreshGui(GameplayGui)
end

function Gameplay.draw()
    local ghw = love.graphics.getWidth() / 2
    local ghh = love.graphics.getHeight() / 2
    local chw = canvas:getWidth() / 2
    local chh = canvas:getHeight() / 2

    love.graphics.setCanvas(canvas)
    Stage.draw()
    love.graphics.setCanvas()

    local scale
    local portraitrotation = Config.isPortraitRotation()
    if portraitrotation then
        scale = math.min(math.floor(ghh / chw), math.floor(ghw / chh))
    else
        scale = math.min(math.floor(ghw / chw), math.floor(ghh / chh))
    end
    local rotation = math.rad(Config.rotation)
    love.graphics.push()
    love.graphics.translate(math.floor(ghw), math.floor(ghh))
    love.graphics.rotate(rotation)
    love.graphics.scale(scale)
    love.graphics.translate(-chw, -chh)
    love.graphics.draw(canvas, 0, 0, 0, 1, 1)
    Gui.draw()
    love.graphics.pop()
    love.graphics.printf(tostring(love.timer.getFPS()).." fps", 0, 0, love.graphics.getWidth(), "right")
    love.graphics.printf(tostring(math.floor(collectgarbage("count"))).." kb", 0, 16, love.graphics.getWidth(), "right")
end

return Gameplay
