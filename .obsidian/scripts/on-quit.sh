#!/usr/bin/env bash

on_quit() {
  # log date and time
  msg="$(date)\n"
  echo -e $msg 

  # save workspace
  # CAUSES THE WINDOW TO REOPEN
  uri="obsidian://advanced-uri?vault=vault&commandid=workspaces%253Asave"
  #open --background $uri

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

# run on quit and redirect stdout and stderr to log file
on_quit &> /Users/bf/home/eth/vault/.obsidian/logs/on-quit-log.txt

