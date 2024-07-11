#!/bin/bash
clear 

sudo pacman -S firefox 

sudo pacman -S waybar otf-font-awesome ttf-arimo-nerd noto-fonts

mkdir -p ~/.config/waybar

cp /etc/xdg/waybar/* ~/.config/waybar/

cp /home/jake/Arch-install/hyprland.dot/waybar ~/.config/waybar

sudo pacman -S --needed base-devel git 

git clone https://aur.archlinux.org/yay.git

cd yay

makepkg -si

yay -S --needed --noconfirm mesa lib32-mesa xf86-video-ati xf86-video-amdgpu libva-mesa-driver vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader vkd3d lib32-vkd3d vulkan-tools vulkan-mesa-layers lib32-vulkan-mesa-layers mesa-vdpau lib32-mesa-vdpau

yay -S --needed --noconfirm wine-staging giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal fontconfig lib32-fontconfig v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader

yay -S --needed --noconfirm dialog dosbox dxvk-bin hwloc m4 usbutils make zenity winetricks gst-editing-services

yay -S --needed --noconfirm schedtool minq-ananicy-git  thermald tuned
 
sudo systemctl enable ananicy
sudo systemctl start ananicy
sudo tuned-adm profile throughput-performance

sudo pacman -S --needed lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader

sudo pacman -R firefox

yay -S steam lact coolercontrol openrgb lutris heroic-games-launcher microsoft-edge-bin 

sudo pacman -Sy
