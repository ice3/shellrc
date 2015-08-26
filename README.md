# My shell dotfiles.

TODO :
 * rajouter les plugins pour vim
   * faire le tri des extensions pour vim
 * rajouter une config pour byobu
 * rajouter les extensions de sublime text (http://zanshin.net/2012/08/03/adding-sublime-text-2-settings-themes-plugins-to-dotfiles/)
   * faire le tri des extensions st

 * rajouter ?

## Features

* `~/.shellrc/rc.d` as an include.d style directory for scripts used by all shells
* `~/.shellrc/bashrc.d` as an include.d style directory for bashrc scripts
* `~/.shellrc/zsh.d` as an include.d style directory for zshrc scripts
* `~/.shellrc/login.d` as an include.d style directory for shared zlogin/bash\_profile scripts
* git repository information (current branch, current status) without external dependencies
* colorful prompt
* shared history for all shells

## Installation

```bash
cd
git clone git://github.com/chr4/shellrc.git .shellrc

# bash config
ln -sf .shellrc/dotfiles/bashrc .bashrc
ln -sf .shellrc/dotfiles/bash_profile .bash_profile
ln -sf .shellrc/dotfiles/inputrc .inputrc

# zsh config
ln -sf .shellrc/dotfiles/zshrc .zshrc
ln -sf .shellrc/dotfiles/zlogin .zlogin
```
