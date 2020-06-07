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
--return get_mem_seg()
widget = {
    plugin = 'timer',
    opts = {period = 1},
    cb = function(t)
        return {get_mem_seg()}
    end
}




--local P = {}
--
--function P.get_usage()
--    local f = assert(io.open('/proc/meminfo', 'r'))
--    local r = {}
--    for line in f:lines() do
--        local key, value, unit = line:match('(%w+):%s+(%w+)%s+(%w+)')
--        if key == 'MemTotal' then
--            r.total = {value = tonumber(value), unit = unit}
--        elseif key == 'MemAvailable' then
--            r.avail = {value = tonumber(value), unit = unit}
--        end
--    end
--    f:close()
--    return r
--end
--
--function P.widget(tbl)
--    return {
--        plugin = 'timer',
--        opts = tbl.timer_opts,
--        cb = function()
--            return tbl.cb(P.get_usage())
--        end,
--        event = tbl.event,
--    }
--end
--
--return P
