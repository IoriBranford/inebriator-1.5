local Behavior = {}

local Gameplay = require "Gameplay"
local Units = require "Units"
local Movement = require "Movement"
local Audio = require "Audio"

local function startTimeout(unit)
	local time = unit.time or 60
	if time == "animation" then
		local tile = unit.tile
		time = tile and tile.animation.duration or 1
		time = time * 60
	end
	unit.time = time
end
Behavior.startTimeout = startTimeout

function Behavior.thinkTimeout(unit)
	local time = unit.time or 60
	time = time - 1
	unit.time = time
	if time <= 0 then
		Units.remove(unit)
	end
end

function Behavior.walkPath(unit, onPointReached)
	local path = unit.path and unit.layer.paths[unit.path.id]
	local polyline = path and path.polyline
	local polygon = path and path.polygon
	local points = polyline or polygon
	local pathindex = unit.pathindex or 2
	if not points or pathindex > #points then
		return
	end
	local destx, desty = path.x + points[pathindex-1], path.y + points[pathindex]
	local movespeed = unit.movespeed or 1
	local x, y = unit.x, unit.y
	local nextx, nexty = Movement.moveTowardsPoint_Speed(x, y, destx, desty, movespeed)
	unit.nextx, unit.nexty = nextx, nexty
	if nextx == destx and nexty == desty then
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

function Behavior.collideDefault(unit, other)
	local health = unit.health
	if not health then
		return
	end
	local team = unit.team
	local otherenemyteam = other.enemyteam
	if not team or not otherenemyteam or otherenemyteam ~= team then
		return
	end
	local damagefromenemy = other.hitdamageenemy or 0
	local damageself = unit.hitdamageself or 0
	local damage = damagefromenemy + damageself
	unit.health = health - damage
	Audio.play("data/sounds/hit.ogg")
	local hitspark = damage > 0 and "ImpactDamage" or "ImpactNoDamage"
	local x1, y1 = unit.x, unit.y
	local x2, y2 = other.x, other.y
	local distx, disty = x2-x1, y2-y1
	local x, y = x1 + distx/4, y1 + disty/4
	Units.add_position(hitspark, x, y, unit.z)
end

function Behavior.startDefaultBullet(unit)
	startTimeout(unit)
end

function Behavior.thinkDefaultBullet(unit)
	Behavior.thinkTimeout(unit)
	local health = unit.health or 0
	if health < 1 then
		Units.remove(unit)
	end
end

return Behavior