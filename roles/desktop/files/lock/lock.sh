#!/usr/bin/env bash

BLANK=282a36
CLEAR=50fa7b
DEFAULT=6272a4
TEXT=f8f8f2
VERIFYING=bd93f9
WRONG=ff5555

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
--screen 2                   \
--blur 8                     \
--radius 200                 \
