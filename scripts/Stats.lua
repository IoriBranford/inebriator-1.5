local Stats = {}

local initialstats = {
    points = 0,
    extendpoints = 1000000,
    lives = 3,
    bombs = 0,
}

local stats = {}

function Stats.reset()
    for k,v in pairs(initialstats) do
        stats[k] = v
    end
end

function Stats.refreshGui(GameplayGui)
    GameplayGui.setScore(stats.points)
    GameplayGui.setExtendScore(stats.extendpoints)
    GameplayGui.setLives(stats.lives)
    GameplayGui.setWineBombs(stats.bombs)
end

setmetatable(Stats, {
	__index = function(_, k)
		return stats[k]
	end,
	__newindex = function(_, k, v)
		if initialstats[k] == nil then
			print("W: Ignoring unknown stat "..k)
		else
			stats[k] = v
		end
	end
})

return Stats
