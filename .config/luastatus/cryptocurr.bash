#! /bin/bash
dash=$(curl -s https://coinmarketcap.com/currencies/dash/|sed -n '/data-currency-value/p'|sed -n '/class=/p')
btc=$(curl -s https://coinmarketcap.com/currencies/bitcoin/|sed -n '/data-currency-value/p'|sed -n '/class=/p')
eth=$(curl -s https://coinmarketcap.com/currencies/ethereum/|sed -n '/data-currency-value/p'|sed -n '/class=/p')
ltc=$(curl -s https://coinmarketcap.com/currencies/litecoin/|sed -n '/data-currency-value/p'|sed -n '/class=/p')


dash=${dash#*>}
btc=${btc#*>}
eth=${eth#*>}
ltc=${ltc#*>}

dash=${dash%%<*}
btc=${btc%%<*}
eth=${eth%%<*}
ltc=${ltc%%<*}


echo "BTC:\$$btc LTC:\$$ltc DASH:\$$dash ETH:\$$eth"
unset dash btc eth ltc
