widget = {
    plugin = 'timer',
    opts = {period = 999},
    cb = function(t)
        return {full_text = ' '..luastatus.dollar{'uname', '-r'}, color = '#fff555'}
    end,
}
