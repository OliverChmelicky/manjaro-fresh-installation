#!/bin/bash

echo "Updating system"
sudo pacman -Syy
echo "Installing base-devel package"
sudo pacman -S --needed base-devel

# installing yay package manager for AUR packages
echo "Clonning yay"
git clone https://aur.archlinux.org/yay.git
cd yay
echo "Makepkg installation for yay"
makepkg -si #ERROR: You do not have write permission for the directory $BUILDDIR (/home/olo/yay).
cd ~
echo "Removing yay"
sudo rm -r yay

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

sudo pacman -Syu python-pip

#guake
sudo pacman -S guake # and set it up for shortcut
sudo pacman -S wine
sudo pacman -S wine-mono
