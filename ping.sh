#!/bin/bash
printf "%s" "Ping network."
while ! timeout 0.2 ping -c 1 -n google.com &> /dev/null
do
    printf "%c" "."
done
printf "\n%s\n"  "Network online!"
