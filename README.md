# termux-deb

Debian installer for termux
You can install debian on your termux.
The script will overwrite ~/.bashrc to run debian.

How to install:
```
$ cd ~
$ git clone https://github.com/BagazMukti/termux-deb.git
$ cd termux-deb
$ chmod +x setupdeb.sh
$ ./setupdeb.sh
```
And restart termux to check

How to uninstall:
```
root@localhost:~# exit
$ cd termux-deb
$ chmod +x uninstall.sh
$ ./uninstall.sh
```
And restart termux to check
