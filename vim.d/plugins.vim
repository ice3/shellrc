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
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'MarcWeber/vim-addon-mw-utils'

nmap <C-t> :TagbarToggle<CR>

nmap <leader>e :Errors<CR> " show list of errors and warnings on the current file
let g:syntastic_check_on_open = 1 " check also when just opened the file
let g:syntastic_enable_signs = 1 " don't put icons on the sign column (it hides the vcs status icons of signify)
" custom icons (enable them if you use a patched font, and enable the previous  setting)
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_style_error_symbol = '✗'
let g:syntastic_style_warning_symbol = '⚠'


let g:pymode_lint_on_write = 0 " don't use linter, we use syntastic for that
let g:pymode_lint_signs = 0
let g:pymode_folding = 0 " don't fold python code on open
let g:pymode_rope = 0
let g:pymode_rope_goto_definition_bind = ',d' " open definitions on same window, and custom mappings for definitions and occurrences
let g:pymode_rope_goto_definition_cmd = 'e'
nmap <leader>D :tab split<CR>:PymodePython rope.goto()<CR>
nmap <leader>o :RopeFindOccurrences<CR>


""""""""""""""""""""""""""""""""
" Version control system
"""""""""""""""""""""""""""""""
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

