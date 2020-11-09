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

# Herbstluftwm keybinds

| Keybind | What it does |
|---|---|
| Super + Enter | Opens terminal |
|---|---|
| Super + q | Close program |
|---|---|
| Super + Shift + x | Exit window manager |
|---|---|
| Super + Shift + r | Reload configuration |
|---|---|
| Super + Shift + Enter | Dmenu |
|---|---|
| Super + Shift + d | Opens Rofi |
|---|---|
| Super + Alt + Enter | Herbstluftwm Custom Layouts Menu |
|---|---|
| Control + Alt + t | System Actions menu |
|---|---|
| Super + *number* | Switch to workspace *number* |
|---|---|
| Super + Shift + *number* | Move window to workspace *number* |
|---|---|
| Super + Left,Right,Up,Down | Focus window Left, Right, Up, or Down |
|---|---|
| Super + Shift + Left,Right,Up,Down | Move window Left, Right, Up, or Down |
|---|---|
| Super + s | Toggle floating windows |
|---|---|
| Super + f | Toggle fullscreen windows |
|---|---|
| Super + Space | Cycle though layouts |
|---|---|
| Super + , | Move to workspace on the left |
|---|---|
| Super + . | Move to workspace on the right |
|---|---|
| Super + Shift , | Move window to left workspace |
|---|---|
| Super + Tab | Cycle though windows |
|---|---|
