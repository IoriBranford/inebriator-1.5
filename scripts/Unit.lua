local Unit = {}

local Gameplay = require "Gameplay"
local Units = require "Units"
local Movement = require "Movement"
local Audio = require "Audio"

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

function Unit.walkPath(unit, onPointReached)
	local path = unit.path and unit.layer.paths[unit.path.id]
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
	local camerabottom = Gameplay.getCameraBottom()
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
	local path = unit.path and unit.layer.paths[unit.path.id]
	local points = path and path.polyline
	local pathindex = unit.pathindex or 2
	local emote = unit.emote
	if points and pathindex > #points then
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