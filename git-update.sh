#!/bin/bash

# get and store the current dir
CUR_DIR=$(pwd)

# log whats happening
echo "git: updating repositories"

# Find all git repositories and update the current branch to latest revision
for i in $(find . -name ".git" | cut -c 3-); do
    echo ">>> start updating repo: " $i;

    # go to the .git parent directory to call the pull command
    cd "$i";
    cd ..;

    # git pull
    git pull;

    # get back to the CUR_DIR
    cd $CUR_DIR
    echo "<<< end ";
done

echo "git update complete"