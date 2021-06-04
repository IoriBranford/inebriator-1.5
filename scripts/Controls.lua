local Controls = {}
local Config = require "Config"

local DefaultMapping = "%s,%s,a:b0,b:b1,back:b6,dpdown:h0.4,dpleft:h0.8,dpright:h0.2,dpup:h0.1,guide:b8,leftshoulder:b4,leftstick:b9,lefttrigger:a2,leftx:a0,lefty:a1,rightshoulder:b5,rightstick:b10,righttrigger:a5,rightx:a3,righty:a4,start:b7,x:b2,y:b3,platform:%s,"

function Controls.init()
	love.joystick.loadGamepadMappings("data/gamecontrollerdb.txt")
    if love.filesystem.getInfo("gamecontrollerdb.txt") then
        love.joystick.loadGamepadMappings("gamecontrollerdb.txt")
    end
	local os = love.system.getOS()
	local joysticks = love.joystick:getJoysticks()
	for i = 1, #joysticks do
		local joystick = joysticks[i]
		if not joystick:isGamepad() then
			local mapping = string.format(DefaultMapping, joystick:getGUID(), joystick:getName(), os)
			print(mapping)
			love.joystick.loadGamepadMappings(mapping)
		end
	end
	love.joystick.saveGamepadMappings("gamecontrollerdb.txt")
end

function Controls.getDirectionInput()
	local numinputs = 0
	local x, y = 0, 0
	local deadzonesq = 1/16

	local joysticks = love.joystick:getJoysticks()
	for i = 1, #joysticks do
		local joystick = joysticks[i]
		local jx, jy = 0, 0
		local hl, hr, hu, hd
		-- if joystick:isGamepad() then
			jx = joystick:getGamepadAxis("leftx")
			jy = joystick:getGamepadAxis("lefty")
			hl = joystick:isGamepadDown("dpleft")
			hr = joystick:isGamepadDown("dpright")
			hu = joystick:isGamepadDown("dpup")
			hd = joystick:isGamepadDown("dpdown")
		-- else
		-- 	jx = joystick:getAxis(1)
		-- 	jy = joystick:getAxis(2)
		-- 	local hat = joystick:getHat(1) or ""
		-- 	hl = hat:find("l") ~= nil
		-- 	hr = hat:find("r") ~= nil
		-- 	hu = hat:find("u") ~= nil
		-- 	hd = hat:find("d") ~= nil
		-- end
		if jx*jx + jy*jy > deadzonesq then
			numinputs = numinputs + 1
			x = x + jx
			y = y + jy
		end
		if hl or hr or hu or hd then numinputs = numinputs + 1 end
		if hl then x = x - 1 end
		if hr then x = x + 1 end
		if hu then y = y - 1 end
		if hd then y = y + 1 end
	end

	local kl = love.keyboard.isDown(Config.key_left)
	local kr = love.keyboard.isDown(Config.key_right)
	local ku = love.keyboard.isDown(Config.key_up)
	local kd = love.keyboard.isDown(Config.key_down)
	if kl or kr or ku or kd then numinputs = numinputs + 1 end
	if kl then x = x - 1 end
	if kr then x = x + 1 end
	if ku then y = y - 1 end
	if kd then y = y + 1 end

	if numinputs > 1 then
		x = x / numinputs
		y = y / numinputs
	end
	return x, y
end

function Controls.getButtonInput()
	local fire = love.keyboard.isDown(Config.key_fire)
	local focus = love.keyboard.isDown(Config.key_focus)
	local bomb = love.keyboard.isDown(Config.key_bomb)

	local joysticks = love.joystick:getJoysticks()
	for i = 1, #joysticks do
		local joystick = joysticks[i]
		-- if joystick:isGamepad() then
			fire  = fire  or joystick:isGamepadDown(Config.joy_fire)
			focus = focus or joystick:isGamepadDown(Config.joy_focus)
			bomb  = bomb  or joystick:isGamepadDown(Config.joy_bomb)
		-- else
		-- 	fire  = fire  or joystick:isDown(Config.joy_fire)
		-- 	focus = focus or joystick:isDown(Config.joy_focus)
		-- 	bomb  = bomb  or joystick:isDown(Config.joy_bomb)
		-- end
	end
	return fire, focus, bomb
end

return Controls