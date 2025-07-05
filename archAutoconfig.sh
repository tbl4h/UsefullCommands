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
sudo pacman -S python python-pip
sudo pacman -S python-pynvim
sudo pacman -S fd
sudo pacman -S ripgrep
sudo pacman -S rust cargo rustfmt
cargo install selene
cargo install stylua

sudo pacman -S flatpak
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install flathub com.logseq.Logseq
sudo pacman -S cmake qemu gcc repo

sudo pacman -S lazygit
sudo pacman -S libsecret
