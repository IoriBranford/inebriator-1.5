local Gameplay = {}

local Config = require "Config"
local Tiled = require "Tiled"
local Physics = require "Physics"
local Scene = require "Scene"
local Timeline = require "Timeline"
local Audio = require "Audio"
local Gui = require "Gui"
local GameplayGui = require "GameplayGui"
local Movement = require "Movement"
local Controls = require "Controls"
local Player
local Units
local Trigger

local timeline

local player
local points
local extendpoints
local lives
local bombs

local respawntime
local cameravx, cameravy
local camerax, cameray
local camerax0
local cameravxscalefactor
local cameraw, camerah = 240, 320

local stagewidth, stageheight

local canvas
local viewx, viewy
local worldscene

function Gameplay.getCameraBottom()
    return cameray + camerah
end

function Gameplay.getCameraVelY()
    return cameravy
end

function Gameplay.loadphase(stagefile)
    Units = Units or require "Units"
    Trigger = Trigger or require "Trigger"
    Player = Player or require "Player"
    timeline = Timeline.new()

    Physics.init()

    canvas = love.graphics.newCanvas(cameraw, camerah)
    canvas:setFilter("nearest")
    cameravx, cameravy, camerax, cameray = 0, -.5, 0, 0
    stagewidth, stageheight = 0, 0

    worldscene = Scene.new()
    Gameplay.loadStage(stagefile)
    local prefabsfile = Tiled.load("data/prefabs_gameplay.lua")
    for i, prefabs in ipairs(prefabsfile.layers) do
        Units.addPrefabs(prefabs)
    end
    local playerfile = Tiled.load("data/player_AmyDrunk.lua")
    for i, prefabs in ipairs(playerfile.layers) do
        Units.addPrefabs(prefabs)
    end
    viewx, viewy = camerax, cameray
    points = 0
    extendpoints = 1000000
    lives = 3
    bombs = 0
    respawntime = 0
    GameplayGui.load()
    GameplayGui.setScore(points)
    GameplayGui.setExtendScore(extendpoints)
    GameplayGui.setLives(lives)
    GameplayGui.setWineBombs(bombs)
end

function Gameplay.quitphase()
    timeline = nil

    player = nil

    Physics.clear()
    GameplayGui.clear()
    worldscene = nil
    canvas = nil
    Tiled.clearCache()
end

function Gameplay.loadStage(stagefile)
    local map = Tiled.load(stagefile)
    local directory = map.directory
    local mapobjects = map.objects

    Units.init(map.nextobjectid, worldscene)
    local cellwidth = map.tilewidth
    local cellheight = map.tileheight
    local stagecols = map.width
    local stagerows = map.height
    stagewidth = stagecols * cellwidth
    stageheight = stagerows * cellheight

    camerax0, cameray = stagewidth / 2 - cameraw / 2, stageheight - camerah
    camerax = camerax0

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
        Audio.play("data/sounds/scream.ogg")
        Audio.play("data/sounds/selfdestruct.ogg")
        local explosion = Units.add_position("ExplosionPlayer", player.x, player.y, player.z)
        explosion.vely = cameravy
        Player.remove(player)
        player = nil
        respawntime = 60
    end
end

function Gameplay.fixedupdate()
    camerax = camerax + cameravx
    cameray = cameray + cameravy
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
            if lives > 0 then
                local cameraoffcenter = camerax0 - camerax
                if cameraoffcenter == 0 then
                    player = Units.add_id_position("AmyDrunk", "player", camerax + cameraw / 2, cameray + camerah * 7 / 8, 100)
                    player.invincibletime = 180
                    lives = lives - 1
                    GameplayGui.setLives(lives)
                else
                    camerax = Movement.moveTowards(camerax, camerax0, 2 * cameraoffcenter / math.abs(cameraoffcenter))
                end
            else
                cameravy = 0
                Audio.playMusic("data/music/gameover.vgm", 0)
                respawntime = nil
            end
        end
    end

    inputPlayerAttack()
    Units.activateAdded()
    Physics.fixedupdate()
    Units.updatePositions()
    Units.collide()
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

function Gameplay.keypressed(key)
    if key=="escape" then
        love.event.quit()
    end
end

function Gameplay.update(dsecs, fixedfrac)
    inputPlayerMove()
    for id, unit in Units.iterate() do
        worldscene:updateFromUnit(id, unit, fixedfrac)
    end

    worldscene:updateAnimations(dsecs)

    local playervx = player and player.velx or 0
    cameravx = playervx *cameravxscalefactor
    viewx = camerax + cameravx*fixedfrac
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
    -- Physics.draw(viewx, viewy, cameraw, camerah)
    love.graphics.pop()
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
