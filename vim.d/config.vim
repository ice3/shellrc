" Necesary  for lots of cool vim things
set nocompatible

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => tabulation management
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype indent plugin on

set autoindent      " Who doesn't like autoindent?
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces
set smarttab        " delete all spaces forming a tab in once


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ViM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on                   " Enable syntax highlighting
set number                  " show line numbers
set showcmd                 " show command in bottom bar
" set cursorline              " highlight current line
set wildmenu                " visual autocomplete for command menu
set wildignore=*.o,*~,*.pyc " Ignore compiled files
" Don't redraw while executing macros (good performance config)
" set lazyredraw

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
nnoremap <leader><space> :nohlsearch<CR>    " turn off search highlight
" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => leader redefine
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let mapleader=","       " leader is comma
let g:mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>
" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
" Remember info about open buffers on close
set viminfo^=%


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

set autoread      " Set to auto read when a file is changed from the outside
imap jj <ESC>     " quick escape

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => save
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <leader>w :w!<cr>                " Fast saving
cmap w!! w !sudo tee % >/dev/null     " Let me save files with sudo

nnoremap <leader>u :GundoToggle<CR> " toggle gundo
