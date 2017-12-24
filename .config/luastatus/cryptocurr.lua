widget = {
    plugin = 'timer',
    opts = {period = 600}, -- всё равно раз в день обновляется же
    cb = function()
        return {full_text=luastatus.dollar{os.getenv('HOME') .. '/.config/luastatus/cryptocurr.bash'}, color='#BFB630'}
    end,
}

