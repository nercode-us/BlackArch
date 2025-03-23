pacman -Syy
pacman -Rc jre-openjdk calamares python-uvicorn pcaudiolib qt6-tools liblouis serf --noconfirm
pacman -S qt6-multimedia-ffmpeg archlinux-keyring blackarch-keyring --noconfirm
echo "F9A6E68A711354D84A9B91637533BAFE69A25079:4:" >> /usr/share/pacman/keyrings/blackarch-trusted
pacman-key --populate
yes | pacman -Syyu