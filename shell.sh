#!/bin/sh

adb kill-server

while ! adb connect $1 ; do
  sleep 1
  echo waiting for device...
done

sleep 1
adb root

while ! adb connect $1 ; do
  sleep 1
  echo connecting to device...
done

