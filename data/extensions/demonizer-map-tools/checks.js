/// <reference types="@mapeditor/tiled-api" />

let convertMap10to15 = function(/** @type {TileMap} */ map) {
	let mapWidth = map.width * map.tileWidth
	let mapHeight = map.height * map.tileheight
	for (let i = 0; i < map.layerCount; ++i) {
		let layer = map.layerAt(i)
		if (layer.isObjectLayer) {
			/** @type {ObjectGroup} */ let objectgroup = layer
			let objects = objectgroup.objects

			for (let i in objects) {
				let object = objects[i]
				switch (object.type) {
					case "Trigger":
						if (object.property("activateobjects") != false) {
							object.setProperty("command", "addUnits")
							object.setProperty("commandparam", "layer")
						}
						if (object.property("timelinespeed"))
							object.x = mapWidth
						else
							object.x = -object.width
						object.y += object.height
						object.height = 0
						break
					case "PathGraph":
						object.type = "Path"
						break
					default:
						if (object.tile)
							object.type = "Unit"
						break
				}
			}

			if (objectgroup.property("script") == "PathGraph") {
				for (let i in objects) {
					let object = objects[i]
					if (object.type == "Trigger") {

					} else if (object.shape == MapObject.Polyline
					|| object.shape == MapObject.Polygon) {
						object.type = "Path"
					}
				}
			}
		}
	}
}

const DemonizerConvertCurrentMap10to15 = tiled.registerAction("DemonizerConvertCurrentMap10to15", function(action) {
	let map = tiled.activeAsset
	if (!map.isTileMap) {
		tiled.alert("Not a tile map!")
		return
	}
	convertMap10to15(map)
})
DemonizerConvertCurrentMap10to15.text = "Convert map from 1.0 to 1.5"

tiled.extendMenu("Map", [
	{ separator: true },
	{ action: "DemonizerConvertCurrentMap10to15" }
])