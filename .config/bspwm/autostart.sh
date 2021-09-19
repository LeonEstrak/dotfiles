#!/bin/bash

function run {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

#Find out your monitor name with xrandr or arandr (save and you get this line)
#xrandr --output VGA-1 --primary --mode 1360x768 --pos 0x0 --rotate normal
#xrandr --output DP2 --primary --mode 1920x1080 --rate 60.00 --output LVDS1 --off &
#xrandr --output LVDS1 --mode 1366x768 --output DP3 --mode 1920x1080 --right-of LVDS1
#xrandr --output HDMI2 --mode 1920x1080 --pos 1920x0 --rotate normal --output HDMI1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output VIRTUAL1 --off
#autorandr horizontal

bash ~/.config/polybar/material/scripts/pywal.sh ~/Pictures/wallpapers
bash $HOME/.config/polybar/launch.sh --material

#change your keyboard if you need it
#setxkbmap -layout be

#Bind Super key to open rofi
#xcape -e 'Control_R=Alt_L|space'

#Bind Single Press Left Control to Escape for VIM
xcape -e 'Control_L=Escape'

dex $HOME/.config/autostart/arcolinux-welcome-app.desktop
xsetroot -cursor_name left_ptr &
run sxhkd &

#starting utility applications at boot time
#nitrogen --set-zoom-fill --random ~/Pictures/wallpapers &
#variety &
libinput-gestures-setup start &
run nm-applet &
run pamac-tray &
run xfce4-power-manager &
numlockx on &
blueberry-tray &
picom -b --experimental-backends --config ~/.config/qtile/scripts/picom.conf &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
/usr/lib/xfce4/notifyd/xfce4-notifyd &

#starting user applications at boot time
run volumeicon &
#run discord &
caffeine &
run optimus-manager-qt &
cbatticon -l 30 -r 20 -c "light -s sysfs/backlight/intel_backlight -S 1" &
#gromit-mpx &
