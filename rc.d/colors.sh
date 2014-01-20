# dircolors --print-database uses its own built-in database
# instead of using /etc/DIR_COLORS. try to use the external file
# first to take advantage of user additions. use internal bash
# globbing instead of external grep binary.

# enable colors for ls, etc. prefer $HOME/.dir_colors
if [ -x /usr/bin/dircolors ]; then
  if [[ -f $HOME/.dir_colors ]]; then
    eval $(dircolors -b $HOME/.dir_colors)
  elif [[ -f /etc/DIR_COLORS ]]; then
    eval $(dircolors -b /etc/DIR_COLORS)
  fi
fi

# enable --color switch for grep commands
for cmd in grep fgrep egrep; do
  alias $cmd="$cmd --color=auto"
done

# enable --color switch for ls command, if supported
if ls --color=auto &> /dev/null; then
  alias ls="ls --color=auto"
fi

# macos ls doesn't support ls --color, but uses CLICOLOR environment variable
export CLICOLOR=1

# try to keep environment pollution down, EPA loves us.
unset match_lhs


# define prompt colors shell-independently
if [[ -n ${ZSH_VERSION-} ]]; then
  c_red="%{$fg[red]%}"
  c_green="%{$fg[green]%}"
  c_yellow="%{$fg[yellow]%}"
  c_blue="%{$fg[blue]%}"
  c_clear="%{$reset_color%}"
else
  # Using \[ and \] around colors is necessary to prevent
  # issues with command line editing/browsing/completion!
  c_red=$'\e[00;31m'
  c_green=$'\e[00;32m'
  c_yellow=$'\e[00;33m'
  c_blue=$'\e[00;34m'
  c_clear=$'\e[00;00m'
fi
