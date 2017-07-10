#!/data/data/com.termux/files/usr/bin/bash
echo "++[ uninstall.sh ]++"
echo "removing ~/.bashrc file"
rm ~/.bashrc
echo "removing ./deb file"
rm -rf ./deb
echo "complete uninstall debian"
echo "restart termux to check"
