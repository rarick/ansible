#!/bin/bash

# Sets mouse speed because xinput was being stubborn
device="Logitech Gaming Mouse G402"
speed="0.3"

xinput set-prop "$device" "Coordinate Transformation Matrix" "$speed" 0 0 0 "$speed" 0 0 0 1


