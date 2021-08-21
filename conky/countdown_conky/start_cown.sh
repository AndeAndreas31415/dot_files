#!/bin/bash

# go in this Directory where it is
readonly DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# the first argument must not be empty
if [ $# -eq 0 ]; then
    echo "You must give the Script a date or a time with sec."
    echo "example: \"16:15:00\""
    exit 0
fi

exec $DIR/countdown.sh $1 &

exec conky -c $DIR/Countdown
