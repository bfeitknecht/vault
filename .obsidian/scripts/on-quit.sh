#!/usr/bin/env bash

# save workspace
open --background "obsidian://advanced-uri?vault=vault&commandid=workspaces%253Asave"

# change to vault root
cd "$1"

echo $(pwd)

# stage all changes
git add .

# commit with on quit message
t=$(date -Iseconds)
git commit -m "backup(quit): $t on quit from MacBook Pro (echo)"

