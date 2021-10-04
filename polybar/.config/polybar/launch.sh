#!/bin/bash

# Terminate already running bar instances
killall -q polybar

# Launch bar
# polybar main &

# Launch bar on both monitors
if type "xrandr"; then
 for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
   MONITOR=$m polybar --reload main &
 done
else
 polybar --reload main &
fi

echo "Bar(s) launched..."
