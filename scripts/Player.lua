local Behavior = require "Behavior"
local Audio = require "Audio"
local Units = require "Units"
local Gameplay = require "Gameplay"

local Player = {}

function Player.thinkGameplay(player)
    local invincibletime = player.invincibletime or 1
    invincibletime = invincibletime - 1
    player.invincibletime = invincibletime
end

Player.collideDefault = Behavior.collideDefault

return Player