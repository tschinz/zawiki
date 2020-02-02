#!/bin/bash
#================================================================================
# build-loop.bash - Build indefenitely the output at define intervalls
#
base_directory="$(dirname "$(readlink -f "$0")")"
pushd $base_directory

SEPARATOR='--------------------------------------------------------------------------------'
INDENT='  '

SLEEP=5 # seconds
OUTPUT=html

echo "$SEPARATOR"
echo "-- ${0##*/} Started!"
echo ""

#-------------------------------------------------------------------------------
# Loop Forever
#
while :
do
    echo "Build indefinitely [ hit CTRL+C to stop]"
    make $OUTPUT
    sleep $SLEEP
done

#-------------------------------------------------------------------------------
# Exit
#
echo ""
echo "-- ${0##*/} Finished!"
echo "$SEPARATOR"
popd