#!/bin/bash

set -o errexit

time_interval=$1
directory=$2

if [ -z "$time_interval" -o -z "$directory" ]; then
  echo "Usage:"
  echo "spy time_interval directory"
  printf '%s\n' "$@"

  echo "---------------------------------------"
  echo "Available options:"
  printf '%s\n' "$@"
  echo "time_interval - Time Interval to take the screenshot"
  echo "directory - Where to save the screenshot"
  exit 1
fi

while :
do
    screencapture -x "$directory"/"spy-""$(date +%y%m%d%H%M%S).png"
    sleep "$time_interval"
done
