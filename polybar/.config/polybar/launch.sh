#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch bars
#polybar top &
#polybar bottom &

if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload config &
  done
else
  polybar --reload config &
fi

echo "Bars launched..."
