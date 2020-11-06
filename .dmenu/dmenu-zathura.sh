#!/bin/bash

# The famous "get a menu of emojis to copy" script.

# Get user selection via dmenu from emoji file.
case $1 in
	refresh)
	find $HOME -iname '*.pdf' > ~/.local/share/pdfs
	exit 0
	;;
	*) 
	chosen=$(cat ~/.local/share/pdfs | dmenu -i -l 15)
	zathura $chosen
	exit 0
	;;
esac
