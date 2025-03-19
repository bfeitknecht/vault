#!/usr/bin/env nu

export def main [module?: string] {
  mut name = module
  if ($module | is-empty) {
    name = (input "Please enter the module name: ")
    if ($module | is-empty) { error make { msg: "Input cannot be empty" }
  }
  
  mkdir $module && cd $module
  touch $"($module).md"
  mkdir -p "UE/e"
  mkdir -p "VRL/extra"

  let content = $"
---
module: \"[[($module)]]\"
prev: \"[[($module)-v-w($i)]]\"
next: \"[[($module)-v-w($i)]]\"
---


# Info


# Topics


# Notes"
  | str trim

}

def content [module: string, index: int
  ] {
  let i = if ($index > 1) {$"-v-w($index - 1 | printf "%02d" $in)"}
  let j = if ($index < 14) {$"-v-w($index + 1 | printf "%02d" $in)"}

  $"
  ---
  module: \"[[($module)]]\"
  prev: \"[[($module)($i)]]\"
  next: \"[[($module)($j)]]\"
  ---
  
  
  # Info
  
  
  # Topics
  
  
  # Notes
  " | str trim
}
