function getDash()
--    local command = 'curl -s https://coinmarketcap.com/currencies/dash/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen('perl -E \'say $1 if  `curl -s https://coinmarketcap.com/currencies/dash/` =~ m{"price":([0-9]+\\.\\d\\d).*$}m;\'')
    local result = string.format('%s', handle:read("*l"))
    handle:close()
    return string.format('%s:%s', 'DASH', result)
end

function getBtc()
--    local command = 'perl -E'.."'"..'say $1 if  `curl -s https://coinmarketcap.com/currencies/bitcoin/` =~ m/"price": "([0-9]+\.\d\d).*$/m;'.."'"
    local handle = io.popen('perl -E \'say $1 if  `curl -s https://coinmarketcap.com/currencies/bitcoin/` =~ m{"price":([0-9]+\\.\\d\\d).*$}m;\'')
    local result = string.format('%s', handle:read("*l"))
    handle:close()
    return string.format('%s:%s', 'BTC', result)
end

function getEth()
--    local command = 'curl -s https://coinmarketcap.com/currencies/ethereum/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen('perl -E \'say $1 if  `curl -s https://coinmarketcap.com/currencies/ethereum/` =~ m{"price":([0-9]+\\.\\d\\d).*$}m;\'')
    local result = string.format('%s', handle:read("*l"))
    handle:close()
    return string.format('%s:%s', 'ETH', result)
end

function getLtc()
--    local command = 'curl -s https://coinmarketcap.com/currencies/litecoin/|sed -n '.."'".."/"..'"price": "/p'.."'"
    local handle = io.popen('perl -E \'say $1 if  `curl -s https://coinmarketcap.com/currencies/litecoin/` =~ m{"price":([0-9]+\\.\\d\\d).*$}m;\'')
    local result = string.format('%s', handle:read("*l"))
    handle:close()
    return string.format('%s:%s', 'LTC', result)
end



widget = {
    plugin = 'timer',
    opts = {period = 60}, -- всё равно раз в день обновляется же
    cb = function(t)
        return {full_text=string.format('%s  %s  %s  %s', getBtc(), getLtc(), getDash(), getEth()), color='#BFB630'}
    end,
}

