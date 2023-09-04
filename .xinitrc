#!/bin/sh

userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

macchanger -r enp3s0

xrandr --newmode "1280x800_60.00"   83.50  1280 1352 1480 1680  800 803 809 831 -hsync +vsync
xrandr --addmode DVI-0 "1280x800_60.00"
xrandr --output DVI-0 --mode 1280x800_60.00
xrandr --output DVI-0 --scale 1.2x1.2
feh --bg-fill --randomize ~/usr/wallpaper/*
exec dbus-run-session dk



