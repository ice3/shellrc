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
      # There's no HOSTNAME variable on zsh
      HOSTNAME=$(hostname)

      function precmd() {
        echo -ne "\033]0;${HOSTNAME%%.*} | $(basename $PWD)\007"
        set_tmux_title "${HOSTNAME%%.*} | $(basename $PWD)"
      }

      function preexec() {
        # Strip argument list from command
        PROGRAM=$(echo $1 |cut -f1 -d' ')

        echo -ne "\033]0;${HOSTNAME%%.*} | $PROGRAM\007"
        set_tmux_title "${HOSTNAME%%.*} | $PROGRAM"
      }
    fi

    if [ -n "$BASH" ]; then
      PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME%%.*}\007"'
      set_tmux_title "${HOSTNAME%%.*}"
    fi
  ;;
esac
