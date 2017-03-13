widget = {
    plugin = 'xkb',
    cb = function(t)
        if t.name == 'us' then
            return {full_text = '[Eng]', color = '#FA7282'}
        elseif t.name == 'ru' then
            return {full_text = '[Rus]', color = '#6AA1D6'}
        else
            return {full_text = '[' .. t.id .. ']'}
        end
    end,
}
