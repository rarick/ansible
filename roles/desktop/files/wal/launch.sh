#!/usr/bin/env bash
wal -i "$HOME/.config/feh/background.jpg" --backend colorthief -n

# Source the pywal color file
. "$HOME/.cache/wal/colors.sh"

BGC=`printf "%s\n" "$background"`
BG=${BGC:1}
FGC=`printf "%s\n" "$foreground"`
FG=${FGC:1}
AC=`printf "%s\n" "$color1"`
COLOR_ACTIVE=`printf "%s\n" "$color3"`
COLOR_PASSIVE=`printf "%s\n" "$color4"`
COLOR_URGENT=`printf "%s\n" "$color6"`

# rofi
RFILE="$HOME/.cache/wal/rofi-colors.rasi"
cat > $RFILE << EOF
/* colors */

* {
  al:   #00000000;
  bg:   #${BG}BF;
  bga:  #${BG}FF;
  fg:   #${FG}FF;
  ac:   ${AC}FF;
  se:   ${AC}1A;
}
