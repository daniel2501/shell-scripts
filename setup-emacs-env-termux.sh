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
# Manually install apk for termux-x11 from artifacts in latest build, e.g., https://github.com/termux/termux-x11/commit/6723791cc94b8a76b23e6f08731cc57700d7c37d/checks?check_suite_id=14485687668
pkg in -y termux-x11-nightly
export DISPLAY=:0
termux-x11 :0 &
pkg in -y libexpat
pkg in -y xfce
startxfce4
pkg in zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
pkg in ripgrep fd
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install
pkg in -y sqlite
# vterm stuff


pkg in -y xfce4-terminal
pkg in -y cmake
