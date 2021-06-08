local Stage = require "Stage"
local Units = require "Units"
local Movement = require "Movement"
local Audio = require "Audio"

local Unit = {}

local function matchVelocity(follower, leader)
	follower.velx, follower.vely = leader.velx, leader.vely
end

local function startTimeout(unit)
	local time = unit.time or 60
	if time == "animation" then
		local tile = unit.tile
		time = tile and tile.animation.duration or 1
		time = math.floor(time * 60)
	end
	unit.time = time
end
Unit.startTimeout = startTimeout

function Unit.thinkTimeout(unit)
	local time = unit.time or 60
	time = time - 1
	unit.time = time
	if time <= 0 then
		Units.remove(unit)
	end
end

function Unit.findPathAtPosition(unit)
	local paths = unit.layer.paths
	if not paths then
		return
	end
	local x, y = unit.x, unit.y
	for id, path in pairs(paths) do
		local points = path.polyline or path.polygon
		local pathx, pathy = path.x + points[1], path.y + points[2]
		if math.abs(pathx - x) < 1 and math.abs(pathy-y) < 1 then
			unit.path = path
			return path
		end
	end
end

function Unit.reachedPathEnd(unit)
	local path = unit.path
	if not path then
		return
	end
	local polyline = path.polyline
	if not polyline then
		return
	end
	local pathindex = unit.pathindex
	return pathindex and pathindex > #polyline
end

function Unit.walkPath(unit, onPointReached)
	local path = unit.path or Unit.findPathAtPosition(unit)
	local polyline = path and path.polyline
	local polygon = path and path.polygon
	local points = polyline or polygon
	local pathindex = unit.pathindex or 2
	unit.pathindex = pathindex
	if not points or pathindex > #points then
		return
	end
	local destx, desty = path.x + points[pathindex-1], path.y + points[pathindex]
	local movespeed = unit.movespeed or 1
	local x, y = unit.x, unit.y
	local nextx, nexty = Movement.moveTowardsPoint_Speed(x, y, destx, desty, movespeed)
	unit.velx, unit.vely = nextx - x, nexty - y
	if nextx == destx and nexty == desty then
		pathindex = pathindex + 2
		if polygon and pathindex > #points then
			pathindex = 2
		end
		unit.pathindex = pathindex
		if onPointReached then
			onPointReached(unit)
		end
	end
end

local gravity = -1/64
function Unit.jumpPath(unit, onPointReached)
	local path = unit.path or Unit.findPathAtPosition(unit)
	local polyline = path and path.polyline
	local polygon = path and path.polygon
	local points = polyline or polygon
	local pathindex = unit.pathindex or 2
	unit.pathindex = pathindex
	if not points or pathindex > #points then
		return
	end
	local destx, desty = path.x + points[pathindex-1], path.y + points[pathindex]
	local movespeed = unit.movespeed or 1
	local x, y = unit.x, unit.y + unit.z - unit.layer.z
	local nextx, nexty = Movement.moveTowardsPoint_Speed(x, y, destx, desty, movespeed)
	local velz = unit.velz
	if not velz then
		local dx, dy = destx-x, desty-y
		local dist = math.len(dx, dy)
		local time = dist / movespeed
		velz = -.5 * gravity * time
		-- v0 = -.5*a*t
	else
		velz = velz + gravity
	end
	unit.velz = velz
	unit.z = unit.z + velz
	unit.velx, unit.vely = nextx - x, nexty - y - (unit.z - unit.layer.z)
	if nextx == destx and nexty == desty then
		unit.velz = nil
		unit.z = unit.layer.z
		pathindex = pathindex + 2
		if polygon and pathindex > #points then
			pathindex = 2
		end
		unit.pathindex = pathindex
		if onPointReached then
			onPointReached(unit)
		end
	end
end

function Unit.collideDefault(unit, other)
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

function Unit.startDefaultBullet(unit)
	startTimeout(unit)
end

function Unit.thinkDefaultBullet(unit)
	Unit.thinkTimeout(unit)
	local health = unit.health or 0
	if health < 1 then
		Units.remove(unit)
	end
end

function Unit.startDefeatedDrunkEnemy(unit)
	unit.emote = Units.add_position("EmoteDrunk", unit.x, unit.y-16, unit.z+1)
end

function Unit.thinkDefeatedDrunkEnemy(unit)
	local camerabottom = Stage.getCameraBottom()
	if unit.y > camerabottom then
		Units.remove(unit)
		Units.remove(unit.emote)
	end
end

function Unit.startFleeingCivilian(unit)
	unit.emote = Units.add_position("EmoteSweat", unit.x, unit.y-16, unit.z+1)
end

function Unit.thinkFleeingCivilian(unit)
	Unit.walkPath(unit)
	local emote = unit.emote
	if Unit.reachedPathEnd(unit) then
		Units.remove(unit)
		Units.remove(emote)
	else
		matchVelocity(emote, unit)
	end
end

function Unit.doCollisions(unit)
	local body = unit.body
	local team = unit.team
	if not body or not team then
		return
	end
	local damage = 0
	local damageself = unit.hitdamageself or 0
	local x1, y1 = unit.x, unit.y
	local z = unit.z
	for _, contact in pairs(body:getContacts()) do
		if contact:isTouching() then
			local f1, f2 = contact:getFixtures()
			local b1, b2 = f1:getBody(), f2:getBody()
			if b2 == body then
				b1, b2 = b2, b1
			end
			local id2 = b2:getUserData()
            local other = id2 and Units.get(id2)
            if other then
				if other.enemyteam == team then
					local damagefromenemy = other.hitdamageenemy or 0
					local hitdamage = damagefromenemy + damageself
					damage = damage + hitdamage

					Audio.play("data/sounds/hit.ogg")
					local hitspark = hitdamage > 0 and "ImpactDamage" or "ImpactNoDamage"
					local x2, y2 = other.x, other.y
					local distx, disty = x2-x1, y2-y1
					local x, y = x1 + distx/4, y1 + disty/4
					Units.add_position(hitspark, x, y, z)
				end
            end
		end
	end
	local health = unit.health
	if health then
		unit.health = health - damage
	end
end

return Unit