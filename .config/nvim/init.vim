" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Vim plugins
Plug 'dart-lang/dart-vim-plugin'

" Initialize plugin system
call plug#end()

" Show line numbers
set number
" Show cursor line
set cursorline
" Highlight column at 80 characters
set cc=80
" Show context above/below cursorline
set scrolloff=3

" Highlight search matches
set hlsearch
" Searches are case insensitive
set ignorecase
" ...unless they contain at least 1 capital letter
set smartcase

" Set tabs to 2 spaces
set tabstop=2
set softtabstop=2
" Set cindent width
set shiftwidth=2
" Convert tabs to spaces
set expandtab
" Set smart intending when starting a new line
set smartindent

" Enable basic mouse behaviour
set mouse=a
