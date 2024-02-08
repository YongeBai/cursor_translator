#!/bin/bash

export PATH="$HOME/.cargo/bin:$PATH"


SELECTED_TEXT=$(xsel -o)
TRANSLATION=$(argos-translate --from zh --to en "$SELECTED_TEXT")
PINYIN=$(echo "$SELECTED_TEXT" | pinyin-tool)

env > ~/term_environment.txt

notify-send "Translation" "$TRANSLATION\n$PINYIN"