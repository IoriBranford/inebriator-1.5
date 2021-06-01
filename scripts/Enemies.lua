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

function Enemies.thinkPawn(unit)
	local health = unit.health or 1
	if health < 1 then
        Enemies.defeatStandard(unit)
        return
    end
    Unit.walkPath(unit)
    if unit.pathindex > 4 then
        unit.movespeed = 1
    end
    local player = Units.get("player")
    local velx, vely = unit.body:getLinearVelocity()
    if velx ~= 0 and player and unit.age % 16 == 0 then
        local shotvelx = velx < 0 and -2 or 2
        local shotvely = 2
        local shot = Shooting.shoot_vel(unit, "BulletPike", shotvelx, shotvely)
        shot.z = player.z
    end
end

Enemies.collideDefault = Unit.collideDefault

return Enemies