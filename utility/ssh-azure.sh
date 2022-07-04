#!/bin/bash

if ! grep -Fq "Host ssh.dev.azure.com" ~/.ssh/config; then
    echo "Host ssh.dev.azure.com
    User git
    PubkeyAcceptedAlgorithms +ssh-rsa
    HostkeyAlgorithms +ssh-rsa" > ~/.ssh/config

    echo "Added ssh-rsa algorithm as accepted algorithm to ssh.dev.azure.com host in ~/.ssh/config"
else
    echo "Skipped adding ssh-rsa algorithm to ~/.ssh/config, value already present."
fi