#!/usr/bin/env bash
picom --experimental-backends --backend glx --xrender-sync-fence 2>&1 | tee -a /tmp/picom.log
