#!/bin/bash

# this utility runs simulations of scenarios in parallel and redirects all output to log files in respective output dirs
# use this handy function for viewing logs:
# view() { less ~/maxima/sol/$1/out/run.log; }

if [[ $# < 1 ]]
then
    echo "Usage:"
    echo "./run.sh scenario1 scenario2 ..."
    exit 1
fi

printf "\n\nRequired scenarios:\n"
for scenario in "$@"; do echo "    $scenario"; done
printf "\n\n"

cd lib

clean_and_run () {
    local scenario=$1
    echo "[$scenario] Starting scenario..."
    echo "[$scenario] Cleaning out dir..."
    rm `pwd`/../sol/$scenario/out/*
    echo "[$scenario] Launching Maxima..."
    maxima --batch-string="\
        sol_dir: \"$scenario\" $\
        root_dir: \"`pwd`/..\" $\
        sol_base_dir: concat(root_dir, \"/sol\") $\
        batchload(\"prod.mac\") $\
        quit() $\
    "\
    > `pwd`/../sol/$scenario/out/run.log 2>&1
    echo "[$scenario] Finished."
}

for scenario in "$@"
do
    clean_and_run "$scenario" &
done
wait

cd ..
printf "\n\nDone.\n\n"