sudo apt install firmware-linux tlp thermald network-manager-gnome xorg lightdm lightdm-gtk-greeter evince file-roller nautilus libreoffice libreoffice-gtk3 mpv vlc x264 x265 pulseaudio python3-pip gvfs gvfs-fuse lxappearance
sudo rm -rf /etc/i3/config && rm -rf .config/i3/config
mkdir .i3
cp dotfiles/config /home/crash/.i3
sudo cp dotfiles/i3status /etc



