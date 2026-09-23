#!/bin/bash

export CARGO_HOME="$HOME/.local/share/cargo"

_binary_exists cargo || return

#. "$CARGO_HOME/env"
