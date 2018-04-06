#!/bin/sh

if [ -z $CHAIN ]; then
    echo "Variable CHAIN is not set"
    exit 1
fi

echo Configured for "$CHAIN"
# create default configuration based on selected network (chain)
cp /root/bitcoin-"$CHAIN".conf /root/.bitcoin/bitcoin.conf

# workarround for regtest case
if [ $CHAIN = "regtest" ]; then
    echo "workarround for regtest"
    (sleep 10; bitcoin-cli generate ${GENERATEBLOCKS:-1}) &
fi

echo "Parameters for bitcoind command are (if any):" $@
bitcoind $@

