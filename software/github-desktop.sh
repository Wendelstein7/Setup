#!/bin/bash

# Source: https://github.com/shiftkey/desktop

# First install the GPG certificate:
wget -qO - https://mirror.mwt.me/ghd/gpgkey | sudo tee /etc/apt/trusted.gpg.d/shiftkey-desktop.asc > /dev/null

# Setup the US-mirror of the package repository
sudo sh -c 'echo "deb [arch=amd64] https://mirror.mwt.me/ghd/deb/ any main" > /etc/apt/sources.list.d/packagecloud-shiftkey-desktop.list'

# Update the apt package index
sudo apt update

# Install GitHub Desktop
sudo apt install github-desktop