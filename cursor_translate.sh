#!/bin/bash

SELECTED_TEXT=$(xsel -o)

# translating and making special characters disappear (speficially bold) which dont render well in notify-send
TRANSLATION=$(trans "$SELECTED_TEXT" | sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[mGK]//g")

OUTPUT=$(echo "$TRANSLATION" | head -4 | tail -3)

notify-send "Translation" "$OUTPUT"