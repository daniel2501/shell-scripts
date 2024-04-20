#!/usr/bin/env sh

<<<<<<< HEAD
pgrep -f add-commit-push.sh && exit
find /home/daniel/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
=======
find $HOME/org | entr sh $HOME/shell-scripts/add-commit-push.sh &
>>>>>>> origin/trunk
