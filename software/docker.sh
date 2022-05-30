#!/bin/bash

# source: https://docs.docker.com/engine/install/ubuntu/

# Install required packages for key installation
sudo apt update
sudo apt install ca-certificates curl gnupg lsb-release

# Install docker repository key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update the apt package index
sudo apt update

echo "Finished installing the docker repository."