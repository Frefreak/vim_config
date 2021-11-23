#!/bin/sh

systemctl --user import-environment DISPLAY XAUTHORITY

if command -v xset >/dev/null 2>&1; then
	(sleep 15s && xset r rate 250 30) &
fi
