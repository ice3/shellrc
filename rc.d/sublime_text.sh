# remove sublime glib junk
#Send annoying .output logs to /dev/null
function sblm
{
  for path in "$@"
  do
    nohup sublime "$path" >/dev/null 2>&1 &
  done
}

alias st="sblm"
