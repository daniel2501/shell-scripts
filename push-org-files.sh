#!/usr/bin/env sh

find /home/daniel/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
