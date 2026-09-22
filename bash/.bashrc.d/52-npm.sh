#!/bin/bash

_binary_exists npm || return

alias npmg="npm i -g "
alias npmS="npm i -S "
alias npmD="npm i -D "
alias npmF='npm i -f'
alias npmE='PATH="$(npm bin)":"$PATH"'
alias npmO="npm outdated"
alias npmU="npm update"
alias npmV="npm -v"
alias npmL="npm list"
alias npmL0="npm ls --depth=0"
alias npmst="npm start"
alias npmt="npm test"
alias npmR="npm run"
alias npmP="npm publish"
alias npmI="npm init"
alias npmi="npm info"
alias npmSe="npm search"
alias npmrd="npm run dev"
alias npmrb="npm run build"
