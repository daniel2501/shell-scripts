#!/usr/bin/env sh

while sleep 1; do find ~/org | entr -s 'bash ~/shell-scripts/add-commit-push.sh'; done
