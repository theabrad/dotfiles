#!/bin/sh

#Normal cursor
xsetroot -cursor_name left_ptr &

#fonts


# Set Wallpaper
hsetroot -fill ~/Wallpapers/acreed.jpg

#Hotkeys
sxhkd &

#Compositing
compton &

# Load resources.
xrdb -load ~/.Xresources

#Start wm in background
2bwm &

# Start terminal in foreground
exec urxvt
