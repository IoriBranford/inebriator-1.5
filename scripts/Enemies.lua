local Behavior = require "Behavior"

local Enemies = {}

function Enemies.walkPath_fireTimed(unit)
    Behavior.walkPath(unit)
end

return Enemies