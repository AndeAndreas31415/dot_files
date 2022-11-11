#!/bin/bash

# go in this Directory where it is
readonly DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# the first argument must not be empty
if [ $# -eq 0 ]; then
    echo -e "You must give the Script a date.\n"
    echo -e "  examples : \"16:15:00\""
    echo -e "           : \"2022-05-24 15:00:00\""
    echo -e "\nOr you have the countdown time calculated.\n"
    echo -e "  examples : \"+500\""
    echo -e "             \"+2m\""
    echo -e "             \"+2h\""
    echo -e "\nAnd you can add some Text.\n"
    echo -e "  examples : \"+500 Text\""
    exit 0
fi

if [[ $1 == "-h" ]] | [[ $1 == "--help" ]]; then
	./start_cown.sh
	exit 0
fi

if [[ $1 == "minus" ]]; then
	echo -e "\033[1;31mYou must kill this script with \"ctrl+c.\""
	echo -e "Than you must give the script a future date or a future time.\033[0m"
	exit 0
fi

cd $DIR

exec $DIR/countdown.sh $@ &

exec conky -c $DIR/Countdown
