#!/bin/bash

# install script for my special configs

links=$(grep '|' README.md|tail +3|awk -F '|' -v h="$HOME" '{sub("~",h,$3);print $3}')

for n in $links; do
    if [[ -L $n || -d $n ]]; then
        printf "\033[1;31mExist: $n\033[0m\n"
        pass=""
        read -p 'replace [true/false]: ' pass
        if [ "$pass" == "true" ];then
            rm $n
            ln -s $(echo $PWD$(echo $n|awk -F '/' '{sub(/^\./,"",$NF);print "/"$NF}')) $n
	    printf "  \033[1;32mRecreate: \033[0m"$(echo $PWD$(echo $n|awk -F '/' '{sub(/^\./,"",$NF);print "/"$NF}'))"\n"
        else
        	echo "skipped"
        fi
    else
        if [[ "$n" != "desktop" && "$n" != "widget" && "$n" != *"firefox"* ]]; then
            ln -s $(echo $PWD$(echo $n|awk -F '/' '{sub(/^\./,"",$NF);print "/"$NF}')) $n
	    printf "  \033[1;32mCreate: \033[0m"$(echo $PWD$(echo $n|awk -F '/' '{sub(/^\./,"",$NF);print "/"$NF}'))"\n"
        fi
    fi
done
