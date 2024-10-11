#!/usr/bin/env bash

on_quit &> /Users/bf/home/eth/vault/.obsidian/logs/on-quit-log.txt

on_quit () {
  # log date and time
  echo $(date)
  
  # save workspace
  # CAUSES THE WINDOW TO REOPEN
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
}
