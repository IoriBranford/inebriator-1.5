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

local Player = {
    id = "player",
    bodytype = "dynamic",
    bodytileshape = "body",
    z = 100,
    tileset = "Amy",
    tileid = 0,
    think = "player_control",
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

    Gameplay.loadStage(stagefile)
end

function Gameplay.quitphase()
    timeline = nil

    player = nil

    Physics.clear()
    Scene.clear()
    canvas = nil
    Tiled.clearTiles()
end

function Gameplay.loadStage(stagefile)
    local map = Tiled.load(stagefile)

    Units.init(map.nextobjectid)
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
        local id = 'l' .. layer.id
        local layertype = layer.type
        local x = layer.x
        local y = layer.y
        local z = layer.z
        local tilebatch = layer.tilebatch
        if tilebatch then
            Scene.addChunk(id, layer, stagewidth, stageheight, x, y, z)
        end
        local chunks = layer.chunks
        if chunks then
            for i = 1, #chunks do
                local chunk = chunks[i]
                local cid = id .. 'c' .. i
                local w = chunk.width * cellwidth
                local h = chunk.height * cellheight
                local cx = chunk.x * cellwidth
                local cy = chunk.y * cellheight
                Scene.addChunk(cid, chunk, w, h, x+cx, y+cy, z)
            end
        end
        local objects = layer.objects
        if objects then
            for i = 1, #objects do
                local object = objects[i]
                local typ = object.type
                if typ == "Trigger" then
                    local time = cameray - object.y
                    local command = Trigger[object.command]
                    local param = object.commandparam
                    if param == "object" then
                        param = tablex.deepcopy(object)
                    elseif param == "layer" then
                        param = tablex.deepcopy(layer)
                    end
                    timeline:addEvent(time, command, param)
                elseif typ == "Unit" then

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

    local playervx, playervy = player.body:getLinearVelocity()
    player.body:setLinearVelocity(playervx, playervy + cameravy)

    Physics.fixedupdate()

    if not player.canbeoffscreen then
        local playerx, playery = player.body:getPosition()
        local playervx, playervy = player.body:getLinearVelocity()
        if playerx < 0 then
            local _, playervy = player.body:getLinearVelocity()
            player.body:setLinearVelocity(0, playervy)
            player.body:setX(0)
        elseif playerx > stagewidth then
            local _, playervy = player.body:getLinearVelocity()
            player.body:setLinearVelocity(0, playervy)
            player.body:setX(stagewidth)
        end
        if playery < cameray then
            local playervx = player.body:getLinearVelocity()
            player.body:setLinearVelocity(playervx, cameravy)
            player.body:setY(cameray)
        elseif playery > cameray + camerah then
            local playervx = player.body:getLinearVelocity()
            player.body:setLinearVelocity(playervx, cameravy)
            player.body:setY(cameray + camerah)
        end
    end

    camerax = (stagewidth - cameraw) * player.body:getX() / stagewidth

    Units.deleteRemoved()
end

function Gameplay.update(dsecs, fixedfrac)
    for id, body in Physics.iterateBodies() do
        Scene.updateFromBody(id, body, fixedfrac)
    end

    Scene.updateAnimations(dsecs)

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
    Scene.draw(viewx, viewy, cameraw, camerah)
    Physics.draw(viewx, viewy, cameraw, camerah)
    love.graphics.setCanvas()
    love.graphics.pop()

    local scale = math.min(math.floor(ghw / chw), math.floor(ghh / chh))
    love.graphics.draw(canvas, ghw, ghh, 0, scale, scale, chw, chh)
    love.graphics.printf(tostring(love.timer.getFPS()), 0, 0, math.huge)
end

return Gameplay
