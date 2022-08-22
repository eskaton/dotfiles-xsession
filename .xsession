xrdb -merge ~/.Xresources

if [[ -f ~/.xbackground.jpeg ]]; then
   qiv -x ~/.xbackground.jpeg
fi

if [[ -x ~/.xlock.d/xlock.sh ]]; then
   daemon xautolock -time 15 -locker ~/.xlock.d/xlock.sh
fi

exec ssh-agent /usr/local/bin/xmonad
