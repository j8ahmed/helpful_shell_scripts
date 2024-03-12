#!/usr/bin/bash

# Loop through all of the saved working directory logs
# constructed from 'dirs > wdirs/...' 
# parse each entry and push to current shell's dirs.
# Note: You must alias this to run it in the current shell
for d in $(cat "$HOME/.j8_scripts/wdirs/*" | uniq | sed "s/ /\\\s/") ; do 
    test=$(echo $d | sed "s/\\s/ /")
    # set -xv
    test=$(echo $test | sed "s:~:$HOME:")
    pushd "$test" > /dev/null
    # set +xv
done
