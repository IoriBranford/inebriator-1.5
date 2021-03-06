local Physics = require "Physics"
local Units = require "Units"
local Camera = {}

Camera.Prefab = {
	id = "camera",
	width = 240, height = 320,
	x = 0, y = 0,
	velx = 0, vely = -1,
	module = "Camera",
	start = "start",
	think = "think",
	bodytype = "dynamic"
}

function Camera.start(camera)
	local areafixture = Physics.addRectangleFixture(camera.id, camera.width, camera.height, camera.width/2, camera.height/2)
	areafixture:setUserData("area")
	areafixture:setSensor(true)

	local offscreenmargin = 32
	local offscreeneater = Physics.addChainFixture(camera.id, true,
		-offscreenmargin, -offscreenmargin,
		camera.width+offscreenmargin, -offscreenmargin,
		camera.width+offscreenmargin, camera.height+offscreenmargin,
		-offscreenmargin, camera.height+offscreenmargin)
	offscreeneater:setUserData("offscreeneater")
	offscreeneater:setSensor(true)
end

function Camera.inputMove(camera, stagewidth, vxscale)
	local player = Units.get("player")
	local playervx = player and player.velx or 0
    camera.velx = playervx * vxscale

    local cameranextx = camera.x + camera.velx
    if cameranextx < 0 then
        camera.velx = -camera.x
    elseif cameranextx > stagewidth - camera.width then
        camera.velx = stagewidth - camera.width - camera.x
    end

    local cameranexty = camera.y + camera.vely
    if cameranexty <= 0 then
        camera.vely = -camera.y
    end

    camera.body:setLinearVelocity(camera.velx, camera.vely)
end

function Camera.think(camera)
	Camera.doCollisions(camera)
end

function Camera.doCollisions(camera)
	local body = camera.body
	local contacts = body:getContacts()
	local offscreeneater = camera.offscreeneater
	for i = 1, #contacts do
		local contact = contacts[i]
		if contact:isTouching() then
			local f1, f2 = contact:getFixtures()
			local b1, b2 = f1:getBody(), f2:getBody()
			if b2 == body then
				f1, f2 = f2, f1
				b1, b2 = b2, b1
			end
			if f1:getUserData() == "offscreeneater" then
				local id2 = b2:getUserData()
				local u2 = Units.get(id2)
				if u2 and u2.offscreenremove then
					Units.remove(id2)
				end
			end
		end
	end
end

return Camera