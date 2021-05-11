local Hud = {}

local scene

function Hud.init(scene0, objectlayer)
	scene = scene0
	for i, object in ipairs(objectlayer) do
        local sceneobject
        if object.text then
            sceneobject = scene:addText(object.id, object.text, object.x, object.y, object.z, object.rotation, object.scalex, object.scaley)
            sceneobject.hidden = object.visible == false
        elseif object.tile then
            sceneobject = scene:addAnimatedTile(object.id, object.tile, object.x, object.y, object.z, object.rotation, object.scalex, object.scaley)
            sceneobject.hidden = object.visible == false
        end
    end
end

function Hud.clear()
	scene = nil
end

return Hud