local Movement = {}

local function moveTowards(x0, x1, dx)
	x0 = x0 + dx
	if dx > 0 and x0 >= x1 or dx < 0 and x0 <= x1 then
		return x1
	end
	return x0
end
Movement.moveTowards = moveTowards

local function moveTowardsPoint_Speed(x0, y0, x1, y1, movespeed)
	local distx, disty = x1-x0, y1-y0
	local dist = math.sqrt(distx*distx + disty*disty)
	if dist <= 0 then
		return x0, y0
	end
	local dx = distx * movespeed / dist
	local dy = disty * movespeed / dist
	return moveTowards(x0, x1, dx), moveTowards(y0, y1, dy)
end
Movement.moveTowardsPoint_Speed = moveTowardsPoint_Speed

local function moveTowardsPoint_Timer(x0, y0, x1, y1, timer)
	if timer <= 0 then
		return x0, y0
	end
	local distx, disty = x1-x0, y1-y0
	local dx = distx / timer
	local dy = disty / timer
	return moveTowards(x0, x1, dx), moveTowards(y0, y1, dy)
end
Movement.moveTowardsPoint_Timer = moveTowardsPoint_Timer

return Movement