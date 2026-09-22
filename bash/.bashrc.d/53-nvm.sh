#!/bin/bash

export NVM_DIR="$HOME/.local/share/nvm"

_binary_exists nvm || return

[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
