#!/bin/sh

set background = #282A2E
set background-alt = #373B41
set foreground = #C5C8C6
set primary = #F0C674
set secondary = #8ABEB7
set alert = #A54242
set disabled = #707880

if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo "%{F#707880}"
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then 
    echo "%{F#F0C674}"
  fi
  echo "%{F#F0C674}··" # Using U+00B7 · (MIDDLE DOT)
fi
