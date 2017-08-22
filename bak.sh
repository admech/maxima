#!/bin/bash

# this utility saves plots, log and the big solution file to ~/storage

if [[ $# < 2 ]]
then
    echo "Usage:"
    echo "./bak.sh from to"
    exit 1
fi

from=~/maxima/sol/$1
to=~/storage/sol/$2

if [ ! -d "$from" ]; then
    echo "Solution does not exist"
    exit 1
fi

if [ -d "$to" ]; then
    echo "Target dir already exists!"
    exit 1
fi

sudo cp -r $from $to
