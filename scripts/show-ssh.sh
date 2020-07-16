#!/bin/sh
while :
do
  ssh-add -l | sed -e 's/256 .*/SSH key loaded/'
  sleep 1
done
