local Scene = require "Scene"
local Stats = require "Stats"
local Camera = require "Camera"
local Stage = {}

local Tiled = require "Tiled"
local Physics = require "Physics"
local Timeline = require "Timeline"
local Audio = require "Audio"
local Movement = require "Movement"
local Controls = require "Controls"
local Player
local Units
local Trigger

local timeline

local playerprefab
local player

local respawntime
local camera
local camerax0
local cameravxscalefactor

local stagewidth, stageheight

local viewx, viewy
local scene

function Stage.init(stagefile, playercharacter)
    Units = Units or require "Units"
    Trigger = Trigger or require "Trigger"
    Player = Player or require "Player"
    timeline = Timeline.new()
    scene = Scene.new()

    Physics.init()
    Units.init(scene)

    stagewidth, stageheight = 0, 0

    Stage.load(stagefile)
    local prefabsfile = Tiled.load("data/prefabs_gameplay.lua")
    for i, prefabs in ipairs(prefabsfile.layers) do
        Units.addPrefabs(prefabs)
    end
    playerprefab = playercharacter
    local playerfile = Tiled.load(string.format("data/player_%s.lua", playerprefab))
    for i, prefabs in ipairs(playerfile.layers) do
        Units.addPrefabs(prefabs)
    end

    camera = Units.add_id_position(Camera.Prefab, "camera", camerax0, stageheight - Camera.Prefab.height)
    Units.activateAdded()

    viewx, viewy = camera.x, camera.y
    respawntime = 0
end

function Stage.quit()
    camera = nil
    timeline = nil
    player = nil
    scene = nil
    Physics.clear()
    Units.clear()
end

function Stage.load(stagefile)
    local map = Tiled.load(stagefile)
    local directory = map.directory
    local mapobjects = map.objects

    Units.setNextId(map.nextobjectid)
    local cellwidth = map.tilewidth
    local cellheight = map.tileheight
    local stagecols = map.width
    local stagerows = map.height
    stagewidth = stagecols * cellwidth
    stageheight = stagerows * cellheight

    local cameraw = Camera.Prefab.width
    local camerah = Camera.Prefab.height
    camerax0 = stagewidth / 2 - cameraw / 2
    local cameray = stageheight - camerah

    cameravxscalefactor = (stagewidth - cameraw) / stagewidth

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
                scene:addChunk(layerid, layer, stagewidth, stageheight, x, y, z)
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
                    scene:addChunk(chunkid, chunk, w, h, x+cx, y+cy, z)
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
                    object.layer = layer
                    local module = object.module
                    if module then
                        require(module)
                    end
                    local path = object.path
                    if path then
                        object.path = mapobjects[path.id]
                    end
                end
            end
        end
    end
    timeline:sort()
    local prefabs = layers.prefabs
    if prefabs then
        Units.addPrefabs(prefabs)
    end
    local music = map.music
    if music then
        Audio.playMusic(directory..music, 0)
    end
end

local function inputPlayerAttack()
    if not player or not player.body then
        return
    end
    local firetime = player.firetime or 1
    firetime = firetime - 1
    if firetime >= 0 then
        player.firetime = firetime
    end
    local x, y = player.body:getPosition()
    local fire, focus, bomb = Controls.getButtonInput()
    if fire or focus then
        if firetime <= 0 then
            Audio.play("data/sounds/playershot.ogg")
            local cameravx, cameravy = camera.body:getLinearVelocity()
            if focus then
                local bullet = Units.add_position("AmyShot0", x, y, player.z)
                bullet.vely = bullet.vely + cameravy
                player.firetime = 3
            else
                for cameraoffcenter = -8, 8, 16 do
                    local bullet = Units.add_position("AmyShot0", x+cameraoffcenter, y, player.z)
                    bullet.vely = bullet.vely + cameravy
                end
                player.firetime = 6
            end
        end
    end
end

local function handlePlayerHit()
    local invincibletime = player.invincibletime
    if invincibletime > 0 then
        player.health = 1
    elseif player.health < 1 then
        Audio.play("data/sounds/shriek.ogg")
        Audio.play("data/sounds/selfdestruct.ogg")
        local explosion = Units.add_position("ExplosionPlayer", player.x, player.y, player.z)
        local cameravx, cameravy = camera.body:getLinearVelocity()
        explosion.vely = cameravy
        Player.remove(player)
        player = nil
        respawntime = 60
    end
end

function Stage.fixedupdate()
    local cameraw, camerah = camera.width, camera.height
    local camerax, cameray = camera.body:getPosition()
    local cameravx, cameravy = camera.body:getLinearVelocity()
    timeline:advance(-cameravy)
    if camerax < 0 then
        camerax = 0
        cameravx = 0
    elseif camerax + cameraw > stagewidth then
        camerax = stagewidth - cameraw
        cameravx = 0
    end
    if cameray <= 0 then
        cameray = 0
        cameravy = 0
    end

    if not player and respawntime then
        respawntime = respawntime - 1
        if respawntime <= 0 then
            if Stats.lives > 0 then
                local cameraoffcenter = camerax0 - camerax
                if math.abs(cameraoffcenter) < 1 then
                    camerax = camerax0
                    player = Units.add_id_position(playerprefab, "player", camerax + cameraw / 2, cameray + camerah * 7 / 8, 100)
                    player.invincibletime = 180
                    Stats.lives = Stats.lives - 1
                else
                    camerax = Movement.moveTowards(camerax, camerax0, cameraoffcenter < 0 and -2 or 2)
                end
            else
                cameravy = 0
                Audio.playMusic("data/music/gameover.vgm", 0)
                respawntime = nil
            end
        end
    end

    camera.body:setPosition(camerax, cameray)
    camera.body:setLinearVelocity(cameravx, cameravy)

    inputPlayerAttack()
    Units.activateAdded()
    Physics.fixedupdate()
    Units.updatePositions()
    Units.think()
    for id, body in Physics.iterateBodies() do
        Units.updateBody(id, body)
    end

    if player then
        handlePlayerHit()
    end

    Units.deleteRemoved()
end

local function inputPlayerMove()
    if not player then
        return
    end
    local vx, vy = Controls.getDirectionInput()
    local fire, focus, bomb = Controls.getButtonInput()
    local movespeed = player.movespeed
    if focus then
        movespeed = movespeed - 1
    end
    local cameraw, camerah = camera.width, camera.height
    local camerax, cameray = camera.body:getPosition()
    local cameravx, cameravy = camera.body:getLinearVelocity()
    vx, vy = vx * movespeed, vy * movespeed + cameravy
    local x, y = player.x, player.y
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
    Player.setVelocity(player, vx, vy)
end

function Stage.update(dsecs, fixedfrac)
    inputPlayerMove()
    for id, unit in Units.iterate() do
        scene:updateFromUnit(id, unit, fixedfrac)
    end

    scene:updateAnimations(dsecs)

    local camerax, cameray = camera.body:getPosition()
    local cameravx, cameravy = camera.body:getLinearVelocity()
    local playervx = player and player.velx or 0
    cameravx = playervx * cameravxscalefactor
    camera.body:setLinearVelocity(cameravx, cameravy)
    viewx = camerax + cameravx*fixedfrac
    viewy = cameray + cameravy*fixedfrac
end

function Stage.draw()
    love.graphics.push()
    local tx = -math.floor(viewx)
    local ty = -math.floor(viewy)
    love.graphics.translate(tx, ty)
    scene:draw()
    -- Physics.draw(viewx, viewy, camera.width, camera.height)
    love.graphics.pop()
end

return Stage
