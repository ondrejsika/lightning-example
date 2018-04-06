alias generate='docker-compose exec bitcoind-regtest bitcoin-cli generate'
alias alice_bitcoincli='docker-compose exec bitcoind-regtest bitcoin-cli'
alias bob_bitcoincli='docker-compose exec bitcoind-regtest-2 bitcoin-cli'
alias alice_lncli='docker-compose exec lnd-regtest lncli --no-macaroons'
alias bob_lncli='docker-compose exec lnd-regtest-2 lncli --no-macaroons'

