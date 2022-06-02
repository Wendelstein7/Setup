#!/bin/bash

wget https://packages.microsoft.com/config/ubuntu/22.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

sudo apt update
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y dotnet-sdk-6.0

if ! grep -Fq "DOTNET_CLI_TELEMETRY_OPTOUT" ~/.bashrc; then
    echo -e '\n# Opts out of Microsoft dotnet SDK telemetry' >> ~/.bashrc
    echo 'export DOTNET_CLI_TELEMETRY_OPTOUT=true' >> ~/.bashrc

    echo "Added telemetry opt-out for dotnet sdk to ~/.bashrc"
else
    echo "Skipped telemetry opt-out for dotnet sdk to ~/.bashrc, value already present."
fi
