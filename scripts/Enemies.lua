local Behavior = require "Behavior"
local Units = require "Units"
local Audio = require "Audio"

local Enemies = {}

function Enemies.defeatStandard(unit)
    Audio.play("data/sounds/knockout.ogg")
    Audio.play("data/sounds/boom1.ogg")
    local x, y = unit.body:getPosition()
    Units.add("ExplosionEnemy", x, y, unit.z)
    Units.remove(unit)
end

function Enemies.walkPath_fireTimed(unit)
    Behavior.walkPath(unit)
	local health = unit.health or 1
	if health < 1 then
        Enemies.defeatStandard(unit)
    end
end

Enemies.collideDefault = Behavior.collideDefault

return Enemies