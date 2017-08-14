temp_file = io.open('/sys/class/hwmon/hwmon0/temp2_input')
temp_file:setvbuf('no')

widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function()
        temp_file:seek('set', 0)
        local temp = (temp_file:read() / 1000)
        return {full_text=string.format('%s%3u%s', ' ', temp, '°C'), color='#00e0ff'}
    end,
}