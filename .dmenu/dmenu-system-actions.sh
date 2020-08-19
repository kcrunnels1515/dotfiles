#!/bin/bash
#  ____ _____
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/
# |____/ |_|
#
# Dmenu script for editing some of my more frequently edited config files.


declare options=("shutdown
hibernate
suspend
logout
restart
screenlock
quit")

choice=$(echo -e "${options[@]}" | dmenu -l 7 -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
  shutdown)
    systemctl poweroff
  ;;
  hibernate)
    systemctl hibernate
  ;;
  suspend)
    systemctl suspend
  ;;
  logout)
    herbstclient quit
  ;;
  restart)
    systemctl reboot
  ;;
  screenlock)
    xlock
  ;;
	*)
		exit 1
	;;
esac
