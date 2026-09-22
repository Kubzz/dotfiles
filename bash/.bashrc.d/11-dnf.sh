#!/bin/bash

if _binary_exists dnf5; then
    DNF="dnf5"
elif _binary_exists dnf; then
    DNF="dnf"
else
    return
fi

alias dnfl="${DNF} list"
alias dnfli="${DNF} list --installed"          # List installed packages
alias dnfmc="${DNF} makecache"                 # Generate metadata cache
alias dnfp="${DNF} info"                       # Show package information
alias dnfs="${DNF} search"                     # Search package

alias dnfu="sudo ${DNF} upgrade"               # Upgrade package
alias dnfur="sudo ${DNF} upgrade --refresh"    # Upgrade package and refresh repos
alias dnfi="sudo ${DNF} install"               # Install package
alias dnfr="sudo ${DNF} remove"                # Remove package
alias dnfc="sudo ${DNF} clean all"             # Clean cache

# Conditional aliases based on dnfprog value
if [[ "${DNF}" == "dnf5" ]]; then
    alias dnfgl="${DNF} group list"            # List package groups (dnf5)
    alias dnfgi="sudo ${DNF} group install"    # Install package group (dnf5)
    alias dnfgr="sudo ${DNF} group remove"     # Remove package group (dnf5)
else
    alias dnfgl="${DNF} grouplist"             # List package groups (dnf)
    alias dnfgi="sudo ${DNF} groupinstall"     # Install package group (dnf)
    alias dnfgr="sudo ${DNF} groupremove"      # Remove package group (dnf)
fi
