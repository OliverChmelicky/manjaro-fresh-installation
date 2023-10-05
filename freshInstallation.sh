#!/bin/bash

echo "Updating system"
sudo pacman -Syy
echo "Installing base-devel package"
sudo pacman -S --needed base-devel

sudo pacman -S guake
sudo pacman -S zsh

echo "Installing jetbrains-toolbox"
yay -S jetbrains-toolbox
echo "Installing brave"
yay -S brave-browser
echo "Installing chromium"
yay -S chromium
echo "Installing terraform"
yay -S terraform
echo "Installing telegram-desktop"
yay -S telegram-desktop

echo "Installing poetry"
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python -
echo "Installing Signal desktop"
pamac install signal-desktop

#docker 
echo "Installing docker"
sudo pacman -S docker
echo "Starting docker"
sudo systemctl start docker.service
echo "Enabeling docker"
sudo systemctl enable docker.service
echo "Changing usermod for docker"
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

#docker-compose
echo "Installing docker-compose prerequisities"
sudo pacman -S libxcrypt-compat
echo "Installing docker-compose"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
echo "Changing permissions for docker-compose binnary"
sudo chmod +x /usr/local/bin/docker-compose
echo "Creating simplink for docker-compose"
sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose

#sudo pacman -Syu python-pip

#sudo pacman -S wine
#sudo pacman -S wine-mono

#k8s
sudo pacman -S kubectl
curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.20.0/kind-linux-amd64
chmod +x ./kind
sudo mv ./kind /usr/local/bin/kind
sudo pacman -S k9s



sudo pacman -S pdfarranger
sudo pacman -S libreoffice-still
