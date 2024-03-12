#!/usr/bin/bash

for d in $(cat "$HOME/.j8_scripts/working_directories" | sed 's/ /\\\s/') ; do 
    test=$(echo $d | sed 's/\\s/ /')
    # set -xv
    test=$(echo $test | sed "s:~:$HOME:")
    pushd "$test"
    # set +xv
done
