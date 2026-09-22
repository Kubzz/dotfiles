#!/bin/bash

export PYENV_ROOT="$HOME/.local/share/pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

_binary_exists pyenv || return

eval "$(pyenv init --path)"
