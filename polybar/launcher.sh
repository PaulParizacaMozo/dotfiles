#!/bin/bash

killall -q polybar

polybar example 2>&1 | tee -a /temp/polybar.log & disown

echo "Polybar launched..."
