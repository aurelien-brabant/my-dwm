#! /bin/bash
#
# Script to set the rightmost informations of the dwm status bar using the
# xsetroot utility

function dispDate()
{
	printf " $(date +'%d/%m (%Hh%M)')"
}

function dispKernel()
{
	printf " $(uname -r)"
}

function dispMemUsage()
{
	MEM=$(free -m | grep -i "mem")
	TOTAL=$(printf "$MEM" | awk '{ print $2 }')
	USED=$(printf "$MEM" | awk '{ print $3 }')

	printf " $USED/$TOTAL MB"
}

clock=0

mem_usage="$(dispMemUsage)"
kernel="$(dispKernel)"
date="$(dispDate)"

while true; do
	if [ $((clock % 10)) -eq 0 ]; then
		mem_usage="$(dispMemUsage)"
	fi
	if [ $((clock % 60)) -eq 0 ]; then
		date="$(dispDate)"
	fi
	xsetroot -name "$mem_usage | $kernel | $date"
	clock=$((clock+1))
	sleep 1
done
