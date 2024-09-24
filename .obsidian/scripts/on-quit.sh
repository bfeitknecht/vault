#!/usr/bin/env bash

# save workspace
open --background "obsidian://advanced-uri?vault=vault&commandid=workspaces%253Asave"

# change to vault root
cd "$1" &> /dev/null

# for log purposes (we don't do this)
# echo $(pwd)

# stage all changes
git add .

# commit with on quit message
t=$(date -Iseconds)
git commit -m "backup: $t on quit from MacBook Pro (echo)"

# try to push new local commits
git push
