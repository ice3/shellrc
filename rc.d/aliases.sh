# common ls aliases
alias ll='ls -hal'
alias la='ls -A'
alias l='ls -CF'

# always use vimproved
alias vi='vim'

# use colordiff if available
if which colordiff &> /dev/null; then
  alias diff='colordiff'
fi
