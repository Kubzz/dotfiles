#!/bin/bash

function _binary_exists {
    command -v "$1" >/dev/null 2>&1
}

function _binary_exists_or_skip {
    if ! _binary_exists "$1"; then
        return 1
    fi
}
