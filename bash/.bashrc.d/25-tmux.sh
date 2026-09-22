#!/bin/bash

_binary_exists tmux || return

alias ta="tmux attach -t"
alias tad="tmux attach -d -t"
alias tkss="tmux kill-session -t"
alias tksv="tmux kill-server"
alias tk="tmux list-sessions"
alias to="tmux new-session -A -s"
alias ts="tmux new-session -s"
