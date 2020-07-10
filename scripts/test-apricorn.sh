#!/bin/sh
set +e
while :
do
  if [ -e "/dev/disk/by-uuid/5645-D0FE" ] || [ -e "/dev/disk/by-label/kassir" ]
  then
    echo "Apricorn mounted"
  else
    echo "No Apricorn"
  fi
  sleep 1
done
