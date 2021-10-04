#!/usr/bin/sh
sudo pacman -S --noconfirm git
cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
cd yay-git
sudo chown -R tomg:tomg .
makepkg -si
