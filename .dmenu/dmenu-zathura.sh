#!/bin/bash

# Gets all pdfs in $HOME, drops them into a file, then drops them into dmenu, then in zathura
case $1 in
	refresh)
	find $HOME -iname '*.pdf' -o -iname "*.doc*" > ~/.local/share/docs
	exit 0
	;;
	*) 
	chosen=$(cat ~/.local/share/pdfs | dmenu -i -l 15)
	case $chosen in
		*.pdf)
			zathura $chosen
			;;
		*.doc*)
			soffice $chosen
			;;
		esac
	exit 0
	;;
esac
