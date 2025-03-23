xc=`cat /etc/pacman.conf | grep -n "\[community\]" | tr -s ':' ' ' | awk '{print $1}'`
xw="#\[community\]"
sed $xc'c\'"$xw" /etc/pacman.conf >> /etc/pacman.conf.new
mv /etc/pacman.conf.new /etc/pacman.conf

pacman -Syy

pacman -Rc `pacman -Q | grep openjdk | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep qt6-tools | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep liblouis | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep serf | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep pcaudiolib | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep python-uvicorn | awk '{print $1}'` --noconfirm
pacman -Rc `pacman -Q | grep calamares | awk '{print $1}'` --noconfirm

pacman -S qt6-multimedia-ffmpeg archlinux-keyring blackarch-keyring --noconfirm
echo "F9A6E68A711354D84A9B91637533BAFE69A25079:4:" >> /usr/share/pacman/keyrings/blackarch-trusted
pacman-key --populate
yes | pacman -Syyu