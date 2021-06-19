local Unit = require "Unit"
local Audio = require "Audio"
local Units = require "Units"
local Controls = require "Controls"

local Player = {}

function Player.startGameplay(player)
    player.hitbox = Units.add_id_position("PlayerHitbox", "playerhitbox", player.x, player.y, player.z+1)
end

function Player.inputMove(player, stagewidth)
    if not player then
        return
    end

    local vx, vy = Controls.getDirectionInput()
    local fire, focus, bomb = Controls.getButtonInput()

    local movespeed = player.movespeed
    if focus then
        movespeed = movespeed - 1
    end

    local camera = Units.get("camera")
    local camerah = camera.height
    local cameray = camera.y
    local cameravy = camera.vely
    vx, vy = vx * movespeed, vy * movespeed + cameravy
    local x, y = player.x, player.y
    if x + vx < 0 then
        vx = -x
    elseif x + vx > stagewidth then
        vx = stagewidth - x
    end
    if y + vy < cameray then
        vy = cameray - y
    elseif y + vy > cameray + camerah then
        vy = cameray + camerah - y
    end

    player.velx, player.vely = vx, vy
    player.hitbox.velx, player.hitbox.vely = vx, vy

    if player.body then
        player.body:setLinearVelocity(vx, vy)
        player.hitbox.body:setLinearVelocity(vx, vy)
    end
end

function Player.inputAttack(player)
    if not player then
        return
    end
    local firetime = player.firetime or 1
    firetime = firetime - 1
    if firetime >= 0 then
        player.firetime = firetime
    end
    local x, y = player.x, player.y
    local fire, focus, bomb = Controls.getButtonInput()
    if fire or focus then
        if firetime <= 0 then
            Audio.play("data/sounds/playershot.ogg")
            local camera = Units.get("camera")
            if focus then
                local bullet = Units.add_position("AmyShot0", x, y, player.z)
                bullet.vely = bullet.vely + camera.vely
                player.firetime = 3
            else
                for cameraoffcenter = -8, 8, 16 do
                    local bullet = Units.add_position("AmyShot0", x+cameraoffcenter, y, player.z)
                    bullet.vely = bullet.vely + camera.vely
                end
                player.firetime = 6
            end
        end
    end
end

function Player.thinkGameplay(player)
    Unit.doCollisions(player)
    local invincibletime = player.invincibletime or 1
    invincibletime = math.max(0, invincibletime - 1)
    player.invincibletime = invincibletime
    if invincibletime > 0 then
        player.health = 1
    end
end

function Player.checkKilled(player)
    if player.health < 1 then
        Audio.play("data/sounds/shriek.ogg")
        Audio.play("data/sounds/selfdestruct.ogg")
        local explosion = Units.add_position("ExplosionPlayer", player.x, player.y, player.z)
        local camera = Units.get("camera")
        explosion.vely = camera.vely
        Player.remove(player)
        return true
    end
end

function Player.remove(player)
    Units.remove(player.hitbox)
    Units.remove(player)
end

Player.collideDefault = Unit.collideDefault

return Player