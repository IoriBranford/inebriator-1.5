local Gameplay = {}

local tablex = require "pl.tablex"
local Tiled = require "Tiled"
local Physics = require "Physics"
local Scene = require "Scene"
local Audio = require "Audio"
local Units
local Trigger

local cameraw, camerah = 240, 240
local camerahalfw, camerahalfh = cameraw/2, camerah/2

local player
local playervx, playervy, playerdashing
local maxhealth = 32
local onemeter = 16
local minspawndepth = 4*camerah
local maxevolution
local damageeffectsecs

function Gameplay.getPlayerVelocity()
    return playervx, playervy
end

function Gameplay.damagePlayer(damage)
    if player then
        if damageeffectsecs == 0 then
            damageeffectsecs = 1
            player.health = math.max(0, player.health - damage)
        end
    end
end

function Gameplay.feedPlayer(heal, evo)
    player.health = math.min(maxhealth, player.health + heal)
    player.evolution = math.min(maxevolution, player.evolution + evo)
end

function Gameplay.getVectorToPlayer(x, y)
    if not player then
        return math.huge, math.huge
    end
    return camerahalfw - x, camerahalfh - y
end

local bigguylayer
local bigguyleft, bigguyright

local level
local playerdepth
local unsafedepth
local surfacey = 0
local creaturetypes
local creaturespawntimer
local creaturespawninterval

local levels = {
    { depth = 0,                        maxevolution = 16, },
    { depth = onemeter * 512,           maxevolution = 32, },
    { depth = onemeter * 2048,          maxevolution = 48, },
    { depth = onemeter * 4096,          maxevolution = 64, },
    { depth = onemeter * (4096+2048),   maxevolution = 100, },
}

function Gameplay.getLevel()
    return level
end

function Gameplay.isFarAway(x, y)
    return math.abs(x - camerahalfw) > cameraw or math.abs(y - camerahalfh) > camerah
end

local stagewidth, stageheight

local canvas
local lightingshader
local postprocessshader
local clearr, clearg, clearb
local biolumhue
local biolumrgb = {1, 1, 1}
local bglayer

local function parseColor(color)
    local a, r, g, b = 1, 1, 1, 1
    if #color > 7 then
        a, r, g, b = string.match(color, "#(..)(..)(..)(..)")
        a = 1 + tonumber(a, 16) / 256
    else
        r, g, b = string.match(color, "#(..)(..)(..)")
    end
    r = (1 + tonumber(r, 16)) / 256
    g = (1 + tonumber(g, 16)) / 256
    b = (1 + tonumber(b, 16)) / 256
    return r, g, b, a
end

local function loadShader(filename)
    local shadercode = love.filesystem.read(filename)
    local shaderok, shadererror = love.graphics.validateShader(true, shadercode)
    if shaderok then
        return love.graphics.newShader(shadercode)
    else
        print(shadererror)
    end
end

function Gameplay.loadphase(stagefile)
    lightingshader = loadShader("shaders/Lighting.glsl")
    postprocessshader = loadShader("shaders/Postprocess.glsl")

    love.graphics.setNewFont("data/fonts/PressStart2P.ttf", 8):setFilter("nearest", "nearest")
    Units = Units or require "Units"
    Trigger = Trigger or require "Trigger"

    playervx, playervy = 0, 0
    biolumhue = 0

    Physics.init()
    Physics.setCallback(Units.onCollisionEvent)

    canvas = love.graphics.newCanvas(cameraw, camerah)
    canvas:setFilter("nearest")
    clearr, clearg, clearb = 0, 0, 0
    Gameplay.loadStage("data/ocean.lua")

    local ambientsound = Audio.play("data/sound/329915__carmsie__underwater-sounds-loopable.ogg")
    if ambientsound then
        ambientsound:setLooping(true)
        ambientsound:play()
    end
end

function Gameplay.quitphase()
    bigguyleft = nil
    bigguyright = nil
    player = nil
    creaturetypes = nil
    Physics.clear()
    Scene.clear()
    canvas = nil
    Tiled.clearTiles()
    Audio.clear()
end

local function startLevel(newlevel)
    level = newlevel
    local levelstats = levels[newlevel]
    local nextlevelstats = levels[newlevel+1]
    if levelstats then
        playerdepth = levelstats.depth
        maxevolution = levelstats.maxevolution
    end
    if nextlevelstats then
        unsafedepth = nextlevelstats.depth
    else
        unsafedepth = 16*99999
    end
    player.health = maxhealth
    player.evolution = 0
    damageeffectsecs = 0

    if level >= #levels then
        if not bigguyleft and not bigguyright then
            bigguyleft = Units.add(bigguylayer.leftjaw)
            bigguyleft.body = Physics.addBody(bigguyleft.id, bigguyleft.x, bigguyleft.y, "dynamic")
            bigguyright = Units.add(bigguylayer.rightjaw)
            bigguyright.body = Physics.addBody(bigguyright.id, bigguyright.x, bigguyright.y, "dynamic")
            love.physics.newWeldJoint(bigguyleft.body, bigguyright.body, bigguyleft.x, bigguyleft.y)
        end
    end
end

function Gameplay.loadStage(stagefile)
    local map = Tiled.load(stagefile)

    if map.backgroundcolor then
        clearr, clearg, clearb = unpack(map.backgroundcolor)
    end

    Units.init(map.nextobjectid)
    local cellwidth = map.tilewidth
    local cellheight = map.tileheight
    local stagecols = map.width
    local stagerows = map.height
    stagewidth = stagecols * cellwidth
    stageheight = stagerows * cellheight

    local layers = map.layers
    for i = 1, #layers do
        local layer = layers[i]
        local id = 'l' .. layer.id
        layer.id = id
        local x = layer.x
        local y = layer.y
        local z = layer.z
        local tilebatch = layer.tilebatch
        if tilebatch then
            Scene.addChunk(id, layer, stagewidth, stageheight, x, y, z)
            bglayer = layer
        end
        local chunks = layer.chunks
        if chunks then
            for i = 1, #chunks do
                local chunk = chunks[i]
                local cid = id .. 'c' .. i
                chunk.id = cid
                local w = chunk.width * cellwidth
                local h = chunk.height * cellheight
                local cx = chunk.x * cellwidth
                local cy = chunk.y * cellheight
                Scene.addChunk(cid, chunk, w, h, x+cx, y+cy, z)
            end
            bglayer = layer
        end
    end

    creaturetypes = layers.creaturetypes
    creaturespawntimer = 0
    creaturespawninterval = 128
    for i = 1, #creaturetypes do
        local creaturetype = creaturetypes[i]
        creaturetype.id = nil
    end
    player = Units.add(map.layers.player[1], camerahalfw, camerahalfh)
    surfacey = stageheight

    bigguylayer = map.layers.bigguy

    startLevel(1)
end

function math.hypot(x, y)
    return math.sqrt(x*x + y*y)
end

local function captureScreenshot(screenshotdata)
	local filename = os.date("shot_%Y-%m-%d_%H-%M-%S")
	if love.filesystem.getInfo(filename) then
		for i = 1, 999 do
			local newfilename = filename..'_'..i
			if not love.filesystem.getInfo(newfilename) then
				filename = newfilename
				break
			end
		end
	end

	screenshotdata:encode("png", filename..".png")
end

function Gameplay.keypressed(key)
    if not player and key == ("lshift") then
        love.event.loadphase("AnaGame")
    end
    if key == "f12" then
        love.graphics.captureScreenshot(captureScreenshot)
    end
end

local function controlPlayer()
    if not player then
        return
    end
    local ax = 0
    local ay = 0
    if playerdepth < 0 then
        ay = .25
    else
        local targetvx, targetvy = 0, 0
        if love.keyboard.isDown("left") then
            targetvx = targetvx - 1
        end
        if love.keyboard.isDown("right") then
            targetvx = targetvx + 1
        end
        if love.keyboard.isDown("up") then
            targetvy = targetvy - 1
        end
        if love.keyboard.isDown("down") then
            targetvy = targetvy + 1
        end
        local speed = 3
        playerdashing = love.keyboard.isDown("lshift")
        if playerdashing then
            speed = speed * 2
        end
        targetvx = targetvx * speed
        targetvy = targetvy * speed
        ax = (targetvx - playervx) / 8
        ay = (targetvy - playervy) / 8
        local speedx = math.abs(ax)
        local speedy = math.abs(ay)
        if speedx > 1 then
            ax = ax/speedx
        end
        if speedy > 1 then
            ay = ay/speedy
        end
    end
    playervx = playervx + ax
    playervy = playervy + ay
    playerdepth = playerdepth + playervy
    if playerdepth >= unsafedepth then
        Gameplay.damagePlayer(1)
    end
end

local function updateCreatureSpawn()
    if playerdepth < minspawndepth then
        return
    end
    local playerspeed = math.hypot(playervx, playervy)
    creaturespawntimer = creaturespawntimer - playerspeed
    if creaturespawntimer <= 0 then
        creaturespawntimer = creaturespawntimer + creaturespawninterval + love.math.random(10)
        for i = 1, #creaturetypes do
            local creaturetype = creaturetypes[i]
            local spawnlevel = creaturetype.level
            if level == spawnlevel then
                local x = playervx < 0 and 0 or cameraw
                local y = playervy < 0 and 0 or camerah
                if love.math.random(2) == 1 then
                    local dx = playervx < 0 and camerahalfw or -camerahalfw
                    x = x + love.math.random()*dx
                else
                    local dy = playervy < 0 and camerahalfh or -camerahalfh
                    y = y + love.math.random()*dy
                end
                Units.add(creaturetype, x, y)
            end
        end
    end
end

function Gameplay.fixedupdate()
    controlPlayer()
    Units.think()
    updateCreatureSpawn()
    Units.activateAdded()
    Physics.fixedupdate()

    if player then
        if player.health < 1 then
            Units.remove(player)
            player = nil
            playervx = 0
            playervy = 0
        elseif player.evolution >= maxevolution then
            startLevel(level+1)
        end
    end

    Units.deleteRemoved()
end

function Gameplay.update(dsecs, fixedfrac)
    for id, body in Physics.iterateBodies() do
        Scene.updateFromBody(id, body, fixedfrac)
    end

    local bgscrollx = -playervx*dsecs*60
    local bgy = camerahalfh - surfacey - playerdepth - playervy*fixedfrac
    local bgchunks = bglayer.chunks
    if bgchunks then
        for i = 1, #bgchunks do
            local chunk = bgchunks[i]
            local sceneobject = Scene.get(chunk.id)
            local x = sceneobject.x + bgscrollx
            local w = sceneobject.w
            if x < -w then
                x = x + stagewidth
            elseif x > stagewidth - w then
                x = x - stagewidth
            end
            sceneobject.x = x
            sceneobject.y = bgy
        end
    end

    Scene.updateAnimations(dsecs)

    Audio.update(dsecs)

    if lightingshader then
        biolumhue = biolumhue + 15*math.pi*dsecs
        local f = function(n)
            local k = math.fmod(n + biolumhue / math.pi / 3, 6)
            return 1 - math.max(0, math.min(k, 4-k, 1))
        end
        biolumrgb[1] = f(5)
        biolumrgb[2] = f(3)
        biolumrgb[3] = f(1)
        lightingshader:sendColor("biolumcolor", biolumrgb)
    end
    damageeffectsecs = math.max(0, damageeffectsecs - dsecs)
end

function Gameplay.draw(fixedfrac)
    local gw = love.graphics.getWidth()
    local gh = love.graphics.getHeight()
    local ghw = gw / 2
    local ghh = gh / 2

    local scenedepth = playerdepth + playervy*fixedfrac
    local scenesurfacey = camerahalfh - scenedepth
    local depthmeters = scenedepth / onemeter

    do
        love.graphics.setCanvas(canvas)
        love.graphics.push()

        love.graphics.setShader(lightingshader)
        local dim = math.max(0, math.min(depthmeters/1024, 1))
        love.graphics.clear(
            clearr - dim,
            clearg - dim,
            clearb - dim)
        love.graphics.setColor(1 - dim, 1 - dim, 1 - dim)
        Scene.draw(0, 0, cameraw, camerah)
        love.graphics.line(0, scenesurfacey, cameraw, scenesurfacey)
        Physics.draw(0, 0, cameraw, camerah)
        love.graphics.setCanvas()
        love.graphics.pop()
    end

    do
        love.graphics.setColor(1, 1 - damageeffectsecs, 1 - damageeffectsecs)
        local scale = math.min(math.floor(ghw / camerahalfw), math.floor(ghh / camerahalfh))
        local screensurfacey = ghh - scenedepth*scale
        love.graphics.push()
        love.graphics.translate(ghw, ghh)
        love.graphics.scale(scale)

        love.graphics.setShader(postprocessshader)
        if postprocessshader then
            local t = (love.timer.getTime()*math.pi*2)
            postprocessshader:send("time", t)
            postprocessshader:send("screenminsize", math.min(gw, gh))
            postprocessshader:send("screensurfacey", screensurfacey)
        end
        love.graphics.draw(canvas, -camerahalfw, -camerahalfh)
        love.graphics.setShader()

        if player then
            love.graphics.printf("HP", -camerahalfw, -camerahalfh, 24)
            love.graphics.printf("EVO", 0, -camerahalfh, 24)
            love.graphics.setColor(1, .25, .25)
            love.graphics.rectangle("fill", -camerahalfw + 24, -camerahalfh, player.health, 8)
            love.graphics.setColor(.5, .5, 1)
            love.graphics.rectangle("fill", 24, -camerahalfh, player.evolution, 8)
            love.graphics.setColor(1, 1, 1)
            love.graphics.rectangle("line", -camerahalfw + 24.5, -camerahalfh+.5, maxhealth, 8)
            love.graphics.rectangle("line", 24.5, -camerahalfh+.5, maxevolution, 8)
            if scenedepth < minspawndepth then
                love.graphics.printf("↓ ENTER THE DEEP ↓",
                    -camerahalfw, camerahalfh/2,
                    cameraw, "center")
            elseif scenedepth >= unsafedepth then
                love.graphics.setColor(1, .25, .25)
                love.graphics.printf("DANGER\n\nHIGH PRESSURE",
                    -camerahalfw, camerahalfh/2,
                    cameraw, "center")
            end
            love.graphics.printf(string.format("%5d m / %5d m", depthmeters, unsafedepth/onemeter),
                -camerahalfw, camerahalfh - 8,
                cameraw, "center")
        else
            love.graphics.printf("GAME OVER\n\nPRESS SHIFT", -camerahalfw, -8, cameraw, "center")
        end
        love.graphics.pop()
        love.graphics.setColor(1, 1, 1)
    end
end

return Gameplay
