#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi
#exec pa-applet &
exec xscreensaver &
xcompmgr -c -f -r 28 D 10 &
sleep 1
xrdb merge ./.Xresources
# exec feh --bg-scale ~/Downloads/Pictures/Arch_Linux_Darkwave_by_BalanceST.jpg & 
# feh --bg-scale ~/Downloads/Pictures/minimalistic-linux-arch-linux-fresh-new-hd-wallpaper.jpg &
exec i3
# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
