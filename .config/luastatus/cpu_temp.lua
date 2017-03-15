temp_file = io.open('/sys/class/thermal/thermal_zone0/temp')
temp_file:setvbuf('no')

widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function()
        temp_file:seek('set', 0)
        return {full_text=' '..(temp_file:read() / 1000)..'°C', color='#00e0ff'}
    end,
}
