#!/bin/bash

# original from this site
# https://unix.stackexchange.com/questions/387010/bash-calculate-the-time-elapsed-between-two-timestamps

calcTimeDiff(){
	now=$(date +%s)
	time=$(date --date "$1" +%s)
	diff=$((time - now))
	if [[ $diff == "-"* ]]; then
		./start_cown.sh minus
	fi
	countdown $diff $2
}

# original from this site
# https://superuser.com/questions/611538/is-there-a-way-to-display-a-countdown-or-stopwatch-timer-in-a-terminal

countdown(){
    date1=$((`date +%s` + $1));
    while [ "$date1" -ge `date +%s` ]; do
	echo -ne "$(date -u --date @$(($date1 - `date +%s`)) +%H:%M:%S)\n$2" > time.txt 
	sleep 0.5
    done
}
if [[ $1 == *"h" ]]; then
	time=$(echo $1|cut -c 2-|rev|cut -c 2-|rev)
	countdown +$(($time*3600)) $2	
elif [[ $1 == *"m" ]]; then
	time=$(echo $1|cut -c 2-|rev|cut -c 2-|rev)
	countdown +$(($time*60)) $2
elif [[ $1 == "+"* ]]; then
	countdown $1 $2
fi

calcTimeDiff $1 $2



