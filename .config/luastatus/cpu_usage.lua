-- posix = require("posix")

local sleep_duration = 0.2

local stat = io.open('/proc/stat', 'r')
stat:setvbuf('no')


function cpu_usage()

    stat:seek('set', 5)
    local previousStats = stat:read()

    luastatus.rc{"sleep", sleep_duration}
-- posix.sleep(sleep_duration)

    stat:seek('set', 5)
    local currentStats = stat:read()


    local user, nice, system, idle, iowait, irq, softirq, steal, guest, guest_nice = string.match(currentStats, '(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*)')

    local prevuser, prevnice, prevsystem, previdle, previowait, previrq, prevsoftirq, prevsteal, prevguest, prevguest_nice = string.match(previousStats, '(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*) +(.*)')

    user = tonumber(user)
    nice = tonumber(nice)
    system = tonumber(system)
    idle = tonumber(idle)
    iowait = tonumber(iowait)
    irq = tonumber(irq)
    softirq = tonumber(softirq)
    steal = tonumber(steal)
    guest = tonumber(guest)
    guest_nice = tonumber(guest_nice)

    prevuser = tonumber(prevuser)
    prevnice = tonumber(prevnice)
    prevsystem = tonumber(prevsystem)
    previdle = tonumber(previdle)
    previowait = tonumber(previowait)
    previrq = tonumber(previrq)
    prevsoftirq = tonumber(prevsoftirq)
    prevsteal = tonumber(prevsteal)
    prevguest = tonumber(prevguest)
    prevguest_nice = tonumber(prevguest_nice)


    local PrevIdle = previdle + previowait
    local Idle = idle + iowait

    local PrevNonIdle = (prevuser + prevnice + prevsystem + previrq + prevsoftirq + prevsteal)
    local NonIdle = (user + nice + system + irq + softirq + steal)

    local PrevTotal = (PrevIdle + PrevNonIdle)
    local Total = (Idle + NonIdle)

    local totald = (Total - PrevTotal) 
    local idled = (Idle - PrevIdle)

    local CPU_Percentage = (totald - idled) / totald * 100
    return string.format('%3.0f', CPU_Percentage)
end

widget = {
    plugin = 'timer',
    opts = {
            period = 2,
            fifo = '/proc/stat'
           },
    cb = function()
        return {full_text='CPU'..cpu_usage(), color='#ff8000'}
    end,
}
