local Unit = require "Unit"
local Shooting = require "Shooting"
local Units = require "Units"
local Audio = require "Audio"

local Enemies = {}

function Enemies.defeatStandard(unit)
    Audio.play("data/sounds/knockout.ogg")
    Audio.play("data/sounds/boom1.ogg")
    Units.add_position("ExplosionEnemy", unit.x, unit.y, unit.z)
    local defeatdrop = unit.defeatdrop
    if defeatdrop then
        Units.add_position(defeatdrop, unit.x, unit.y, unit.z)
    end
    Units.remove(unit)
end

function Enemies.walkPath_fireTimed(unit)
    local age = unit.age
	local health = unit.health or 1
	if health < 1 then
        Enemies.defeatStandard(unit)
        return
    end
    Unit.walkPath(unit)
    local player = Units.get("player")
    if player and age % 60 == 0 then
        Shooting.shoot_targetUnit(unit, "BulletPike", player)
    end
end

function Enemies.startPawn(unit)
    unit.movespeed = 2
end

local hsqrt2 = math.sqrt(2)/2
function Enemies.thinkPawn(unit)
	local health = unit.health or 1
	if health < 1 then
        Enemies.defeatStandard(unit)
        return
    end
    local player = Units.get("player")
    local velx, vely = 0, 1
    if unit.age < 15 then
        vely = 2
    else
        if player then
            local px, py = player.x, player.y
            local dx, dy = px - unit.x, py - unit.y
            local dist = math.len(dx, dy)
            local dotright = math.dot(dx, dy, hsqrt2, hsqrt2)
            local dotleft = math.dot(dx, dy, -hsqrt2, hsqrt2)
            if dist - dotleft < 1 then
                velx = -1
            elseif dist - dotright < 1 then
                velx = 1
            end
            if velx ~= 0 and unit.age % 15 == 0 then
                local shotvelx, shotvely = velx*2, vely*2
                local shot = Shooting.shoot_vel(unit, "BulletPike", shotvelx, shotvely)
                shot.z = player.z
            end
        end
    end
    unit.velx, unit.vely = velx, vely
end

Enemies.collideDefault = Unit.collideDefault

return Enemies