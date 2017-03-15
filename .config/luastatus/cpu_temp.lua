temp_file = io.open('/sys/class/hwmon/hwmon0/temp2_input')
temp_file:setvbuf('no')

widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function()
        temp_file:seek('set', 0)
        return {full_text=' '..(temp_file:read() / 1000)..'°C', color='#00e0ff'}
    end,
}
