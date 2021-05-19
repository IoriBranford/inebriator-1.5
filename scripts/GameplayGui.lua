local GameplayGui = {}
local Gui = require "Gui"

local hud

local initvisibleobjects = {
	SCORE = true,
	score = true,
	NEXTLIFE = true,
	extendscore = true,
	-- difficulty = true,
	-- powerlevel = true
}

function GameplayGui.load()
    Gui.load("data/gui_gameplay.lua")
	local hudtype = "hud_inner"
    Gui.showOnlyLayer(hudtype, initvisibleobjects)
    hud = Gui.root[hudtype]
end

function GameplayGui.clear()
	hud = nil
	Gui.clear()
end

function GameplayGui.setScore(points)
    hud.score.text:setf(tostring(points), hud.score.w, "right")
end

function GameplayGui.setExtendScore(extendpoints)
    hud.extendscore.text:setf(tostring(extendpoints), hud.extendscore.w, "right")
end

function GameplayGui.setLives(lives)
	local i = 1
    while i do
		local icon = hud["life"..i]
		if icon then
			icon.hidden = i > lives
			i = i + 1
		else
			i = nil
		end
    end
end

function GameplayGui.setWineBombs(winebombs)
	local i = 1
    while i do
		local icon = hud["winebomb"..i]
		if icon then
			icon.hidden = i > winebombs
			i = i + 1
		else
			i = nil
		end
    end
end

return GameplayGui