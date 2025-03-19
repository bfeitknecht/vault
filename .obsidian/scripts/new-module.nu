#!/usr/bin/env nu

export def main [
  --name: string,
  --sem: int 
  ] {
  
  mkdir $name && cd $module
  touch $"($name).md"
  mkdir -p "UE/e"
  mkdir -p "VRL/extra"
  $"
  ---
  sem: sem($sem)
  ---
  " | str trim | save $"VRL/($name)"

}

def content [name: string, index: int
  ] {
  let i = if ($index > 1) {$"-v-w($index - 1 | printf "%02d" $in)"}
  let j = if ($index < 14) {$"-v-w($index + 1 | printf "%02d" $in)"}

  $"
  ---
  name: \"[[($module)]]\"
  prev: \"[[($name)($i)]]\"
  next: \"[[($name)($j)]]\"
  ---
  
  
  # Info
  
  
  # Topics
  
  
  # Notes
  " | str trim
}
