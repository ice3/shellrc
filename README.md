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
* `~/.shellrc/vim.d` as an include.d style directory for vim scripts


## Installation

### Install the apps
 
* vim
* zsh
* oh-my-zsh
* sublime text 2 

```shell
sudo add-apt-repository ppa:webupd8team/sublime-text-2 && sudo apt-get update
sudo apt-get install sublime-text vim zsh
chsh -s `which zsh` # change zsh to default shell /!\ log out and in to see changes
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" # from https://github.com/robbyrussell/oh-my-zsh
```

### Clone the repo
```bash
cd $HOME
git clone --recursive git://github.com/ice3/shellrc.git .shellrc  # to clone submodules
```

### Link all the dotfiles at once
```bash
for file in ~/.shellrc/dotfiles/*
do
  ln -sf "$file" $HOME/.`basename "$file"`
done
```

### Or link the dotfiles individually
```bash
# bash config
ln -sf .shellrc/dotfiles/bashrc .bashrc
ln -sf .shellrc/dotfiles/bash_profile .bash_profile
ln -sf .shellrc/dotfiles/inputrc .inputrc

# zsh config
ln -sf .shellrc/dotfiles/zshrc .zshrc
ln -sf .shellrc/dotfiles/zlogin .zlogin

#vim
ln -sf .shellrc/dotfiles/vimrc .vimrc
ln -sf .shellrc/dotfiles/vim .vim

#git
ln -sf .shellrc/dotfiles/gitignore .gitigrore
ln -sf .shellrc/dotfiles/gitconfig .gitconfig

#byobu
ln -sf .shellrc/dotfiles/byobu .byobu
```


## Configuration files for bash:

* bashrc
* bash_profile
* input_rc

## Configuration files for zsh:

* zshrc
* zlogin

## Configuration files for vim:

 * vimrc
 * vim folder (bootstrap bundle/vundle package manager)
 * vim.d folder
 * in ViM, to install : `<esc>:BundleInstall<enter>`
 * to install powerline fonts : `cd ~/.shellrc/vim.d/fonts && ./install.sh` then change the font in the terminal (for gnome term : "Edit > Edit Profile > Font"

## Configuration files for git:

 * gitconfig

## ST2
 * config/sublime-text-2/Packages/User/
  * languages settings
  * keymaps and general settings
  * package control config
* to install

```bash
mv $HOME/.shellrc/config/sublime-text-2/Packages/User{,.bak}
ln -sf $HOME/.shellrc/config/sublime-text-2/Packages/User $HOME/.config/sublime-text-2/Packages/User
```





