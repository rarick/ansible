#!/usr/bin/env bash

# Color files
PFILE="$HOME/.config/polybar/cuts/colors.ini"
RFILE="$HOME/.config/polybar/cuts/scripts/rofi/colors.rasi"

# Change colors
change_color() {
  # polybar
  sed -i -e "s/background = #.*/background = #${BG}/g" $PFILE
  sed -i -e "s/background-alt = #.*/background-alt = #8C${BG}/g" $PFILE
  sed -i -e "s/foreground = #.*/foreground = #${FG}/g" $PFILE
  sed -i -e "s/foreground-alt = #.*/foreground-alt = #33${FG}/g" $PFILE
  sed -i -e "s/primary = #.*/primary = $AC/g" $PFILE

  sed -i -e "s/active = #.*/active = $COLOR_ACTIVE/g" $PFILE
  sed -i -e "s/passive = #.*/passive = $COLOR_PASSIVE/g" $PFILE
  sed -i -e "s/urgent = #.*/urgent = $COLOR_URGENT/g" $PFILE

  # rofi
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
EOF

}

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

change_color
