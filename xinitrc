pulseaudio --start --daemon &
feh --no-fehbg --bg-scale "/home/$USER/Wallpapers/mountain.jpeg" &
/home/$USER/WindowManagers/dwm-bar/dwm_bar.sh &
exec dwm

xrandr --output HDMI-A-0 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-A-1 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-A-0 --left-of HDMI-A-1
