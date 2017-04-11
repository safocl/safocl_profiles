local cur, old = {}, {}

function stat(rx_tx)
    local stat = io.open('/sys/devices/pci0000:00/0000:00:1c.4/0000:03:00.0/net/enp3s0/statistics/'..rx_tx..'_bytes')
    stat:setvbuf('no')
    stat:seek('set', 0)
    local result = stat:read()
    stat:close()
    return result
end

function net_speed()
    if cur.rx==nil then
        old.rx, old.tx, old.time = 0,0,0
    else
        old.rx, old.tx, old.time = cur.rx, cur.tx, cur.time
    end
--    os.execute("sleep 1")
    cur.rx, cur.tx, cur.time = stat('rx'), stat('tx'), os.time()

    local time_diff = (cur.time - old.time)
    local rx_kib, tx_kib, rx_size, tx_size = 0, 0, '', ''

    if time_diff > 0 then
        local rx_diff = (cur.rx - old.rx)
        local tx_diff = (cur.tx - old.tx)
        rx_kib = (rx_diff / time_diff / 1024 * 8)
        tx_kib = (tx_diff / time_diff / 1024 * 8)

        if rx_kib > 1024 then
            rx_kib = (rx_kib / 1024)
            rx_size = 'Mb'
        else
            rx_size = 'Kb'
        end

        if tx_kib > 1024 then
            tx_kib = (tx_kib / 1024)
            tx_size = 'Mb'
        else
            tx_size = 'Kb'
        end
    else
        rx_rate = '???'
        tx_rate = '???'
    end
    local result = string.format('%s%5.1f%s %s%5.1f%s', '↓', rx_kib, rx_size, '↑', tx_kib, tx_size)
    return result
end

widget = {
    plugin = 'timer',
    opts = {period = 2},
    cb = function()
        return {full_text=net_speed(), color='#0080ff'}
    end,
}
