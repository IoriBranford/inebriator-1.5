local Config = {}
local pl_pretty = require "pl.pretty"

local filename = "config.lua"

local defaults = {
	_version = 1,
	drawbodies = false,
	drawstats = false,
	exclusive = false,
	exhibit = false,
	rotation = 0,
	fullscreen = true,
	vsync = true,
	usedpiscale = false,
	basewindowwidth = 240,
	basewindowheight = 320,
	canvasresolution = "HIGH",
	canvasscaleint = true,
	canvasscalesoft = false,
	musicvolume = 0.5,
	soundvolume = 0.5,
	resizable = false,

	key_left = "left",
	key_right = "right",
	key_up = "up",
	key_down = "down",
	key_fire = "z",
	key_focus = "x",
	key_bomb = "c",
	key_pause = "pause",
	key_pausemenu = "escape",
	key_restart = "none",

	game_difficulty = "NORMAL",
	game_dialogue = true,
	player_character = "Amy",
	player_hitbox = "FOCUSFIRE",
	player_burst = 4,
	practice_lives = 2,
	practice_bombs = 1,
	practice_wingmen = 0,
	practice_powerlevel = 0,
	practice_stage = "DEMONREALM",

	joy_deadzone = 0.25,
	joy_move1 = "left",
	joy_move2 = "dp",
	joy_startbackrestart = false,
	joy_fire = "x",
	joy_focus = "a",
	joy_bomb = "b",
	joy_pause = "back",
	joy_pausemenu = "start",
	joy_namingscheme = "XBOX",

	hud_inner = "AUTO",
	hud_outer = true,

	backgroundstyle = "ART2",
	highscores_difficulty = "NORMAL",
	highscores_character = "Amy",
	highscores_onlineposition = "TOP",
}

local config = {}

function Config.reset()
	for k,v in pairs(defaults) do
		config[k] = v
	end
end
Config.reset()

function Config.load()
	if love.filesystem.getInfo(filename) then
		local fileconfig = love.filesystem.load(filename)()
		for k,v in pairs(fileconfig) do
			Config[k] = v
		end
	end
end

function Config.save()
	local configtext = "return "..pl_pretty.write(config)
	love.filesystem.write(filename, configtext)
end

setmetatable(Config, {
	__index = function(_, k)
		return config[k]
	end,
	__newindex = function(_, k, v)
		if defaults[k] then
			config[k] = v
		else
			print("W: Ignoring unknown config variable "..k)
		end
	end
})

return Config