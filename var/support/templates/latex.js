/*
{
  trigger: string | RegExp,
  replacement: string,
  options: string,
  priority?: number,
  description?: string,
  flags?: string,
}

trigger : The text that triggers this snippet.
Triggers can also be regular expressions. See here for more info.
replacement : The text to replace the trigger with.
Replacements can also be JavaScript functions. See here for more info.
options : See below.
priority (optional): This snippet's priority. Snippets with higher priority are run first. Can be negative. Defaults to 0.
description (optional): A description for this snippet.
flags (optional): Flags for regex snippets.

options:
t : Text mode. Only run this snippet outside math
m : Math mode. Only run this snippet inside math. Shorthand for both M and n
M : Block math mode. Only run this snippet inside a $$ ... $$ block
n : Inline math mode. Only run this snippet inside a $ ... $ block
A : Auto. Expand this snippet as soon as the trigger is typed. If omitted, the Tab key must be pressed to expand the snippet
r : Regex. The trigger will be treated as a regular expression
v : Visual. Only run this snippet on a selection. The trigger should be a single character
w : Word boundary. Only run this snippet when the trigger is preceded (and followed by) a word delimiter, such as ., ,, or -.
c : Code mode. Only run this snippet inside a ``` ... ``` block
Insert tabstops for the cursor to jump to by writing "$0", "$1", etc. in the replacement.

*/

