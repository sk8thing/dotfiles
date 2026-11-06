#!/usr/bin/env bash

open_pavucontrol() {
  if pgrep -x "pavucontrol" > /dev/null; then
    pkill -x "pavucontrol"
  else
    pavucontrol -t 3 &
  fi
}

increment_volume() {
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
}

decrement_volume() {
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
}

toggle_mute() {
  wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
}


if [[ "$1" == "-i" ]]; then
  increment_volume
elif [[ "$1" == "-d" ]]; then
  decrement_volume
elif [[ "$1" == "-g" ]]; then
  open_pavucontrol
elif [[ "$1" == "-m" ]]; then
  toggle_mute
fi
