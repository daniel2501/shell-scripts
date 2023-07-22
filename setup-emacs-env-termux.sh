#!/bin/bash
pkg in root-repo x11-repo
pkg in git
mkdir ~/.ssh && cd git
pkg in openssl-tool
ssh-keygen -b 521 -t ecdsa -C "daniel2501@gmail.com" -N '' -f ~/.ssh/github.pem
cat github.pem.pub
echo Add this key to GitHub.
eval `ssh-agent`
ssh-add ~/.ssh/github.pem
git clone git@github.com:daniel2501/shell-scripts.git
pkg in vim -y
git clone git@github.com:daniel2501/org.git
pkg in -y emacs-x
pkg in -y termux-x11
export DISPLAY=:0
termux-x11 :0 &
pkg in -y libexpat
pkg in -y xfce
startxfce4


