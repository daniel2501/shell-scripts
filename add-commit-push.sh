#!/usr/bin/env sh

eval `ssh-agent`
ssh-add ~/.ssh/github.pem
cd ~/org
git checkout roam_v2
git pull
git add -A
git commit -m "$(date +%s-%N)"
git push
ssh-agent -k
exit
