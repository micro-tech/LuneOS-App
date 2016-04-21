#!/bin/bash
node enyo pack

adb push deploy/
adb shell luna-send -n 1 luna://com.palm.applicationManager/rescan {}
read -p "Paused  Press [Enter] key to restart and End..."