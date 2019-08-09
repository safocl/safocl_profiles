--[[
widget = {
    plugin = 'inotify',
    opts = {
        watch = {
            [os.getenv('HOME')..'/.config/i3/currency.py'] = 'access'}
    },
    cb = function(t)
        return {full_text=luastatus.dollar{os.getenv('HOME') .. '/.config/i3/currency.py'}, color='#ff8000'}
    end,
}
]]

widget = {
    plugin = 'timer',
    opts = {period = 600}, -- всё равно раз в день обновляется же
    cb = function()
        command = os.getenv('HOME')..'/.config/i3/currency.py'
        local handle = io.popen(command)
        local result = string.format('%s', handle:read("*a"))
        handle:close()

        return {full_text=result, color='#ff8000'}
    end,
}
