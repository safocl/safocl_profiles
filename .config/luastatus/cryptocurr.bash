#! /bin/bash
dash=$(curl -s https://coinmarketcap.com/currencies/dash/|sed -n '/class="text-large2" data-currency-value/p')
btc=$(curl -s https://coinmarketcap.com/currencies/bitcoin/|sed -n '/class="text-large2" data-currency-value/p')
eth=$(curl -s https://coinmarketcap.com/currencies/ethereum/|sed -n '/class="text-large2" data-currency-value/p')
ltc=$(curl -s https://coinmarketcap.com/currencies/litecoin/|sed -n '/class="text-large2" data-currency-value/p')


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
