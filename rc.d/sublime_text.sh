# remove sublime glib junk
#Send annoying .output logs to /dev/null
function sblm
{
  if [ $# -eq 0 ]
    then
    nohup subl >/dev/null 2>&1 &
  fi

  for f_path in "$@"
  do
    nohup subl "$f_path" >/dev/null 2>&1 &
  done
}

alias st="sblm"
