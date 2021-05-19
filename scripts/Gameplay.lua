local Gameplay = {}

local tablex = require "pl.tablex"
local Tiled = require "Tiled"
local Physics = require "Physics"
local Scene = require "Scene"
local Timeline = require "Timeline"
local Audio = require "Audio"
local Gui = require "Gui"
local Units
local Trigger

local timeline

local player
local points
local lives
local bombs

local cameravy
local camerax, cameray
local cameraw, camerah = 240, 320

local stagewidth, stageheight

local canvas
local viewx, viewy
local worldscene
local hud

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

    Gui.load("data/gameplay.lua")

    local hudtype = "hud_inner"
    Gui.showOnlyLayer(hudtype, {
        SCORE = true,
        score = true,
        NEXTLIFE = true,
        extendscore = true,
        difficulty = true,
        powerlevel = true
    })

    points = 0
    lives = 2
    bombs = 0

    hud = Gui.root[hudtype]
    hud.difficulty.text:set("INEBRIATOR")
    for i = 1, lives do
        hud["life"..i].hidden = nil
    end
    for i = 1, bombs do
        hud["winebomb"..i].hidden = nil
    end
end

function Gameplay.quitphase()
    timeline = nil

    player = nil

    Physics.clear()
    Gui.clear()
    worldscene = nil
    canvas = nil
    Tiled.clearCache()
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
    cameray = cameray + cameravy
    timeline:advance(-cameravy)
    if cameray <= 0 then
        cameray = 0
        cameravy = 0
    end

    Units.activateAdded()
    Physics.fixedupdate()
    Units.think()
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

    -- local playervx = player.body:getLinearVelocity()
    viewx = camerax -- + playervx*fixedfrac
    viewy = cameray + cameravy*fixedfrac
    Audio.update(dsecs)
    Gui.update(dsecs)
end

function Gameplay.draw()
    local ghw = love.graphics.getWidth() / 2
    local ghh = love.graphics.getHeight() / 2
    local chw = canvas:getWidth() / 2
    local chh = canvas:getHeight() / 2

    love.graphics.setCanvas(canvas)
    love.graphics.push()
    local tx = -math.floor(viewx)
    local ty = -math.floor(viewy)
    love.graphics.translate(tx, ty)
    worldscene:draw(viewx, viewy, cameraw, camerah)
    Physics.draw(viewx, viewy, cameraw, camerah)
    love.graphics.pop()
    love.graphics.setCanvas()

    local scale = math.min(math.floor(ghw / chw), math.floor(ghh / chh))
    love.graphics.push()
    love.graphics.translate(ghw, ghh)
    love.graphics.scale(scale)
    love.graphics.translate(-chw, -chh)
    love.graphics.draw(canvas, 0, 0, 0, 1, 1, 0, 0)
    Gui.draw()
    love.graphics.pop()
    love.graphics.printf(tostring(love.timer.getFPS()), 0, 0, math.huge)
end

return Gameplay
