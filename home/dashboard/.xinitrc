#! /usr/bin/env sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)
#

export PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl

# run openbox
openbox &

# remove chrome cache
# rm -Rf $HOME/.cache/google-chrome

# disable cursor
unclutter -idle 1 &

# set monitor to on
xset s off
xset -dpms
xset s noblank

# run chrome
exec chromium-browser --user-data-dir=/tmp/chromium-dashboard --kiosk --incognito --fullscreen --disable-application-cache --disk-cache-dir=/dev/null --js-flags="--expose-gc" "http://localhost"
