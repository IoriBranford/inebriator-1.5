local Units = {}

local Physics = require "Physics"
local Scene = require "Scene"
local Tiled = require "Tiled"

local Behavior

local nextunitid
local units
local thinkingunits
local addedunits
local removedunits

function Units.init(nextunitid0, units0)
    Behavior = Behavior or require "Behavior"
    nextunitid = nextunitid0 or 1
    units = units0 or {}
    thinkingunits = {}
    addedunits = {}
    removedunits = {}
end

function Units.clear()
    units = nil
    thinkingunits = nil
    addedunits = nil
    removedunits = nil
end

local function activateUnit(unit)
    local id = unit.id
    local x, y, z = unit.x, unit.y, unit.z
    local think = unit.think
    if Behavior[think] then
        unit.think = Behavior[think]
        thinkingunits[id] = unit
    end

    local tile = unit.tile
    if not tile then
        local tileset = unit.tileset
        local tileid = unit.tileid
        tile = tileset and tileid and Tiled.tilesets[tileset][tileid]
    end
    if tile then
        Scene.addAnimatedTile(id, tile, x, y, z, unit.rotation, unit.scalex, unit.scaley)
    end

    local bodytype = unit.bodytype
    local body = bodytype and Physics.addBody(id, x, y, bodytype)
    unit.body = body
    if body then
        body:setFixedRotation(not unit.bodyrotation)
        body:setAngle(unit.bodyrotation and unit.rotation or 0)

        if tile then
            local bodytileshape = unit.bodytileshape
            local shapes = tile.shapes
            local shapeobject = shapes and shapes[bodytileshape]
            if shapeobject then
                local shape = shapeobject.shape
                local w = shapeobject.width or 1
                local h = shapeobject.height or 1
                local fixture
                if shape == "rectangle" then
                    fixture = Physics.addRectangleFixture(id, w, h, shape.x, shape.y)
                elseif shape == "ellipse" then
                    local r = (w + h) / 4
                    fixture = Physics.addCircleFixture(id, r, shape.x, shape.y)
                end
                if fixture then
                    fixture:setFriction(shapeobject.friction or 0)
                    fixture:setSensor(shapeobject.sensor or false)
                end
            end
        else
            local shape = unit.shape
            local fixture
            local w = unit.width or 1
            local h = unit.height or 1
            if shape == "rectangle" then
                fixture = Physics.addRectangleFixture(id, w, h, 0, 0)
            elseif shape == "ellipse" then
                local r = (w + h) / 4
                fixture = Physics.addCircleFixture(id, r, w/2, h/2)
            elseif shape == "polygon" then
                fixture = Physics.addChainFixture(id, true, unit.polygon)
            end
            if fixture then
                fixture:setFriction(unit.friction or 0)
                fixture:setSensor(unit.sensor or false)
            end
        end
    end

    unit.beginContact = Behavior[unit.beginContact]

    units[id] = unit
    addedunits[id] = nil
    return unit
end

function Units.add(base, x, y, z)
    local unit = {}
    if base then
        for k, v in pairs(base) do
            unit[k] = v
        end
    end

    local id = unit.id
    if not id then
        id = nextunitid
        nextunitid = nextunitid + 1
        unit.id = id
    end

    if x then
        unit.x = x
    end
    if y then
        unit.y = y
    end
    if z then
        unit.z = z
    end

    addedunits[id] = unit
    return unit
end

function Units.remove(unit)
    if type(unit) ~= "table" then
        removedunits[unit] = units[unit]
    else
        removedunits[unit.id] = unit
    end
end

function Units.activateAdded()
    for id, unit in pairs(addedunits) do
        activateUnit(unit)
    end
end

function Units.deleteRemoved()
    for id, unit in pairs(removedunits) do
        unit.body = nil
        Physics.removeBody(id)
        Scene.remove(id)
        units[id] = nil
        thinkingunits[id] = nil
        removedunits[id] = nil
    end
end

function Units.think()
    for id, unit in pairs(thinkingunits) do
        local think = unit.think
        if think then
            think(unit)
            if not unit.think then
                thinkingunits[id] = nil
            end
        end
    end
end

function Units.onCollisionEvent(event, f1, f2, contact)
    local id1, id2 = f1:getUserData(), f2:getUserData()
    local u1, u2 = units[id1], units[id2]
    local fun1, fun2 = u1[event], u2[event]
    if type(fun1) == "function" then
        fun1(u1, u2, contact)
    end
    if type(fun2) == "function" then
        fun2(u2, u1, contact)
    end
end

return Units