#! /bin/bash
bitcoind -noconnect -daemon -server -rpcuser=safocl -rpcpassword=123456 -datadir=$HOME/.bit_fake
while ! bitcoin-cli -rpcuser=safocl -rpcpassword=123456 help >/dev/null
do
        sleep 5
done

export i=1
while true
do
        bitcoin-cli -rpcuser=safocl -rpcpassword=123456 -datadir=$HOME/.bit_fake getnewaddress ""
        echo $i
        (( i++ ))
done
