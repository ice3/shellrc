# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="crunch"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(compleat dircycle pip pyenv sudo supervisor command-not-found vagrant)
# complete, pip, pyenv, supervisor, vagrant : completion
# dircycle : on peut passer d'un dossier à un ancien avec Ctrl-Maj-gauche/droite
# sudo : esc 2 fois pour rajouter sudo
# command-not-found : propose des commandes proches si non trouvées
#

source $ZSH/oh-my-zsh.sh
