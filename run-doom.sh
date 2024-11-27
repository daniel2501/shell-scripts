#!/usr/bin/env sh

# Fish shell needs -c instead of -s
eval "$(ssh-agent -s)"
# Assumes existence of github.pem
ssh-add ~/.ssh/github.pem
echo $SSH_AUTH_SOCK
SSH_AUTH_SOCK=$SSH_AUTH_SOCK $HOME/.config/emacs/bin/doom run
