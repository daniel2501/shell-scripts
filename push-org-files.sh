#!/usr/bin/env sh

find $HOME/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
