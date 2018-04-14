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

  case "$(python --version 2>&1)" in
      *" 3."*)
          python -m http.server ${port}
          ;;
      *)
          python -m SimpleHTTPServer ${port}
          ;;
  esac


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

# distributions of line in given files
distrib_lines(){
  wc -l "$@" | grep -v wc | grep -v total | distribution -g -c=pl
}

show_virtual_env() {
  if [ -n "$VIRTUAL_ENV" ]; then
    echo "($(basename $VIRTUAL_ENV))"
  fi
}

download_as_google(){
  curl --user-agent "Googlebot/2.1 (+http://www.google.com/bot.html)" -v "$@"
}

compte_a_rebours(){
	termdown ${1} && spd-say done && notify-send "fini"
}

function django_secret() {
  python -c "import random,string;print(''.join([random.SystemRandom().choice(\"{}{}{}\".format(string.ascii_letters, string.digits, string.punctuation)) for i in range(63)]).replace('\\'','\\'\"\\'\"\\''))";
}