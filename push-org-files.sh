#!/usr/bin/env sh

pgrep -f add-commit-push.sh && exit
find /home/daniel/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
