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

numlockx &
#Load custom resources
xrdb ~/.Xresources
#Toggle keyboard with alt+shift
setxkbmap -option grp:alt_shift_toggle,grp_led:scroll us,ca

# exec gnome-session
# exec startkde
#exec startxfce4
#exec startlxde
#exec openbox-session
exec awesome
# ...or the Window Manager of your choice
