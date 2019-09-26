sudo apt update
sudo apt install firmware-linux tlp thermald gvfs-fuse -y
sudo apt -t buster-backports install tlp -y
sudo apt install git mpv vlc x264 x265 python3-pip -y && sudo apt remove youtube-dl -y && sudo apt autoremove -y && sudo apt install ffmpeg -y && sudo pip3 install youtube-dl
git clone https://github.com/aldorgan/dotfiles
