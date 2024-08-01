#!/usr/bin/env bash

FILE_PATH="/Users/bf/home/eth/vault/.obsidian/appearance.json"

CURRENT_THEME=$(jq -r '.theme' "$FILE_PATH")

if [ "$CURRENT_THEME" == "moonstone" ]; then
    open --background "obsidian://advanced-uri?vault=vault&commandid=theme%253Ause-dark"
elif [ "$CURRENT_THEME" == "obsidian" ]; then
    open --background "obsidian://advanced-uri?vault=vault&commandid=theme%253Ause-light"
fi

