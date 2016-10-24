# shell version of ord() and chr()
ord() { printf "0x%x\n" "'$1"; }
chr() { printf $(printf '\\%03o\\n' "$1"); }

# highlight text
highlight() { e="$1"; shift; grep --color=always -Eih "$e|$" "$@"; }

# grep all the history!
histgrep() { grep "$1" "$HISTFILE"; }

# grep process table
psgrep() { psc |grep -v grep |grep -i --color=auto "$@"; }

pspid() { ps xao pid,args |grep -v grep |grep -i "$@" |awk '{print $1}'; }

# killall alternative
pskill() {
  # Check whether a signal was given
  if [[ "$1" =~ '^-[[:alnum:]]+' ]]; then
    SIGNAL=$1
    shift
  else
    SIGNAL="-TERM"
  fi

  PIDS=$(pspid $@)
  if [ -n "$PIDS" ]; then
    echo $PIDS |xargs kill $SIGNAL
  else
    echo "No processes matching '$@' found" 1>&2
  fi
}

# Serve current directory with Python's simple HTTP server
serve() {
  local port=${1:-8000}
  python -m SimpleHTTPServer ${port}
}

# know which package installed a file
# doesn't work for builtin, print a lot of junk
installed_by_packet() {
  type "$1" && \
  printf "installed by : " && dpkg -S $(which "$1")
}

# meteo
meteo() {
  curl wttr.in/$1
}

france_inter(){
  mplayer -cache 4096 -cache-min ${1:-10} http://aifae8cah8.lb.vip.cdn.dvmr.fr/franceinter-midfi.mp3
}
