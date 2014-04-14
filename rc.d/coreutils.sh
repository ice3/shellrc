# Use homebrew GNU coreutils if available (on osx)
if [ -d /usr/local/opt/coreutils/libexec ]; then
  PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
