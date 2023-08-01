#!/usr/bin/env bash
killall keyd-application-mapper
rm $HOME/.config/keyd/app.lock

keyd-application-mapper -d
