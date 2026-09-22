#!/bin/bash

export SDKMAN_DIR="$HOME/.local/share/sdkman"

_binary_exists sdk || return
[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
