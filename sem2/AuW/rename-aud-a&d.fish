function replace-name --description "Recursively replaces the first argument with the second in all files and directories."
  argparse \
    'f/find=' \
    'r/replace=' \
    -- $argv
  or set arg_err

  set -l help_msg "
  replace-name [OPTIONS] FIND REPLACE

  Recursively replaces the first argument, *find* (\$argv[1]) with the second, *replace* (\$argv[2]) in all files and directories.
  
  -f or --find
 

  -h or --help
  "


end

