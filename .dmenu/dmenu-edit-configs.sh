#!/bin/bash
#  ____ _____
# |  _ \_   _|  Derek Taylor (DistroTube)
# | | | || |    http://www.youtube.com/c/DistroTube
# | |_| || |    http://www.gitlab.com/dwt1/
# |____/ |_|
#
# Dmenu script for editing some of my more frequently edited config files.


declare options=("alacritty
awesome
bash
bspwm
compton
dwm
herbstluftwm
polybar
qtile
spectrwm
st
sxhkd
termite
vim
xresources
zsh
quit")

choice=$(echo -e "${options[@]}" | dmenu -i -p 'Edit config file: ')

case "$choice" in
	quit)
		echo "Program terminated." && exit 1
	;;
	alacritty)
		choice="$HOME/.config/alacritty/alacritty.yml"
	;;
	awesome)
		choice="$HOME/.config/awesome/rc.lua"
	;;
	bash)
		choice="$HOME/.bashrc"
	;;
	bspwm)
		choice="$HOME/.config/bspwm/bspwmrc"
	;;
	compton)
		choice="$HOME/.config/compton.conf"
	;;
	dwm)
		choice="$HOME/dwm-kelly/config.h"
	;;
	herbstluftwm)
		choice="$HOME/.config/herbstluftwm/autostart"
	;;
	polybar)
		choice="$HOME/.config/polybar/config"
	;;
	qtile)
		choice="$HOME/.config/qtile/config.py"
	;;
	spectrwm)
		choice="$HOME/.spectrwm.conf"
	;;
	st)
		choice="$HOME/st-distrotube/config.h"
	;;
	sxhkd)
		choice="$HOME/.config/sxhkd/sxhkdrc"
	;;
	termite)
		choice="$HOME/.config/termite/config"
	;;
	vim)
		choice="$HOME/.vimrc"
	;;
	xresources)
		choice="$HOME/.Xresources"
	;;
	zsh)
		choice="$HOME/.zshrc"
	;;
	*)
		exit 1
	;;
esac
emacs "$choice"
