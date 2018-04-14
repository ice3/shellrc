if which direnv &> /dev/null; then
        export DIRENV_WARN_TIMEOUT=20s
  eval "$(direnv hook zsh)"
fi
