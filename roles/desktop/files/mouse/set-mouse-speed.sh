#!/usr/bin/env bash
device="pointer:Logitech G305"

# Disable mouse acceleration
# https://wiki.archlinux.org/title/Mouse_acceleration
xinput set-prop "$device" "libinput Accel Profile Enabled" 0 1
