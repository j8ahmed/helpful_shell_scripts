#!/usr/bin/bash

# Loop through all of the saved working directory logs
# constructed from 'dirs > wdirs/...' 
# parse each entry and push to current shell's dirs.
# Note: You must alias this to run it in the current shell
test=$(eval echo $HOME/.j8_scripts/wdirs/)
echo $test
# dirs=$(for file in $(ls "$wd") ; do cat "$wd/$file" ; done | sort | uniq | sed "s/ /\\\s/")
# 
# for d in $dirs ; do
#     test=$(echo $d | sed "s/\\s/ /")
#     # set -xv
#     test=$(echo $test | sed "s:~:$HOME:")
#     # echo $test
#     pushd "$test" > /dev/null
#     # set +xv
# done

# Current version in bashrc aliases
# load working directories from current shell
alias loaddirs='
    for d in $(for file in $(ls "$(eval echo $HOME/.j8_scripts/wdirs/)" ) ; do cat $file ; done | sort | uniq | sed "s/ /\\\s/") ; do 
        test=$(echo $d | sed "s/\\s/ /")
        # set -xv
        test=$(echo $test | sed "s:~:$HOME:")
        pushd "$test" > /dev/null
        # set +xv
    done
'

