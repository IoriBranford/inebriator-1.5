local Gui = {}
local Tiled = require "Tiled"
local Scene = require "Scene"

local scene

function Gui.drawGauge()

end

local function addLayerToScene(layer)
    local layername = layer.name or ""
    local layertype = layer.type
    local scenelayer = {}
    local layerhidden = layer.visible == false
    -- if layertype == "group" then
    --     for i = 1, #layer do
    --         addLayerToScene(layer[i])
    --     end
    -- else
    if layertype == "objectgroup" then
        for i = 1, #layer do
            local object = layer[i]
            local sceneobject
            if object.text then
                sceneobject = scene:addText(object.id, object.text, object.x, object.y, object.z, object.rotation, object.scalex, object.scaley)
            elseif object.tile then
                sceneobject = scene:addAnimatedTile(object.id, object.tile, object.x, object.y, object.z, object.rotation, object.scalex, object.scaley)
            end
            if sceneobject then
                sceneobject.hidden = layerhidden or object.visible == false
                local name = object.name or ""
                if name == "" or scenelayer[name] then
                    name = object.id
                end
                scenelayer[name] = sceneobject
            end
        end
    end
    if layername ~= "" then
        Gui.root[layername] = scenelayer
    end
end

function Gui.load(filename)
    scene = Scene.new()
    Gui.root = {}
    local map = Tiled.load(filename)
    local layers = map.layers

    for i, layer in ipairs(layers) do
        addLayerToScene(layer)
    end
end

function Gui.clear()
	scene = nil
    Gui.root = nil
end

function Gui.setLayerHidden(layername, hidden)
    local layer = Gui.root[layername]
    if not layer then
        return
    end
    for _, sceneobject in pairs(layer) do
        sceneobject.hidden = hidden
    end
end

function Gui.showLayer(layername, visibleobjects)
    Gui.setLayerHidden(layername, nil)
    if visibleobjects then
        Gui.showOnlyLayerObjects(layername, visibleobjects)
    end
end

function Gui.showOnlyLayer(layername, visibleobjects)
    for name, layer in pairs(Gui.root) do
        Gui.setLayerHidden(name, name ~= layername)
    end
    if visibleobjects then
        Gui.showOnlyLayerObjects(layername, visibleobjects)
    end
end

function Gui.showOnlyLayerObjects(layername, visibleobjects)
    local layer = Gui.root[layername]
    if not layer then
        return
    end
    for name, sceneobject in pairs(layer) do
        sceneobject.hidden = not visibleobjects[name]
    end
end

function Gui.update(dsecs)
    scene:updateAnimations(dsecs)
end

function Gui.draw()
    scene:draw()
end

return Gui