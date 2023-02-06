#!/usr/bin/env bash

source ~/.cache/wal/colors.sh

BLANK=$background
CLEAR=$color8
DEFAULT=$color1
TEXT=$foreground
VERIFYING=$color2
WRONG=$color3

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--clock                      \
--time-color=$TEXT           \
--time-font="MesloLGS NF"    \
--time-str="%H:%M:%S"        \
\
--verif-color=$TEXT          \
--verif-font="MesloLGS NF"   \
--verif-text=""             \
\
--wrong-color=$TEXT          \
--wrong-font="MesloLGS NF"   \
\
--date-color=$TEXT           \
--date-font="MesloLGS NF"    \
--date-str="%A, %m %Y"       \
\
--keyhl-color=$WRONG         \
--bshl-color=$WRONG          \
\
--lock-text=""              \
--wrong-text=""             \
--noinput-text=""           \
\
--screen 1                   \
--blur 8                     \
--radius 200                 \
