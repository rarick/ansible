#!/usr/bin/env bash

# Parameters
BACKGROUND_PATH="$HOME/.config/feh/background.jpg"
STYLE="cuts"

DIR="$HOME/.config/polybar"

launch_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

	# Launch the bar
	polybar -q top -c "$DIR/$STYLE/config.ini" &
}

$DIR/cuts/scripts/pywal.sh "$BACKGROUND_PATH"
echo $DIR/cuts/scripts/pywal.sh > test.txt
launch_bar
