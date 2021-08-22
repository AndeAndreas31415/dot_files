#!/bin/bash

# original from this site
# https://unix.stackexchange.com/questions/387010/bash-calculate-the-time-elapsed-between-two-timestamps

calcTimeDiff(){
	now=$(date +%s)
	time=$(date --date "$1" +%s)
#	echo $time "-" $now "\n"
	diff=$((time - now))
	if [[ $diff == "-"* ]]; then
		./start_cown.sh minus
	fi
#	echo $diff
	countdown $diff
}

# original from this site
# https://superuser.com/questions/611538/is-there-a-way-to-display-a-countdown-or-stopwatch-timer-in-a-terminal

countdown(){
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do
	echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)" > time.txt 
	sleep 0.5
    done
}

if [[ $1 == "+"* ]]; then
	countdown $1
fi

calcTimeDiff $1

