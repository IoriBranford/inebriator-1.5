local Behavior = require "Behavior"
local Audio = require "Audio"
local Units = require "Units"
local Gameplay = require "Gameplay"

local Player = {}

local function handleDamage(player)
    local invincibletime = player.invincibletime
    invincibletime = invincibletime - 1
    player.invincibletime = invincibletime
    if invincibletime > 0 then
        player.health = 1
    elseif player.health < 1 then
        -- Audio.play("data/sounds/scream.ogg")
        Audio.play("data/sounds/selfdestruct.ogg")
        local x, y = player.body:getPosition()
        local explosion = Units.add_position("ExplosionPlayer", x, y, player.z)
        explosion.dy = Gameplay.getCameraVelY()
        Units.remove(player)
        Gameplay.prepPlayerRespawn(60)
    end
end

function Player.thinkGameplay(player)
    handleDamage(player)
end

Player.collideDefault = Behavior.collideDefault

return Player