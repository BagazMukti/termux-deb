#!/data/data/com.termux/files/usr/bin/bash
current=$(pwd)
echo "+++[ setupdeb.sh ]+++\n\n"
echo "checking architecture"
if [ "$(dpkg --print-architecture)" != "arm" ]; then
	echo "only support on 'arm' architecture"
	exit 1
fi
echo "checking 'debian.tar.gz' file"
if [ ! -f "debian.tar.gz" ]; then
	echo "'debian.tar.gz' not found"
	echo "please clone or download from 'https://github.com/BagazMukti/termux-deb'"
	exit 1
fi
echo "checking 'deb' folder"
if [ -d "deb" ]; then
	echo "directory 'deb' exists"
	echo "skiping decompress 'debian.tar.gz' file"
else
	echo "decompressing 'debian.tar.gz' file"
	mkdir deb
	tar -xzvf debian.tar.gz -C deb
fi
echo "installing 'screenfetch' and 'proot'"
apt install proot screenfetch
echo "setup ~/.bashrc file"
echo "screenfetch -A 'Debian' -p" > ~/.bashrc
echo "proot --link2symlink -0 -r $current/deb -b /system -b /dev/ -b /sys/ -b /proc/ -w /root /usr/bin/env -i HOME=/root PATH=/bin:/usr/bin:/sbin:/usr/sbin TERM=$TERM /bin/bash --login" >> ~/.bashrc
echo "restart termux to check"
