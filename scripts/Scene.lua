local Tiled = require "Tiled"

local SceneObject = {}
SceneObject.__index = SceneObject

function SceneObject.__lt(a, b)
    local az = a.z or 0
    local bz = b.z or 0
    if az < bz then
        return true
    end
    if az == bz then
        local ay = a.y or 0
        local by = b.y or 0
        if ay < by then
            return true
        end
        if ay == by then
            local ax = a.x or 0
            local bx = b.x or 0
            return ax < bx
        end
    end
end

local function setObjectTile(sceneobject, tile, animated)
    sceneobject.drawable = tile.image
    sceneobject.quad = tile.quad
    sceneobject.width = tile.width
    sceneobject.height = tile.height
    sceneobject.ox = tile.originx
    sceneobject.oy = tile.originy
    local animation = animated and tile.animation
    if animation then
        sceneobject.animation = animation
        sceneobject.animationframe = 1
        sceneobject.animationtime = 0
    end
end
SceneObject.setTile = setObjectTile

local Scene = {}
Scene.__index = Scene

function Scene.new()
    local scene = {
        byid = {}
    }
    return setmetatable(scene, Scene)
end

function Scene:add(id, drawable, quad, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = setmetatable({}, SceneObject)
    sceneobject.id = id
    sceneobject.drawable = drawable
    sceneobject[drawable:type():lower()] = drawable
    sceneobject.quad = quad
    sceneobject.w = w or math.huge
    sceneobject.h = h or math.huge
    sceneobject.x = x or 0
    sceneobject.y = y or 0
    sceneobject.z = z or 0
    sceneobject.r = r or 0
    sceneobject.sx = sx or 1
    sceneobject.sy = sy or sx or 1
    sceneobject.ox = ox or 0
    sceneobject.oy = oy or 0
    sceneobject.kx = kx or 0
    sceneobject.ky = ky or 0
    sceneobject.hidden = nil
    sceneobject.draw = nil

    self.byid[id] = sceneobject
    return sceneobject
end

function Scene:addChunk(id, chunk, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    return self:add(id, chunk.tilebatch, nil, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
end

function Scene:addTile(id, tile, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = self:add(id, tile.image, nil, nil, nil, x, y, z, r, sx, sy, nil, nil, kx, ky)
    setObjectTile(sceneobject, tile)
    return sceneobject
end

function Scene:addAnimatedTile(id, tile, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = self:add(id, tile.image, nil, nil, nil, x, y, z, r, sx, sy, nil, nil, kx, ky)
    setObjectTile(sceneobject, tile, true)
    return sceneobject
end

function Scene:addText(id, text, x, y, z, r, sx, sy, ox, oy, kx, ky)
    return self:add(id, text, nil, text:getWidth(), text:getHeight(), x, y, z, r, sx, sy, ox, oy, kx, ky)
end

function Scene:addCustom(id, draw, drawable, quad, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = self:add(id, drawable, quad, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    assert(type(draw) == "function")
    sceneobject.draw = draw
    return sceneobject
end

function Scene:get(id)
    return self.byid[id]
end

function Scene:remove(id)
    self.byid[id] = nil
end

function Scene:updateFromUnit(id, unit, fixedfrac)
    local sceneobject = self.byid[id]
    if sceneobject then
        local vx, vy = unit.velx, unit.vely
        local av = unit.avel
        local x, y = unit.x, unit.y
        local r = unit.rotation
        sceneobject.x = x + vx * fixedfrac
        sceneobject.y = y + vy * fixedfrac
        sceneobject.r = r + av * fixedfrac
    end
end

function Scene:updateFromBody(id, body, fixedfrac)
    local sceneobject = self.byid[id]
    if sceneobject then
        local vx, vy = body:getLinearVelocity()
        local av = body:getAngularVelocity()
        local x, y = body:getPosition()
        local r = body:getAngle()
        sceneobject.x = x + vx * fixedfrac
        sceneobject.y = y + vy * fixedfrac
        sceneobject.r = r + av * fixedfrac
    end
end

function Scene:updateAnimations(dsecs)
    for id, sceneobject in pairs(self.byid) do
        local animation = sceneobject.animation
        if animation then
            local aframe = sceneobject.animationframe
            local atime = sceneobject.animationtime
            aframe, atime = Tiled.getAnimationUpdate(animation, aframe, atime + dsecs)
            sceneobject.animationframe = aframe
            sceneobject.animationtime = atime
            sceneobject.quad = animation[aframe].tile.quad
        end
    end
end

-- local sqrt2 = math.sqrt(2)
function Scene:draw(viewx, viewy, vieww, viewh)
    -- local viewr = viewx + vieww
    -- local viewb = viewy + viewh
    local count = 0
    for id, sceneobject in pairs(self.byid) do
        if not sceneobject.hidden then
            count = count + 1
            self[count] = sceneobject
        end
    end
    for i = #self, count+1, -1 do
        self[i] = nil
    end
    table.sort(self)
    for i = 1, #self do
        local sceneobject = self[i]
        local x = sceneobject.x
        local y = sceneobject.y
        local ox = sceneobject.ox
        local oy = sceneobject.oy
        local sx = sceneobject.sx
        local sy = sceneobject.sy
        -- local sxsqrt2 = sx*sqrt2
        -- local sysqrt2 = sy*sqrt2
        -- local l = x - sxsqrt2*ox
        -- local t = y - sysqrt2*oy
        -- local r = l + sxsqrt2*sceneobject.w
        -- local b = t + sysqrt2*sceneobject.h
        -- l, r = math.min(l, r), math.max(l, r)
        -- t, b = math.min(t, b), math.max(t, b)
        -- if r > viewx and viewr > l and b > viewy and viewb > t then
            local quad = sceneobject.quad
            if sceneobject.draw then
                sceneobject:draw()
            elseif quad then
                love.graphics.draw(sceneobject.drawable, quad, math.floor(x), math.floor(y),
                    sceneobject.r, sx, sy, ox, oy, sceneobject.kx, sceneobject.ky)
            else
                love.graphics.draw(sceneobject.drawable, math.floor(x), math.floor(y),
                    sceneobject.r, sx, sy, ox, oy, sceneobject.kx, sceneobject.ky)
            end
        -- end
    end
end

return Scene
