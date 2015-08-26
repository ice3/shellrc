# remove sublime glib junk
#Send annoying .output logs to /dev/null
function sblm
{
  for f_path in "$@"
  do
    nohup sublime-text "$f_path" >/dev/null 2>&1 &
  done
}

alias st="sblm"
