#!/usr/bin/env bash

APPNAME="$1"

if [ "$APPNAME" == "Spotify" ]; then
    exit 0
else
    paplay ~/.config/dunst/sounds/notification.wav
fi
