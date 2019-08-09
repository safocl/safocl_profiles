--function vol()
--    return os.execute('pamixer --get-volume')
--end


widget = {
    plugin = 'alsa',
    opts = {in_db = false},
    cb = function(t)
        if t.mute then
            return {full_text = '[mute]', color = '#e03838'}
        else
            return {full_text = string.format("%s%.0f", "♪:", t.vol.cur/t.vol.max*100), color = '#BFAB8E'}          
        end
    end,
}

--widget = {
--    plugin = 'alsa',
--    cb = function(t)
--        if t.mute then
--            return {full_text = '[mute]', color = '#e03838'}
--        else
--            return {full_text = "♪:"..luastatus.dollar{'pamixer', '--get-volume'}, color = '#BFAB8E'}
--        end
--    end,
--}
--
