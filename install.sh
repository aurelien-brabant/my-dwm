#! /bin/bash
# MUST BE RAN AS ROOT

 make clean install dwm

 cp ./dwm-setbar.sh /usr/local/bin/dwm-setbar
 cp ./dwm-start.sh /usr/local/bin/dwm-start
 cp ./dwm.desktop /usr/share/xsessions/dwm.desktop
