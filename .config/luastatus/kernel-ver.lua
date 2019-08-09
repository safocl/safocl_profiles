widget = {
    plugin = 'timer',
    opts = {period = 999999},
    cb = function()
        local command = 'uname -r'
        local handle = io.popen(command)
        local result = string.format('%s', handle:read("*line"))
        --local result = string.gsub(string.format('%s', handle:read("*a")), '.$', '')
        handle:close()
        return {full_text = string.format('%s%s', ' ', result), color = '#fff555'}
    end,
}
