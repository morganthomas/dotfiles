#!/bin/sh
while :
do
  FOO=$(nmcli connection show --active | grep wifi | sed -e 's/ .*//g')
  [ $FOO ] && echo $FOO
  [ $FOO ] || echo "No Wifi"
  sleep 1
done
