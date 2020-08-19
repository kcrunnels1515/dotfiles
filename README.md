## Dependencies
### Any window manager:
* dmenu
* nitrogen
* picom
* alacritty
* rofi

### Herbstluftwm (my star WM)
* termite
* neovim
* ranger
* calc (terminal calculator)
* networkmanager_dmenu
* ytop
* pianobar (Pandora client)
* polybar

### Bspwm
* sxhkd
* polybar
* termite (I've got some scratchpads, and I like using termite for them.)

### DWM
* FontAwesome
* JoyPixels
* libxft (should be installed by default)

### Xmonad
There shouldn't be any, other than the universal deps.

### Ranger
* ueberzug
* zathura
* zathura-pdf-mupdf
* sxiv

## Install
Add an alias in your shell rc that corresponds to the following:
`/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME`
Then, in a restarted shell, run
`config config --local status.showUntrackedFiles no`
Finally, run
`config checkout`

Congrats! The dotfiles are installed!
