currency = assert(io.open(os.getenv('HOME')..'/.config/i3/currency', 'r'))
currency:setvbuf('no')

function get_curr()
    local result = '[-?-]'
    currency:seek('set', 0)
    if currency:read() ~= nil then
    currency:seek('set', 0)
    result = string.format('%s', currency:read())
    end
    return {full_text = result, color = '#ff8000'}
end

--[[
widget = {
    plugin = 'timer',
    opts = {period = 10},
    cb = function(t)
        return {get_curr()}
    end,
}
]]--

widget = {
    plugin = 'inotify',
    opts = {
        watch = {
            [os.getenv('HOME')..'/.config/i3/currency'] = 'modify'}
    },
    cb = function(t)
        return {get_curr()}
    end,
}
