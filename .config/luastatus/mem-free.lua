mem_uev = assert(io.open('/proc/meminfo', 'r'))
mem_uev:setvbuf('no')

function get_mem_seg()
    local result = '[-?-]'
    mem_uev:seek('set', 0)
    local full_mem, curr_mem, percent = 0, 0, 0
    for line in mem_uev:lines() do
        local key, value, um = string.match(line, '(.*): +(.*) +(.*)')
        if key == 'MemAvailable' then
            curr_mem = tonumber(value)
            break
        end
    end
    mem_uev:seek('set', 0)
    for line in mem_uev:lines() do
        local key, value, um = string.match(line, '(.*): +(.*) +(.*)')

        if key == 'MemTotal' then
            full_mem = tonumber(value)
            break
        end
    end
    if (curr_mem ~= 0 and full_mem ~= 0) and (curr_mem ~= nil and full_mem ~= nil) then
        percent = (1 - (curr_mem / full_mem)) * 100
        result = string.format('%3.0f%s', percent, "%")
    end
    return {full_text = ''..result, color = '#ff8000'}
end

widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function(t)
        return {get_mem_seg()}
    end,
}
