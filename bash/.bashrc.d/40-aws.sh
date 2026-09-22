#!/bin/bash

_binary_exists aws || return 

export AWS_HOME=~/.aws

function agp {
    printf $AWS_DEFAULT_PROFILE
}

function agr {
    printf $AWS_REGION
}

function asp {
    local profile="$1"
    local action="$2"

    if [[ -z "$profile" ]]; then
        printf "Usage: asp <profile> [login]" >&2
        return 1
    fi

    if ! aws configure list-profiles 2>/dev/null | grep -qx "$profile"; then
        printf "Unknown AWS profile: $profile" >&2
        return 1
    fi

    export AWS_PROFILE="$profile"
    export AWS_DEFAULT_PROFILE="$profile"
    printf "Switched to AWS profile: $AWS_PROFILE"

    if [[ "$action" == "login" ]]; then
        aws sso login --profile "$profile" || {
            printf "SSO login failed for $profile" >&2
            return 1
        }
    fi
}
