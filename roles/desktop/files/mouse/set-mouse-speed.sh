#!/usr/bin/env bash
devices=(
  "pointer:Logitech G305"
  "pointer:Logitech USB Receiver Mouse"
)

# Disable mouse acceleration
# https://wiki.archlinux.org/title/Mouse_acceleration
for device in "${devices[@]}"; do
  xinput set-prop "$device" "libinput Accel Profile Enabled" 0 1
done
