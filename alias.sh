# Distributed Ledger Technology Dojo (DLTDOJO)
# https://github.com/y12studio/dltdojo
DCNAME=ddj
alias ds='docker service'
alias bdc='docker-compose -p $DCNAME -f dockerfiles/dltdojo/btc.yml'
alias edc='docker-compose -p $DCNAME -f dockerfiles/dltdojo/eth.yml'
alias fdc='docker-compose -p $DCNAME -f dockerfiles/dltdojo/fab.yml'
alias bdcend='bdc stop ; bdc rm -f'
alias bdcup='bdcend ; docker build -t y12docker/dltdojo:dev . ; bdc up -d'
alias edcend='edc stop ; edc rm -f'
alias edcup='edcend ; docker build -t y12docker/dltdojo:dev . ; edc up -d'
alias fdcend='fdc stop ; fdc rm -f'
alias fdcup='fdcend ; docker build -t y12docker/dltdojo:dev . ; fdc up -d'
alias btcp1exec='docker exec -t ${DCNAME}_btcp1_1'
alias ethp1exec='docker exec -t ${DCNAME}_ethp1_1'
alias dojoexec='docker exec -t ${DCNAME}_dltdojo_1'
alias fabp1exec='docker exec -t ${DCNAME}_fabp1_1'
alias ddj='dojoexec node index.js'
alias btcp1='ddj btc btcp1'
alias ethp1='ddj eth ethp1'
alias fabp1peer='fabp1exec peer'
