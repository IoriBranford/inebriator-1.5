local Behavior = {}

local Units = require "Units"
local Movement = require "Movement"

function Behavior.timeout(unit)
	local time = (unit.time or 60) - 1
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

return Behavior