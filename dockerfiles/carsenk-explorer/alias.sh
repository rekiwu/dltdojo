# Distributed Ledger Technology Dojo (DLTDOJO)
# https://github.com/y12studio/dltdojo
DCNAME=dccarexp
alias dc='docker-compose -p $DCNAME'
alias dcstop='dc stop && dc rm -f'
alias dcup='dcstop && dc up -d'
