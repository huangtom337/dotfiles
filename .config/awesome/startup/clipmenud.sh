#!/bin/bash

echo "Script started" >> /tmp/clipmenud.log

export CM_LAUNCHER="rofi -dmenu -i"

echo "CM_LAUNCHER set to: $CM_LAUNCHER" >> /tmp/clipmenud.log

if ! pgrep -f "/bin/clipmenud" > /dev/null; then
    echo "clipmenud not running, starting it..." >> /tmp/clipmenud.log
    clipmenud &
else
    echo "clipmenud already running." >> /tmp/clipmenud.log
fi


echo "PATH is: $PATH" >> /tmp/clipmenud.log
which rofi >> /tmp/clipmenud.log
