#!/usr/bin/env bash

# if statement checks to see if the appropriate nmap folder exists

if [ -d "$HOME/nmap" ]; then
    echo "Running nmap reconnaissance. Find the result of your scan in /home/user/nmap"
else
    echo "No nmap folder was found in your Home directory. Please ensure the folder is placed at /home/user/nmap"
    exit 1
fi

# time variable defines the date+time to be recorded in the file name, output variable specifies the location to create the text file

time=$(date +"%Y-%m-%d_%H-%M")
output="$HOME/nmap/nmap_${time}.txt"

# this nmap command will automatically run the --script=default option, as well as probing service/software version information along with any open ports
# the -oN switch is what actually saves the output to the file specified in the output variable and the "$@" allows you to specify the target IP

nmap -sC -sV -oN "$output" "$@"
