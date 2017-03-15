-- posix = require("posix")
local color_warn = ''
local sleep_duration = 0.2

local stat = io.open('/proc/stat', 'r')
stat:setvbuf('no')


function stat_upd()
    stat:seek('set', 5)
--    local Stats = stat:read()
    local point = {}
    point.user, point.nice, point.system, point.idle, point.iowait, point.irq, point.softirq, point.steal, point.guest, point.guest_nice = string.match(stat:read(), '(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*)')
    return point
end


function cpu_usage()
    local cur, prev = {}, {}
    
    prev = stat_upd()

    luastatus.rc{"sleep", sleep_duration}

    cur = stat_upd()

    local PrevIdle = prev.idle + prev.iowait
    local Idle = cur.idle + cur.iowait

    local PrevNonIdle = (prev.user + prev.nice + prev.system + prev.irq + prev.softirq + prev.steal)
    local NonIdle = (cur.user + cur.nice + cur.system + cur.irq + cur.softirq + cur.steal)

    local PrevTotal = (PrevIdle + PrevNonIdle)
    local Total = (Idle + NonIdle)

    local totald = (Total - PrevTotal) 
    local idled = (Idle - PrevIdle)

    local CPU_Percentage = (totald - idled) / totald * 100
    
    if CPU_Percentage > 90 then
        color_warn = '#FF4040'
    else 
        color_warn = '#00e0ff'
    end
    return string.format('%3.0f%s', CPU_Percentage, '%')
end

widget = {
    plugin = 'timer',
    opts = {
            period = 2
            --fifo = '/proc/stat'
           },
    cb = function()
        return {full_text='CPU'..cpu_usage(), color=color_warn}
    end,
}
