#!/bin/bash

publicInstances=( "45.33.120.74" "176.58.102.50" )

for publicInstance in "${publicInstances[@]}"
do
    # of course could parameterize any of this:
    scp -P 1978 -r . bandersen@$publicInstance:/home/bandersen/argos/light-modules
done
# make sure you have keys on these machines for passwordless ssh
# could make this a script on fs instead of pasting here
