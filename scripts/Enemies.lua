local Behavior = require "Behavior"
local Shooting = require "Shooting"
local Units = require "Units"
local Audio = require "Audio"

local Enemies = {}

function Enemies.defeatStandard(unit)
    Audio.play("data/sounds/knockout.ogg")
    Audio.play("data/sounds/boom1.ogg")
    local x, y = unit.body:getPosition()
    Units.add_position("ExplosionEnemy", x, y, unit.z)
    Units.remove(unit)
end

function Enemies.walkPath_fireTimed(unit)
    Behavior.walkPath(unit)
    local x, y = unit.body:getPosition()
    local player = Units.get("player")
    if player and player.body then
        Shooting.shoot_targetUnit(unit, "BulletPike", player)
    end
	local health = unit.health or 1
	if health < 1 then
        Enemies.defeatStandard(unit)
    end
end

Enemies.collideDefault = Behavior.collideDefault

return Enemies