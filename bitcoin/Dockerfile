FROM debian:9
WORKDIR /build
RUN apt update && apt install -y wget tar
RUN wget https://bitcoincore.org/bin/bitcoin-core-0.16.0/bitcoin-0.16.0-x86_64-linux-gnu.tar.gz
RUN tar -xvzf bitcoin-0.16.0-x86_64-linux-gnu.tar.gz

FROM debian:9
VOLUME /root/.bitcoin
COPY entrypoint.sh /
COPY bitcoin-mainnet.conf /root/
COPY bitcoin-testnet.conf /root/
COPY bitcoin-regtest.conf /root/
COPY bitcoin-regtest-2.conf /root/

COPY --from=0 /build/bitcoin-0.16.0/bin/bitcoind /usr/bin/bitcoind
COPY --from=0 /build/bitcoin-0.16.0/bin/bitcoin-cli /usr/bin/bitcoin-cli
ENTRYPOINT ["/entrypoint.sh"]

