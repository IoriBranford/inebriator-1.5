local Gameplay = {}

local tablex = require "pl.tablex"
local Tiled = require "Tiled"
local Physics = require "Physics"
local Scene = require "Scene"
local Timeline = require "Timeline"
local Audio = require "Audio"
local Units
local Trigger

local timeline

local player

local cameravy
local camerax, cameray
local cameraw, camerah = 240, 320

local stagewidth, stageheight

local canvas
local viewx, viewy
local worldscene
local uiscene

local Player = {
    id = "player",
    bodytype = "dynamic",
    bodytileshape = "body",
    z = 100,
    tileset = "Amy",
    tileid = 0,
    speed = 3
}

function Gameplay.loadphase(stagefile)
    Units = Units or require "Units"
    Trigger = Trigger or require "Trigger"
    timeline = Timeline.new()

    Physics.init()
    Physics.setCallback(Units.onCollisionEvent)

    canvas = love.graphics.newCanvas(cameraw, camerah)
    canvas:setFilter("nearest")
    cameravy, camerax, cameray = -1, 0, 0
    stagewidth, stageheight = 0, 0

    worldscene = Scene.new()
    Gameplay.loadStage(stagefile)

    uiscene = Scene.new()
    local ui = Tiled.load("data/gameplay.lua")
    local hud_inner = ui.layers.hud_inner

    for i = 1, #hud_inner do
    end
end

function Gameplay.quitphase()
    timeline = nil

    player = nil

    Physics.clear()
    worldscene = nil
    uiscene = nil
    canvas = nil
    Tiled.clearTiles()
end

function Gameplay.loadStage(stagefile)
    local map = Tiled.load(stagefile)
    local mapobjects = map.objects

    Units.init(map.nextobjectid, worldscene)
    local cellwidth = map.tilewidth
    local cellheight = map.tileheight
    local stagecols = map.width
    local stagerows = map.height
    stagewidth = stagecols * cellwidth
    stageheight = stagerows * cellheight

    camerax, cameray = stagewidth / 2 - cameraw / 2, stageheight - camerah

    local layers = map.layers
    for i = 1, #layers do
        local layer = layers[i]
        local layerid = 'l' .. layer.id
        local layertype = layer.type
        local x = layer.x
        local y = layer.y
        local z = layer.z
        if layertype == "tilelayer" then
            local tilebatch = layer.tilebatch
            if tilebatch then
                worldscene:addChunk(layerid, layer, stagewidth, stageheight, x, y, z)
            end
            local chunks = layer.chunks
            if chunks then
                for i = 1, #chunks do
                    local chunk = chunks[i]
                    local chunkid = layerid .. 'c' .. i
                    local w = chunk.width * cellwidth
                    local h = chunk.height * cellheight
                    local cx = chunk.x * cellwidth
                    local cy = chunk.y * cellheight
                    worldscene:addChunk(chunkid, chunk, w, h, x+cx, y+cy, z)
                end
            end
        elseif layertype == "objectgroup" then
            for i = 1, #layer do
                local object = layer[i]
                local typ = object.type
                if typ == "Trigger" then
                    local time = cameray - object.y
                    local command = Trigger[object.command]
                    local param = object.commandparam
                    if param == "object" then
                        param = (object)
                    elseif param == "layer" then
                        param = (layer)
                    end
                    timeline:addEvent(time, command, param)
                elseif typ == "Path" then
                    layer.paths = layer.paths or {}
                    layer.paths[object.id] = object
                elseif typ == "Unit" then
                    object.group = layer
                end
            end
        end
    end

    player = Units.add(Player, camerax + cameraw / 2, cameray + camerah * 7 / 8)
end

function Gameplay.fixedupdate()
    Units.think()

    cameray = cameray + cameravy
    timeline:advance(-cameravy)
    if cameray <= 0 then
        cameray = 0
        cameravy = 0
    end

    Units.activateAdded()
    Physics.fixedupdate()
    Units.deleteRemoved()
    camerax = (stagewidth - cameraw) * player.body:getX() / stagewidth
end

function Gameplay.update(dsecs, fixedfrac)
    local playerbody = player.body
    if playerbody then
        local vx, vy = 0, 0
        if love.keyboard.isDown("left") then
            vx = vx - 1
        end
        if love.keyboard.isDown("right") then
            vx = vx + 1
        end
        if love.keyboard.isDown("up") then
            vy = vy - 1
        end
        if love.keyboard.isDown("down") then
            vy = vy + 1
        end
        if love.keyboard.isDown("lshift") then
            vx = vx / 2
            vy = vy / 2
        end

        local speed = player.speed
        vx, vy = vx * speed, vy * speed + cameravy
        local x, y = player.body:getPosition()
        if x + vx < 0 then
            vx = -x
        elseif x + vx > stagewidth then
            vx = stagewidth - x
        end
        if y + vy < cameray then
            vy = cameray - y
        elseif y + vy > cameray + camerah then
            vy = cameray + camerah - y
        end
        playerbody:setLinearVelocity(vx, vy)
    end

    for id, body in Physics.iterateBodies() do
        worldscene:updateFromBody(id, body, fixedfrac)
    end

    worldscene:updateAnimations(dsecs)
    uiscene:updateAnimations(dsecs)

    -- local playervx = player.body:getLinearVelocity()
    viewx = camerax -- + playervx*fixedfrac
    viewy = cameray + cameravy*fixedfrac
    Audio.update(dsecs)
end

function Gameplay.draw()
    local ghw = love.graphics.getWidth() / 2
    local ghh = love.graphics.getHeight() / 2
    local chw = canvas:getWidth() / 2
    local chh = canvas:getHeight() / 2

    love.graphics.setCanvas(canvas)
    love.graphics.push()
    worldscene:draw(viewx, viewy, cameraw, camerah)
    Physics.draw(viewx, viewy, cameraw, camerah)
    love.graphics.pop()
    uiscene:draw(0, 0, cameraw, camerah)
    love.graphics.setCanvas()

    local scale = math.min(math.floor(ghw / chw), math.floor(ghh / chh))
    love.graphics.draw(canvas, ghw, ghh, 0, scale, scale, chw, chh)
    love.graphics.printf(tostring(love.timer.getFPS()), 0, 0, math.huge)
end

return Gameplay
