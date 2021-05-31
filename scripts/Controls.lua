local Controls = {}
local Config = require "Config"

function Controls.getDirectionInput()
	local numinputs = 0
	local x, y = 0, 0
	local deadzonesq = 1/16

	local joysticks = love.joystick:getJoysticks()
	for i = 1, #joysticks do
		local joystick = joysticks[i]
		local jx, jy = 0, 0
		local hl, hr, hu, hd
		if joystick:isGamepad() then
			jx = joystick:getGamepadAxis("leftx")
			jy = joystick:getGamepadAxis("lefty")
			hl = joystick:isGamepadDown("dpleft")
			hr = joystick:isGamepadDown("dpright")
			hu = joystick:isGamepadDown("dpup")
			hd = joystick:isGamepadDown("dpdown")
		else
			jx = joystick:getAxis(1)
			jy = joystick:getAxis(2)
			local hat = joystick:getHat(1) or ""
			hl = hat:find("l") ~= nil
			hr = hat:find("r") ~= nil
			hu = hat:find("u") ~= nil
			hd = hat:find("d") ~= nil
		end
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
		if joystick:isGamepad() then
			fire  = fire  or joystick:isGamepadDown(Config.joy_fire)
			focus = focus or joystick:isGamepadDown(Config.joy_focus)
			bomb  = bomb  or joystick:isGamepadDown(Config.joy_bomb)
		else
			fire  = fire  or joystick:isDown(Config.joy_fire)
			focus = focus or joystick:isDown(Config.joy_focus)
			bomb  = bomb  or joystick:isDown(Config.joy_bomb)
		end
	end
	return fire, focus, bomb
end

return Controls