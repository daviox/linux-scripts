#!/bin/env sh
## salsa - Session-aware launcher switch automation
if [ "$XDG_SESSION_TYPE" = "x11" ]; then
   rofi "$@"
elif [ "$XDG_SESSION_TYPE" = "wayland" ]; then
   # shellcheck disable=SC2145   # this is intended. Dirty quickfix for interoperability
   wofi -"$@"
fi
