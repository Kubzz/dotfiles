#!/bin/bash

_binary_exists zoxide || return

eval "$(zoxide init bash)"
