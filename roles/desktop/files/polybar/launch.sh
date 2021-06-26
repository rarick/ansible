#!/usr/bin/env bash

# Parameters
BACKGROUND_PATH="$HOME/.config/feh/background.jpg"
STYLE="cuts"

dir="$HOME/.config/polybar"

launch_bar() {
	# Terminate already running bar instances
	killall -q polybar

	# Wait until the processes have been shut down
	while pgrep -u $UID -x polybar >/dev/null; do sleep 0.1; done

	# Launch the bar
	if [[ "$STYLE" == "cuts" ]]; then
		polybar -q top -c "$dir/$STYLE/config.ini" &
		polybar -q bottom -c "$dir/$STYLE/config.ini" &
	else
		polybar -q main -c "$dir/$STYLE/config.ini" &	
	fi
}

if [[ "$STYLE" == "cuts" ]]; then
  $dir/cuts/scripts/pwywal.sh "$BACKGROUND_PATH"
	launch_bar

elif [[ "$STYLE" == "shapes" ]]; then
	launch_bar

else
  >&2 echo "Need to set STYLE with desired style"
  exit 1
fi
