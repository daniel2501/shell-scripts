#!/usr/bin/env sh

# Fish shell needs -c instead of -s
eval "$(ssh-agent -c)"
# Assumes existence of github.pem
ssh-add ~/.ssh/github.pem
echo $SSH_AUTH_SOCK | wl-copy
