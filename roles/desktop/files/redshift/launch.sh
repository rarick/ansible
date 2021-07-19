#!/usr/bin/env bash

# Parameters
CONFIG="$HOME/.config/redshift/redshift.conf"

launch_redshift() {
	# Terminate already running redshift instances
	killall -q redshift-gtk

	# Wait until the processes have been shut down
	while pgrep -u $UID -x redshift-gtk >/dev/null; do sleep 0.5; done

	# Launch redshift
	redshift-gtk -c "$CONFIG"
}

launch_redshift
