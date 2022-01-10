#!/bin/bash

xrandr --output HDMI-A-0 --mode 3840x2160 --rate 60
xrandr --output HDMI-A-1 --mode 1920x1080 --rate 60
xrandr --output HDMI-A-0 --left-of HDMI-A-1
