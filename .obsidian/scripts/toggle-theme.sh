#!/usr/bin/env bash

# dark: "theme": "obsidian",
# light: "theme": "moonstone",

FILE_PATH="/Users/bf/home/eth/vault/.obsidian/appearance.json"

sed -i '' -e '/"theme": "obsidian"/ s/"theme": "obsidian"/"theme": "moonstone"/' \
          -e '/"theme": "moonstone"/ s/"theme": "moonstone"/"theme": "obsidian"/' "$FILE_PATH"


