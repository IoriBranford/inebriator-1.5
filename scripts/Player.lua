local Unit = require "Unit"
local Audio = require "Audio"
local Units = require "Units"
local Gameplay = require "Gameplay"

local Player = {}

function Player.startGameplay(player)
    player.hitbox = Units.add_id_position("PlayerHitbox", "playerhitbox", player.x, player.y, player.z+1)
end

function Player.thinkGameplay(player)
    local invincibletime = player.invincibletime or 1
    invincibletime = math.max(0, invincibletime - 1)
    player.invincibletime = invincibletime
end

function Player.setVelocity(player, vx, vy)
    if player.body then
        player.body:setLinearVelocity(vx, vy)
        player.hitbox.body:setLinearVelocity(vx, vy)
    end
end

function Player.remove(player)
    Units.remove(player.hitbox)
    Units.remove(player)
end

Player.collideDefault = Unit.collideDefault

return Player