local Unit = require "Unit"
local Audio = require "Audio"
local Units = require "Units"
local Gameplay = require "Gameplay"

local Player = {}

function Player.thinkGameplay(player)
    local invincibletime = player.invincibletime or 1
    invincibletime = math.max(0, invincibletime - 1)
    player.invincibletime = invincibletime
end

Player.collideDefault = Unit.collideDefault

return Player