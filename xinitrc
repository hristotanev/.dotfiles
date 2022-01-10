pulseaudio -D &
feh --no-fehbg --bg-scale '/home/hristo/Wallpapers/mountain.jpeg' &
exec dwm

xrandr --output HDMI-A-0 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-A-1 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-A-0 --left-of HDMI-A-1
