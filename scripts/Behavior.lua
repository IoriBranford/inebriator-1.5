local Behavior = {}

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

function Behavior.fire(unit, bullettype, dx, dy)
	local x, y = unit.body:getPosition()
	local bullet = Units.add(bullettype, x, y, unit.z)
	bullet.dx = dx
	bullet.dy = dy
	return bullet
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
	local newx, newy = Movement.moveTowardsPoint_Speed(x, y, destx, desty, speed)
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
	if other.body then
		local hitspark = damage > 0 and "ImpactDamage" or "ImpactNoDamage"
		local x1, y1 = unit.body:getPosition()
		local x2, y2 = other.body:getPosition()
		local dx, dy = x2-x1, y2-y1
		local x, y = x1 + dx/4, y1 + dy/4
		Units.add(hitspark, x, y, unit.z)
	end
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