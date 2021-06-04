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
    Unit.walkPath(unit)
    if unit.pathindex > 4 then
        unit.movespeed = 1
        local player = Units.get("player")
        if player and unit.age % 60 == 0 then
            local px, py = player.x, player.y
            local dx, dy = px - unit.x, py - unit.y
            if dy >= math.abs(dy) * hsqrt2 then
                Shooting.shoot_targetUnit_speed(unit, "BulletPike", player, 2)
            end
        end
    end
    if Unit.reachedPathEnd(unit) then
        Units.remove(unit)
    end
end

Enemies.collideDefault = Unit.collideDefault

return Enemies