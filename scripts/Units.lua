local Units = {}

local Physics = require "Physics"
local Behavior
local Tiled = require "Tiled"

local nextunitid
local units
local thinkingunits
local addedunits
local removedunits
local scene
local unitprefabs

function Units.init(nextunitid0, scene0)
    Behavior = Behavior or require "Behavior"
    nextunitid = nextunitid0 or 1
    units = {}
    thinkingunits = {}
    addedunits = {}
    removedunits = {}
    scene = scene0
    unitprefabs = {}
end

function Units.clear()
    units = nil
    thinkingunits = nil
    addedunits = nil
    removedunits = nil
    scene = nil
    unitprefabs = nil
end

local function activateUnit(unit)
    local id = unit.id
    local x, y, z = unit.x, unit.y, unit.z
    local module = unit.module
    local start, collide
    if module then
        module = require(module)
        local think = unit.think and module[unit.think]
        if type(think) == "function" then
            unit.think = think
            thinkingunits[id] = unit
        end
        start = unit.start and module[unit.start]
        unit.collide = unit.collide and module[unit.collide] or Behavior.collideDefault
    end

    local tile = unit.tile
    if not tile then
        local tileset = unit.tileset
        local tileid = unit.tileid
        tile = tileset and tileid and Tiled.tilesets[tileset][tileid]
        unit.tile = tile
    end
    if tile then
        scene:addAnimatedTile(id, tile, x, y, z, unit.rotation, unit.scalex, unit.scaley)
    end

    local body = unit.body
    if not body then
        local bodytype = unit.bodytype
        body = bodytype and Physics.addBody(id, x, y, bodytype)
        unit.body = body
    end
    if body then
        body:setFixedRotation(not unit.bodyrotation)
        body:setAngle(unit.bodyrotation and unit.rotation or 0)
        local velx = unit.velx or 0
        local vely = unit.vely or 0
        body:setLinearVelocity(velx, vely)

        for i, fixture in pairs(body:getFixtures()) do
            fixture:destroy()
        end
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

    units[id] = unit
    addedunits[id] = nil

    if type(start) == "function" then
        start(unit)
    end

    return unit
end

function Units.add(base, id)
    if type(base) ~= "table" then
        if base and not unitprefabs[base] then
            return nil, string.format("No such prefab %s", base)
        end
        base = unitprefabs[base]
    end

    id = id or (base and base.id)
    if not id then
        id = nextunitid
        nextunitid = nextunitid + 1
    end

    if units[id] or addedunits[id] then
        return nil, string.format("Duplicate unit id %s", id)
    end

    local unit = {}
    if base then
        for k, v in pairs(base) do
            unit[k] = v
        end
    end
    unit.id = id
    addedunits[unit.id] = unit
    return unit
end

function Units.add_position(base, x, y, z)
    return Units.add_id_position(base, nil, x, y, z)
end

function Units.add_id_position(base, id, x, y, z)
    local unit, err = Units.add(base, id)
    if not unit then
        return nil, err
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

    return unit
end

function Units.get(id)
    return units[id]
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
        scene:remove(id)
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

function Units.addPrefabs(prefabs)
    for i = 1, #prefabs do
        local prefab = prefabs[i]
        prefab.id = nil
        local name = prefab.name or ""
        if name ~= "" and not unitprefabs[name] then
            unitprefabs[name] = prefab
        end
    end
end

function Units.collide()
	for _, contact in Physics.iterateContacts() do
		if contact:isTouching() then
			local f1, f2 = contact:getFixtures()
			local b1, b2 = f1:getBody(), f2:getBody()
			local id1, id2 = b1:getUserData(), b2:getUserData()
			local u1 = id1 and units[id1]
            local u2 = id2 and units[id2]
            if u1 and type(u1.collide)=="function" then
                u1:collide(u2)
            end
            if u2 and type(u2.collide)=="function" then
                u2:collide(u1)
            end
		end
	end
end

return Units