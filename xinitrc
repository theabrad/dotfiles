#!/bin/sh

#Normal cursor
xsetroot -cursor_name left_ptr &

#fonts
xset +fp /usr/share/fonts/local
xset fp rehash

# Set Wallpaper
hsetroot -fill ~/Wallpapers/iknewthisgod.jpg

#Hotkeys
#sxhkd &

#Compositing
compton &

# Load resources.
xrdb -load ~/.Xresources

#bar
statusbar | bar -p &

# Hotkey Daemon
#sxhkd &

#Start wm in background
2bwm &
#exec bspwm

# Start terminal in foreground
exec urxvt
