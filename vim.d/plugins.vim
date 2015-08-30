" plugin management using Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"""""""""""""""""""""""""
"UI
"""""""""""""""""""""""""
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'

"terminal and colorscheme settings
syntax enable
set background="dark"
let g:solarized_termcolors=256
set t_Co=256 
colorscheme solarized

" airline
set laststatus=2
set ttimeoutlen=50
set guifont=Ubuntu\ Mono\ derivative\ 10 "does not work, we need to change the value in the profile preference of gnome term 
let g:airline_powerline_fonts = 1
let g:airline_theme           = 'solarized'

"""""""""""""""""""""""""""""""""""""""""""
" Other
""""""""""""""""""""""""""""""""""""""""""
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'sjl/gundo.vim'

"""""""""""""""""""""""""""""""""""
"Languages
""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'
