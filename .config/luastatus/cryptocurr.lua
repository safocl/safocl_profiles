function getDash()
    local command = 'curl -s https://coinmarketcap.com/currencies/dash/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen(command)
    local result = string.format('%s', handle:read("*a"))
    handle:close()
    return string.format('%s:%s', 'DASH', result:gsub('^.*"price": "(.*)",.*','%1'))
end

function getBtc()
    local command = 'curl -s https://coinmarketcap.com/currencies/bitcoin/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen(command)
    local result = string.format('%s', handle:read("*a"))
    handle:close()
    return string.format('%s:%s', 'BTC', result:gsub('^.*"price": "(.*)",.*','%1'))
end

function getEth()
    local command = 'curl -s https://coinmarketcap.com/currencies/ethereum/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen(command)
    local result = string.format('%s', handle:read("*a"))
    handle:close()
    return string.format('%s:%s', 'ETH', result:gsub('^.*"price": "(.*)",.*','%1'))
end

function getLtc()
    local command = 'curl -s https://coinmarketcap.com/currencies/litecoin/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen(command)
    local result = string.format('%s', handle:read("*a"))
    handle:close()
    return string.format('%s:%s', 'LTC', result:gsub('^.*"price": "(.*)",.*','%1'))
end



widget = {
    plugin = 'timer',
    opts = {period = 120}, -- всё равно раз в день обновляется же
    cb = function(t)
        return {full_text=string.format('%s  %s  %s  %s', getBtc(), getLtc(), getDash(), getEth()), color='#BFB630'}
    end,
}

