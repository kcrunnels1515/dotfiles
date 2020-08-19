#!/bin/bash
hc(){
  herbstclient load "$@"
}
declare options=("
quit
staggered
dwindle
center_two")
choice=$(echo -e "${options[@]}" | dmenu -l 4 -i -p 'Herbstluftwm Layout: ')

case "$choice" in
  quit)
    exit 1
  ;;
  staggered)
    hc "(split vertical:0.5:0 (split horizontal:0.75:0 (clients horizontal:0) (clients horizontal:0)) (split horizontal:0.15:1 (clients horizontal:0) (clients horizontal:0)))"
  ;;
  dwindle)
    hc "(split horizontal:0.5:1 (clients vertical:0) (split vertical:0.5:0 (clients vertical:0) (split horizontal:0.5:1 (clients vertical:0) (clients vertical:0))))"
  ;;
  center_two)
    hc "(split horizontal:0.75:0 (split horizontal:0.35:1 (clients vertical:0) (split vertical:0.5:0 (clients vertical:0) (clients vertical:0))) (clients vertical:0))"
  ;;
  *)
    exit 1
  ;;
esac
