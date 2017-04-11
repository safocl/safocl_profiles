date = {}

function date_upd()
    date = os.date('*t')
    
    if date.wday == 1 then
        date.wday = 'Воскресенье'

        elseif date.wday == 2 then
                date.wday = 'Понедельник'

        elseif date.wday == 3 then
                date.wday = 'Вторник'

        elseif date.wday == 4 then
                date.wday = 'Среда'

        elseif date.wday == 5 then
                date.wday = 'Четверг'

        elseif date.wday == 6 then
                date.wday = 'Пятница'

        elseif date.wday == 7 then
                date.wday = 'Суббота'

    end

    result = string.format('%s%s %s.%s.%s %s%s ', '', date.wday, date.day, os.date('%m'), date.year, '', os.date('%H:%M'))
    return result
end

widget = {
    plugin = 'timer',
    opts = {period = 30},
    cb = function(t)
        return {full_text = date_upd(), color = '#EEEEEE'}
    end,
}
