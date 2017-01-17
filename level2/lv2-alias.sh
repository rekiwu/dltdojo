# Distributed Ledger Technology Dojo (DLTDOJO) 
# https://github.com/y12studio/dltdojo
# EthereumGo alias script, name:lv2, peers:6
# DATETIME:2017-01-17T03:44:25.312Z
DCNAME=lv2
alias dc='docker-compose -p $DCNAME -f $DCNAME-peers.yml'
alias dcup='dc stop ; dc rm -f; dc up -d'
alias dcend='dc stop ; dc rm -f'
alias dojoexec='docker exec -it ${DCNAME}_dltdojo_1'
alias ddj='dojoexec node index.js'
alias ethpexec='docker exec -it ${DCNAME}_ethp_1'
alias ethpkey='ethpexec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp='ddj eth ethp'
alias ethp1exec='docker exec -it ${DCNAME}_ethp1_1'
alias ethp1key='ethp1exec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp1='ddj eth ethp1'
alias ethp2exec='docker exec -it ${DCNAME}_ethp2_1'
alias ethp2key='ethp2exec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp2='ddj eth ethp2'
alias ethp3exec='docker exec -it ${DCNAME}_ethp3_1'
alias ethp3key='ethp3exec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp3='ddj eth ethp3'
alias ethp4exec='docker exec -it ${DCNAME}_ethp4_1'
alias ethp4key='ethp4exec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp4='ddj eth ethp4'
alias ethp5exec='docker exec -it ${DCNAME}_ethp5_1'
alias ethp5key='ethp5exec find /root/.ethereum/devchain/keystore -maxdepth 1 -name "UTC*" -exec cat {} \; | jq .'
alias ethp5='ddj eth ethp5'