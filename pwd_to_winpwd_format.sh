#!/usr/bin/bash

# Output the pwd (present workding directory) in windows filesytem path format
pwd | sed 's:/:\\:g' | sed 's/^\\c/C:/'

