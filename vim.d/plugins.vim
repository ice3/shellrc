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
Plugin 'fisadev/FixedTaskList.vim'

let g:ctrlp_match_window = 'bottom,rder:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 'ra'

map <C-n> :NERDTreeToggle<CR>
nnoremap <leader>u :GundoToggle<CR> 


"""""""""""""""""""""""""""""""""""
"Languages
""""""""""""""""""""""""""""""""""
Plugin 'mattn/emmet-vim'                 "html fast coding
Plugin 'scrooloose/nerdcommenter'        " <leader>cc to comment and <leader>cu to uncomment
Plugin 'Raimondi/delimitMate'            "closes the ( { ' etc
Plugin 'majutsushi/tagbar'               "ctags navigation bar
Plugin 'scrooloose/syntastic'            "syntax checker
Plugin 'klen/python-mode'
Plugin 'Shougo/neocomplcache.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'fisadev/vim-isort'

nmap <C-t> :TagbarToggle<CR>


""""""""""""""""""""""""""""""""
" Version control system
"""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

