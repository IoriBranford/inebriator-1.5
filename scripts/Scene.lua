local tablex = require "pl.tablex"
local Tiled = require "Tiled"

local Scene = {}

local sceneobjects

function Scene.clear()
    sceneobjects = {}
end
Scene.clear()

function Scene.add(id, drawable, quad, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = {
        id = id,
        drawable = drawable,
        quad = quad,
        w = w or math.huge,
        h = h or math.huge,
        x = x or 0,
        y = y or 0,
        z = z or 0,
        r = r or 0,
        sx = sx or 1,
        sy = sy or sx or 1,
        ox = ox or 0,
        oy = oy or 0,
        kx = kx or 0,
        ky = ky or 0
    }

    sceneobjects[id] = sceneobject
    return sceneobject
end

function Scene.addChunk(id, chunk, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
    return Scene.add(id, chunk.tilebatch, nil, w, h, x, y, z, r, sx, sy, ox, oy, kx, ky)
end

function Scene.setTile(sceneobject, tile, animated)
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

function Scene.addTile(id, tile, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = Scene.add(id, nil, nil, nil, nil, x, y, z, r, sx, sy, nil, nil, kx, ky)
    Scene.setTile(sceneobject, tile)
    return sceneobject
end

function Scene.addAnimatedTile(id, tile, x, y, z, r, sx, sy, ox, oy, kx, ky)
    local sceneobject = Scene.add(id, nil, nil, nil, nil, x, y, z, r, sx, sy, nil, nil, kx, ky)
    Scene.setTile(sceneobject, tile, true)
    return sceneobject
end

function Scene.get(id)
    return sceneobjects[id]
end

function Scene.remove(id)
    sceneobjects[id] = nil
end

function Scene.updateFromBody(id, body, fixedfrac)
    local sceneobject = sceneobjects[id]
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

function Scene.updateAnimations(dsecs)
    for id, sceneobject in pairs(sceneobjects) do
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

local function sortScene(a, b)
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

local sqrt2 = math.sqrt(2)
function Scene.draw(viewx, viewy, vieww, viewh)
    local tx = -math.floor(viewx)
    local ty = -math.floor(viewy)
    love.graphics.translate(tx, ty)

    local viewr = viewx + vieww
    local viewb = viewy + viewh
    for id, sceneobject in tablex.sortv(sceneobjects, sortScene) do
        local x = sceneobject.x
        local y = sceneobject.y
        local ox = sceneobject.ox
        local oy = sceneobject.oy
        local sx = sceneobject.sx
        local sy = sceneobject.sy
        local sxsqrt2 = sx*sqrt2
        local sysqrt2 = sy*sqrt2
        local l = x - sxsqrt2*ox
        local t = y - sysqrt2*oy
        local r = l + sxsqrt2*sceneobject.w
        local b = t + sysqrt2*sceneobject.h
        l, r = math.min(l, r), math.max(l, r)
        t, b = math.min(t, b), math.max(t, b)
        if r > viewx and viewr > l and b > viewy and viewb > t then
            local quad = sceneobject.quad
            if quad then
                love.graphics.draw(sceneobject.drawable, quad, math.floor(x), math.floor(y),
                    sceneobject.r, sx, sy, ox, oy, sceneobject.kx, sceneobject.ky)
            else
                love.graphics.draw(sceneobject.drawable, math.floor(x), math.floor(y),
                    sceneobject.r, sx, sy, ox, oy, sceneobject.kx, sceneobject.ky)
            end
        end
    end
end

return Scene
