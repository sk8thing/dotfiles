#!/usr/bin/env bash

APPNAME="$1"

if [ "$APPNAME" == "Spotify" ] || [ "$APPNAME" == "Discord" ]; then
    exit 0
else
    paplay --volume=32768 ~/.config/dunst/sounds/notification.wav
fi
