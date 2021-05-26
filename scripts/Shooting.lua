local Units = require "Units"
local Shooting = {}

local function shoot(shooter, shottype)
    local x, y = shooter.body:getPosition()
    local shot = Units.add_position(shottype, x, y)
    shot.shooterid = shooter.id
    return shot
end
Shooting.shoot = shoot

local function shoot_vel(shooter, shottype, velx, vely)
    local shot = shoot(shooter, shottype)
    shot.velx, shot.vely = velx, vely
    if shot.bodyrotation then
        shot.rotation = math.atan2(vely, velx)
    end
    return shot
end
Shooting.shoot_vel = shoot_vel

local function shoot_dir(shooter, shottype, dirx, diry)
    local shot = shoot(shooter, shottype)
    local movespeed = shot.movespeed or 1
    local velx = dirx*movespeed
    local vely = diry*movespeed
    shot.velx, shot.vely = velx, vely
    if shot.bodyrotation then
        shot.rotation = math.atan2(vely, velx)
    end
    return shot
end
Shooting.shoot_dir = shoot_dir

local function shoot_dir_speed(shooter, shottype, dirx, diry, movespeed)
    return shoot_vel(shooter, shottype, dirx*movespeed, diry*movespeed)
end
Shooting.shoot_dir_speed = shoot_dir_speed

local function shoot_targetPos_speed(shooter, shottype, targetx, targety, movespeed)
    local x, y = shooter.body:getPosition()
    local distx, disty = targetx-x, targety-y
    local dist = math.sqrt(distx*distx+disty*disty)
    local dirx, diry = 0, 0
    if dist > 0 then
        dirx, diry = distx/dist, disty/dist
    end
    return movespeed and shoot_dir_speed(shooter, shottype, dirx, diry, movespeed)
        or shoot_dir(shooter, shottype, dirx, diry)
end
Shooting.shoot_targetPos_speed = shoot_targetPos_speed

local function shoot_targetPos(shooter, shottype, targetx, targety)
    return shoot_targetPos_speed(shooter, shottype, targetx, targety, nil)
end
Shooting.shoot_targetPos = shoot_targetPos

local function shoot_targetUnit_speed(shooter, shottype, targetunit, movespeed)
    local targetx, targety
    local targetbody = targetunit.body
    if targetbody then
        targetx, targety = targetbody:getPosition()
    else
        targetx, targety = targetunit.x, targetunit.y
    end
    return shoot_targetPos_speed(shooter, shottype, targetx, targety, movespeed)
end
Shooting.shoot_targetUnit_speed = shoot_targetUnit_speed

local function shoot_targetUnit(shooter, shottype, targetunit)
    return shoot_targetUnit_speed(shooter, shottype, targetunit, nil)
end
Shooting.shoot_targetUnit = shoot_targetUnit

return Shooting