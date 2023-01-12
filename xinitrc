nvidia-settings --assign CurrentMetaMode="nvidia-auto-select +0+0 { ForceFullCompositionPipeline = On }" &
start-pulseaudio-x11 &
$HOME/.config/dwm-bar/dwm_bar.sh &
exec dwm

xrandr --output HDMI-0 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-1 --mode 3840x2160 --rate 60.00
xrandr --output HDMI-0 --left-of HDMI-1
