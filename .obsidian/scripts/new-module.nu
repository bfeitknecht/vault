#!/usr/bin/env nu

export def main [module?: string] {
  mut name = module
  if ($module | is-empty) {
    name = (input "Please enter the module name: ")
    if ($module | is-empty) { error make { msg: "Input cannot be empty" }
  }

  touch $"($module).md"
  # $module.md
  # UE/
  # VRL/
  #  ├── $module-v-w01.md
  #  ├── $module-v-w02.md
  #  ├── $module-v-w03.md
  #  ├── ...
  #  └── extra/
  #
  # seq 1 14 | each {|n| printf "%02d" $n }
  # $module-v-w($i)
  # ---
  # module: "[[$module]]"
  # prev: "[[$module-v-w($i-1)]]" # or a-w01
  # next: "[[$module-v-w($i+1)]]" # or x-w14
}
