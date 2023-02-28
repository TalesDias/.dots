#!/usr/bin/env bash

# Terminate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    POLYBAR_MONITOR=$m polybar --reload primary 2>&1 | tee -a /tmp/polybar1.log & disown
  done
else
  polybar primary 2>&1 | tee -a /tmp/polybar1.log & disown
fi
#polybar example 2>&1 | tee -a /tmp/polybar2.log & disown

echo "Bars launched..."
