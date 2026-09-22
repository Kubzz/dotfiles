#!/bin/bash

_binary_exists starship || return

eval -- "$(starship init bash)"
