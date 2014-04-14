autoload -Uz colors && colors

# set colorful prompt (PS1 doesn't support the color variables set above)
if [[ ${EUID} == 0 ]]; then
  PROMPT='%F{64}%m %F{166}%1~%F{reset}$(__git_ps1 " (%s)") %F{160}%#%F{reset} '
else
  PROMPT='%F{64}%m %F{166}%1~%F{reset}$(__git_ps1 " (%s)") %F{64}%#%F{reset} '
fi

RPROMPT='$(vi_mode_prompt_info) $(exit_code_prompt_info)'
