set nocompatible
set noswapfile
filetype off
set t_Co=256

set shell=/bin/bash

""""" Vundle stuff
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

" Additional plugins
Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'k4zuk0/kazu-vimstuff'
Plugin 'scrooloose/syntastic'
" End of additional plugins

call vundle#end()
filetype plugin indent on
""""" End of Vundle

""""" Airline conf
set noshowmode
set laststatus=2
let g:bufferline_echo=0
"let g:airline_powerline_fonts=0
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
""""" End of Airline conf

""""" CtrlP
let g:ctrlp_working_path_mode = 0
""""" End of CtrlP

""""" Syntastic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
""""" End of Syntastic

""""" Git gutter
let g:gitgutter_signs = 0
""""" End of Git gutter

set backspace=indent,eol,start
set number
set hidden
set history=100

set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent
set smartindent

set nowrap
set list listchars=tab:\ \ ,trail:·

set foldmethod=indent
set foldnestmax=3
set nofoldenable

set wildmode=longest,list,full
set wildmenu
set wildignore=*.o,*.obj,*~

set scrolloff=10
set sidescrolloff=15
set sidescroll=1

set encoding=utf-8
set mouse=a
syntax on

set hlsearch

let mapleader=","
map <Leader>c :noh<CR>

" Ignores
set wildignore=*/cache/*
