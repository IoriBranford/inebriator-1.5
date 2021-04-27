local Timeline = {}
Timeline.__index = Timeline

function Timeline.new()
    return setmetatable({
        time = 0,
        eventindex = 1,
        events = {}
    }, Timeline)
end

function Timeline:addEvent(time, command, param)
    local event = {
        time = time,
        command = command,
        param = param
    }
    event.time = time
    event.command = command
    assert(type(event.command) == "function")
    local events = self.events
    events[#events + 1] = event
end

local function compare(a, b)
    return a.time < b.time
end

function Timeline:sort()
    table.sort(self.events, compare)
end

function Timeline:advance(dtime)
    local time = self.time + dtime
    local events = self.events
    local eventindex = self.eventindex
    local event = events[eventindex]
    while event and time >= event.time do
        local command = event.command
        if command then
            command(event.param)
        end
        eventindex = eventindex + 1
        event = events[eventindex]
    end
    self.time = time
    self.eventindex = eventindex
end

return Timeline
