# Distributed Ledger Technology Dojo (DLTDOJO) 
# https://github.com/y12studio/dltdojo
# BitcoinCore alias script, name:lv1, peers:6
# DATETIME:2017-01-15T09:40:36.209Z
DCNAME=lv1
alias dc='docker-compose -p $DCNAME -f $DCNAME-peers.yml'
alias dcup='dc stop && dc rm && dc up -d && dc scale bvp1=5'
VPID0=${DCNAME}_bvp0_1
alias vp0='docker exec -it $VPID0'
VPID1=${DCNAME}_bvp1_1
alias vp1='docker exec -it $VPID1'
VPID2=${DCNAME}_bvp1_2
alias vp2='docker exec -it $VPID2'
VPID3=${DCNAME}_bvp1_3
alias vp3='docker exec -it $VPID3'
VPID4=${DCNAME}_bvp1_4
alias vp4='docker exec -it $VPID4'
VPID5=${DCNAME}_bvp1_5
alias vp5='docker exec -it $VPID5'
alias vp0cli='vp0 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'
alias vp1cli='vp1 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'
alias vp2cli='vp2 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'
alias vp3cli='vp3 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'
alias vp4cli='vp4 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'
alias vp5cli='vp5 bitcoin-cli -conf=/opt/btc/bitcoin.conf -regtest -rpcport=18332'