#!/bin/sh

adb push $1 /cache/update.zip
adb push recovery_command /cache/recovery/command
adb reboot recovery

