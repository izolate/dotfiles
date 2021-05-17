" Install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

" Vim plugins
Plug 'dart-lang/dart-vim-plugin'
" JavaScript syntax
Plug 'pangloss/vim-javascript'
" TypeScript syntax
Plug 'leafgarland/typescript-vim'
" React JSX syntax
Plug 'mxw/vim-jsx'
Plug 'ianks/vim-tsx'
" GraphQL syntax
Plug 'jparise/vim-graphql'
" Pug syntax
Plug 'digitaltoad/vim-pug'
" Sort JS imports on save
Plug 'ruanyl/vim-sort-imports'
let g:import_sort_auto = 1
" TOML syntax
Plug 'cespare/vim-toml'
" Nim syntax
Plug 'alaviss/nim.nvim'

" Neoformat is a generic code formatter,
" configured here to run automatically on certain files.
Plug 'sbdchd/neoformat'
augroup NeoformatAutoFormat
    autocmd!
    autocmd BufWritePre,TextChanged,InsertLeave *.js,*.jsx,*.dart,*.html,*.css,*.graphql,*.py,*.go Neoformat
augroup END

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
