#!/usr/bin/env sh

pgrep -f add-commit-push.sh && exit
find $HOME/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
