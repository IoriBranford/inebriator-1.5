local Trigger = {}

local Units = require "Units"

function Trigger.addUnits(layer)
    local objects = layer.objects
    for i = 1, #objects do
        local object = objects[i]
        if object.type == "Unit" then
            Units.add(object)
        end
    end
end

return Trigger