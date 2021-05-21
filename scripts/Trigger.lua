local Trigger = {}

local Units = require "Units"

function Trigger.addUnits(objects)
    for i = 1, #objects do
        local object = objects[i]
        if object.type == "Unit" then
            Units.add_position(object)
        end
    end
end

return Trigger