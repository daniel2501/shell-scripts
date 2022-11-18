#!/bin/bash

# Chome OS Emacs 27 GUI installer
# Install Debian sid first
sudo apt install emacs-gtk
sudo apt-get install build-essential
sudo apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \
gettext libz-dev libssl-dev asciidoc xmlto docbook2x install-info libgnutsl28-dev pkg-config libncurses-dev libvterm-bin sqlite3 cmake libtool-bin
tar -zxf git-2.8.0.tar.gz
cd git-2.8.0
make configure
./configure --prefix=/usr
make all doc info
sudo make install install-doc install-html install-info
rm -rf ~/.emacs.d
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d
~/.emacs.d/bin/doom install


