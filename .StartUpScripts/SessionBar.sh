#!/bin/bash
# This Script will either launch Polybar or Waybar depending on what display session you are running

if [[ "$XDG_SESSION_TYPE" == "x11" ]]
then polybar
fi

if [[ "$XDG_SESSION_TYPE" == "wayland" ]]
then waybar
fi
