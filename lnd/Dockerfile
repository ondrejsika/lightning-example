FROM debian:9
WORKDIR /build
RUN apt update && apt install -y wget tar
RUN wget https://github.com/lightningnetwork/lnd/releases/download/v0.5.2-beta/lnd-linux-amd64-v0.5.2-beta.tar.gz
RUN tar -xvzf lnd-linux-amd64-v0.5.2-beta.tar.gz

FROM debian:9
VOLUME /root/.lnd
COPY --from=0 /build/lnd-linux-amd64-v0.5.2-beta/lnd /usr/bin/lnd
COPY --from=0 /build/lnd-linux-amd64-v0.5.2-beta/lncli /usr/bin/lncli
ENTRYPOINT ["lnd", "--bitcoin.active", "--bitcoin.regtest", "--debuglevel=debug", "--bitcoin.node=bitcoind", "--bitcoind.rpcuser=btcrpc", "--bitcoind.rpcpass=btc", "--no-macaroons"]
CMD ["--bitcoind.rpchost=bitcoind-regtest:28332", "--bitcoind.zmqpath=tcp://bitcoind-regtest:28331", "--externalip=172.17.0.2"]

