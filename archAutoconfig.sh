#!/bin/bash
sudo localectl set-x11-keymap pl
sudo pacman -S --needed xf86-input-libinput
sudo tuch /etc/X11/xorg.conf.d/30-tuchpad.conf
#Paste conf to the file.

echo
'Section "InputClass"
    Identifier "touchpad"
    Driver "libinput"
    MatchIsTouchpad "on"
    Option "Tapping" "on"
    Option "TappingButtonMap" "lrm" # Opcjonalne: lewy, prawy, środkowy przycisk
EndSection' >> /etc/X11/xorg.conf.d/30-tuchpad.conf

sudo pacman -S feh
sudo pacman -S picom
#sudo rsync -avh --progress --delete /home/mic/ /mnt

sudo pacman -S git base-devel
cd /tmp
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
yay -S midori-git

yay -S canto
