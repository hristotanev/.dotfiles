start-pulseaudio-x11 &
exec /home/hristo/.local/bin/qtile start

xrandr --output HDMI-0 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-1 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-0 --left-of HDMI-1
