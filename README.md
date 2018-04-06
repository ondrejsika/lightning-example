# Lightning Network Example

    Ondrej Sika <ondrej@ondrejsika.com>
    https://github.com/ondrejsika/lightning-example

Example of Lightning Network on Bitcoin regtest for my barcamp talk.

## Lightning TX Example

```
. aliases.sh

alice_lncli create
bob_lncli create
alice_lncli walletbalance
bob_lncli walletbalance
alice_lncli newaddress np2wkh
alice_bitcoincli sendtoaddress 2NFRp9QZnDvoXyd7mwPiGxXe1dYXVCUeEZy 1
generate 3
alice_lncli walletbalance
alice_lncli getinfo
bob_lncli getinfo
alice_lncli connect 028dc5fc30ab6fd4941d51181219af155f1072574185166ba4e5980ccce0ba82ef@lnd-regtest-2:9735
alice_lncli listpeers
bob_lncli listpeers
alice_lncli openchannel --node_key=028dc5fc30ab6fd4941d51181219af155f1072574185166ba4e5980ccce0ba82ef --local_amt=1000000
generate 3
alice_lncli listchannels
bob_lncli listchannels
bob_lncli addinvoice --amt=1000000
alice_lncli sendpayment --pay_req=lntb100u1pdv0m5app5nns0jurrupmt0vwcw07pn0nts93tgp6xw7mjfhssgrxgarqeuuksdqqcqzys8mmtusk5ljftmgm8gkr902htg3e6hkmh67f37qv59xhj8ugky783c7svcle2nswl5m0nkrwhh70rc3xj8vvtzndx394hwnnne5530cgpf9e8lq
alice_lncli listchannels
bob_lncli listchannels
alice_lncli walletbalance
bob_lncli walletbalance
alice_lncli closechannel --funding_txid=221b02b461e232036c8079ab11c023dafe819b8b09c2f6c5ebbd5ef269c9488e --output_index=0
generate 3
bob_lncli listchannels
bob_lncli walletbalance
bob_bitcoincli getnewaddress
bob_lncli sendcoins 2N8ipQ93fwC2Q6R2NBxET4VgFiQMurcEGu7 1000000
generate 3
bob_bitcoincli getbalance
```
