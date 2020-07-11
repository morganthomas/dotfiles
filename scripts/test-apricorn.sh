#!/bin/sh
set +e
while :
do
  if [ -e "/dev/disk/by-uuid/C470-4BC9" ] || [ -e "/dev/disk/by-label/kassir" ]
  then
    echo "Apricorn found"
  else
    echo "No Apricorn"
  fi
  sleep 1
done
