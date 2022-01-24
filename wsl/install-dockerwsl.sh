#!/bin/bash
# Script that will install docker in an Ubuntu WSL instance
# Based  on https://dev.to/bowmanjd/install-docker-on-windows-wsl-without-docker-desktop-34m9


# Install docker 
sudo apt -y update
sudo apt -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
sudo apt remove docker docker-engine docker.io containerd runc


curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# Add the docker repos 
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Install docker-ce 
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io

newgrp docker
sudo usermod -aG docker $USER

sudo service docker start 

docker version
echo "You will have to start dockerd each time you restart your wsl ubuntu distrib using "
echo "  sudo service docker status || sudo service docker start"
