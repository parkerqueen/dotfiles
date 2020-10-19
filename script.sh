#!/bin/bash

# TODO: Check if run as root.
# TODO: Add a check that the username supplied exists.

# Checking if the username was supplied
if [[ -z "$1" ]]; then
    echo "No username was specified." 1>&2
    exit 1
fi

# Updating Apt Cache
apt update -y && apt upgrade -y

# ZSH Setup
apt install -y zsh
chsh -s $(which zsh)
chsh -s $(which zsh) $1