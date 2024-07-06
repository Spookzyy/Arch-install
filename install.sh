#!/bin/bash

sudo pacman -S --needed base-devel git 

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

sudo pacman -S --needed lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader

yay -S dxvk-bin heroic-games-launcher vpn-unlimited-bin lutris steam waybar goverlay visual-studio-bin

