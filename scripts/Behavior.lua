local Behavior = {}

local Units = require "Units"
local Scene = require "Scene"
local Tiled = require "Tiled"

local function moveTowards(x0, x1, speed)
	if x1 < x0 then
		speed = -speed
	end
	x0 = x0 + speed
	if speed > 0 and x0 > x1 or speed < 0 and x0 < x1 then
		return x1
	end
	return x0
end

local function moveTowards2(x0, y0, x1, y1, speedx, speedy)
	return moveTowards(x0, x1, speedx), moveTowards(y0, y1, speedy)
end

function Behavior.timeout(unit)
	local time = unit.time or 60
	time = time - 1
	if time <= 0 then
		Units.remove(unit)
	end
end

function Behavior.walkPath(unit, onPointReached)
	local path = unit.path and unit.group.paths[unit.path.id]
	local polyline = path and path.polyline
	local polygon = path and path.polygon
	local points = polyline or polygon
	local pathindex = unit.pathindex or 2
	if not points or pathindex > #points then
		return
	end
	local destx, desty = path.x + points[pathindex-1], path.y + points[pathindex]
	local speed = unit.speed or 1
	local x, y = unit.body:getPosition()
	local newx, newy = moveTowards2(x, y, destx, desty, speed, speed)
	unit.body:setLinearVelocity(newx - x, newy - y)
	if newx == destx and newy == desty then
		pathindex = pathindex + 2
		if polygon and pathindex > #points then
			pathindex = 2
		end
		if onPointReached then
			onPointReached(unit)
		end
	end
	unit.pathindex = pathindex
end

function Behavior.walkPath_fireOnPathPoints(unit)
	Behavior.walkPath()
end

function Behavior.fireTimeInterval(unit)
	local bullet = unit.firebullet
	local firetimer = unit.firetimer or unit.fireinterval or 1
	firetimer = firetimer - 1
	if firetimer <= 0 then
		local x, y = unit.body:getPosition()
		-- Units.add(???, x, y, unit.z)
		firetimer = firetimer + (unit.fireinterval or 1)
	end
	unit.firetimer = firetimer
end

-- local AnaGame = require "AnaGame"

-- local function moveInRelationToPlayer(selfvx, selfvy)
--     local playervx, playervy = AnaGame.getPlayerVelocity()
--     return selfvx - playervx, selfvy - playervy
-- end

-- function Behavior.moveInRelationToPlayer(unit)
--     local vx, vy = moveInRelationToPlayer(0, 0)
--     unit.body:setLinearVelocity(vx, vy)
-- end

-- local function disappearIfFarAway(unit)
--     if AnaGame.isFarAway(unit.body:getPosition()) then
--         Units.remove(unit)
--     end
-- end

-- local function updateSpriteFace(sceneunit, face)
--     if sceneunit then
--         if face <= -1 then
--             sceneunit.sx = -1
--         elseif face >= 1 then
--             sceneunit.sx = 1
--         end
--     end
-- end

-- function Behavior.updatePlayerSprite(unit)
--     local playervx, playervy = AnaGame.getPlayerVelocity()
--     local playerspeed = math.hypot(playervx, playervy)
--     if playerspeed < 1 then
--         return
--     end

--     local sceneunit = Scene.get(unit.id)
--     updateSpriteFace(sceneunit, playervx)
--     local angle = math.atan2(playervy, math.abs(playervx))
--     local tileset = Tiled.tilesets[unit.tile.tileset]
--     local tid = 5*(AnaGame.getLevel()-1)
--     if tid >= tileset.tilecount then
--         tid = tileset.tilecount - 5
--     end
--     tid = tid + math.max(0, math.min(4, math.floor( (.5 + angle/math.pi) * 5 )))
--     local tile = tileset and tileset[tid]
--     if tile and tile ~= unit.tile then
--         Scene.setTile(sceneunit, tile, true)
--         unit.tile = tile
--     end
-- end

-- function Behavior.swimRandom(unit)
--     local ax = love.math.random(8)
--     ax = ax <= 3 and -1 or ax >= 6 and 1 or 0
--     local ay = love.math.random(8)
--     ay = ay <= 3 and -1 or ay >= 6 and 1 or 0
--     local selfvx, selfvy = unit.selfvx or 0, unit.selfvy or 0
--     selfvx = math.max(-1, math.min(1, selfvx+ax/8))
--     selfvy = math.max(-1, math.min(1, selfvy+ay/8))
--     unit.selfvx = selfvx
--     unit.selfvy = selfvy
--     local sceneunit = Scene.get(unit.id)
--     local vx, vy = moveInRelationToPlayer(selfvx, selfvy)
--     unit.body:setLinearVelocity(vx, vy)
--     updateSpriteFace(sceneunit, selfvx)
--     disappearIfFarAway(unit)
-- end

-- function Behavior.attackOrSwim(unit)
--     local x, y = unit.body:getPosition()
--     local toplayerx, toplayery = AnaGame.getVectorToPlayer(x, y)
--     local toplayerdist = math.hypot(toplayerx, toplayery)
--     local attackrange = unit.attackrange or 32
--     local attackspeed = unit.attackspeed or 2
--     if toplayerdist <= attackrange then
--         if unit.hitplayer then
--             attackspeed = -attackspeed
--         end
--         local selfvx = attackspeed * toplayerx / toplayerdist
--         local selfvy = attackspeed * toplayery / toplayerdist
--         local vx, vy = moveInRelationToPlayer(selfvx, selfvy)
--         unit.body:setLinearVelocity(vx, vy)
--         local sceneunit = Scene.get(unit.id)
--         updateSpriteFace(sceneunit, selfvx)
--         disappearIfFarAway(unit)
--     else
--         unit.hitplayer = nil
--         Behavior.swimRandom(unit)
--     end
-- end

-- function Behavior.playerBeginContact(unit, other)
--     local playervx, playervy = AnaGame.getPlayerVelocity()
--     local playerx, playery = unit.body:getPosition()
--     local tootherx, toothery = other.body:getPosition()
--     tootherx = tootherx - playerx
--     toothery = toothery - playery
--     local dist = math.hypot(tootherx, toothery)
--     local speed = math.hypot(playervx, playervy)
--     local dot = playervx*tootherx + playervy*toothery
--     if dot >= dist*speed*.75 then
--         local eathealth = other.eathealth
--         local eatevolution = other.eatevolution
--         if eathealth and eatevolution then
--             if other.name == "LittleGuy" then
--                 AnaGame.startClosingBigGuy()
--             end
--             AnaGame.feedPlayer(eathealth, eatevolution)
--             Units.remove(other)
--         end
--     else
--         local damage = other.playerdamage or 0
--         if damage > 0 then
--             other.hitplayer = true
--             AnaGame.damagePlayer(damage)
--         end
--     end
-- end

return Behavior