#!/bin/sh

echo $1 | pbcopy

[ "$#" -lt 1 ] && echo "Usage: String you want to be cut." && exit 0

osascript -e 'delay 0.5' -e 'tell application "Keyboard Maestro Engine"' -e 'do script "B40672AB-7AF3-4D4F-AD17-8F54A6087FB2"' -e 'end tell' &
