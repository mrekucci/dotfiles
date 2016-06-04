" .vimrc - Peter Mrekaj


" GENERAL SETTINGS
" ================

" Initialization of Patogén (enables easy plugin support)
execute pathogen#infect()

" Use filetype specific plugins and indentation
filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Set terminal 256 color support, background and color scheme
set term=screen-256color
set background=light
colorscheme solarized

" Show line number on the left
set number

" Enable relative line numbering
set relativenumber

" Show position coordinates in the bottom right
set ruler

" Show the current file name in the bottom left
set laststatus=2

" Set textwidth
set textwidth=78

" Show column margin
set colorcolumn=80

" Set tabs to 4 spaces
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Automatically expand tabs into spaces
set expandtab

" Turn off text wrapping
set nowrap

" Set unvisible characters representation
set listchars=tab:▸\ ,eol:¬

" Enable the visualisation of the unvisible characters
set list

" Highlight matches when searching
set hlsearch

" Clipboard sharing
set clipboard=unnamed

" Enable spell checking
set spell spelllang=en_us

" Enable plugin for git commit messages
autocmd Filetype gitcommit setlocal spell textwidth=72

" Load justify macro
runtime macros/justify.vim

" Change leader key
let mapleader = ","

" Custom mappings
map <Leader>n :NERDTreeToggle
