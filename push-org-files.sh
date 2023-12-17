#!/usr/bin/env sh

while sleep 1; do find /home/daniel/org | entr -s 'bash /home/daniel/shell-scripts/add-commit-push.sh'; done
