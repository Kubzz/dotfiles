#!/bin/bash

export GOENV_ROOT="$HOME/.local/share/goenv"
export PATH="$GOENV_ROOT/bin:$PATH"

_binary_exists goenv || return

eval "$(goenv init -)"
