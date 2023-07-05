#!/usr/bin/env sh

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/github.pem
echo $SSH_AUTH_SOCK | wl-copy
