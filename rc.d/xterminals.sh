case ${TERM} in
  xterm*|rxvt*|Eterm|aterm|kterm|gnome*|interix|screen*)

    # Set tmux pane title, if TERM is screen*
    # We cannot use $TMUX for the check, as it is not set on remote systems
    set_tmux_title() {
      case ${TERM} in screen*)
        printf "\033k$1\033\\"
      esac
    }

    if [ -n "$ZSH_VERSION" ]; then
      # there's no HOSTNAME variable on zsh
      HOSTNAME=$(hostname)

      function precmd() {
        echo -ne "\033]0;${HOSTNAME%%.*} | $(basename $PWD)\007"
        set_tmux_title "${HOSTNAME%%.*} | $(basename $PWD)"
      }

      function preexec() {
        echo -ne "\033]0;${HOSTNAME%%.*} | $(basename $PWD) | $1\007"
        set_tmux_title "${HOSTNAME%%.*} | $(basename $PWD) | $1"
      }
    fi

    if [ -n "$BASH" ]; then
      PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*} | $(basename $PWD)\007"'
      set_tmux_title "${HOSTNAME%%.*} | $(basename $PWD)"
    fi
  ;;
esac
