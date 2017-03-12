function pulse()
        local pulse_vol = io.popen('pamixer --get-volume')
        pulse_vol:setvbuf('no')
        repeat
                cur_vol = pulse_vol:read("*l")
        until
                nil == pulse_vol:read("*l")
        pulse_vol:close()
        return cur_vol
end

widget = {
    plugin = 'alsa',
    cb = function(t)
        if t.mute then
            return {full_text = '[mute]', color = '#e03838'}
        else
            return {full_text = pulse(), color = '#718ba6'}
        end
    end,
}
