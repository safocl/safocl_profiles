widget = {
    plugin = 'alsa',
    cb = function(t)
        if t.mute then
            return {full_text = '[mute]', color = '#e03838'}
        else
            return {full_text = "♪:"..luastatus.dollar{'pamixer', '--get-volume'}, color = '#BFAB8E'}
        end
    end,
}
