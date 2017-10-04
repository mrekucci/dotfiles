" Setup NeoBundle ----------------------------------------------------------{{{

  if (!isdirectory(expand("$HOME/.config/nvim/repos/github.com/Shougo/dein.vim")))
    call system(expand("mkdir -p $HOME/.config/nvim/repos/github.com"))
    call system(expand("git clone https://github.com/Shougo/dein.vim $HOME/.config/nvim/repos/github.com/Shougo/dein.vim"))
  endif

  set runtimepath+=$HOME/.config/nvim/repos/github.com/Shougo/dein.vim/
  call dein#begin(expand('$HOME/.config/nvim'))

  call dein#add('Shougo/dein.vim')

" Syntax
  call dein#add('altercation/vim-colors-solarized')

" Git helpers
  call dein#add('tpope/vim-fugitive')
  call dein#add('airblade/vim-gitgutter')

" Utils
  call dein#add('ctrlpvim/ctrlp.vim')
  call dein#add('neomake/neomake')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('tpope/vim-surround')
  call dein#add('vim-scripts/vim-multiple-cursors')

  if dein#check_install()
    call dein#install()
  endif

  call dein#end()
  filetype plugin indent on

" }}}

" System Settings ----------------------------------------------------------{{{

" Enable filetype detection, plugin, and indent
  filetype plugin indent on

" Enable syntax highlighting
  syntax enable

" Set background and color scheme
  set background=light
  colorscheme solarized

" Set language for the editor messages
  language en_US.UTF-8

" Show line number on the left
  set number

" Enable relative line numbering
  set relativenumber

" Show position coordinates in the bottom right
  set ruler

" Show the current file name in the bottom left
  set laststatus=2

" Set text-width
  set textwidth=78

" Show column margin
  set colorcolumn=80

" Turn off text wrapping
  set nowrap

" Set unvisible characters representation
  set listchars=tab:▸\ ,trail:\ ,eol:¬

" Enable the visualisation of the unvisible characters
  set list

" Highlight matches when searching
  set hlsearch

" Enable clipboard sharing
  set clipboard=unnamed

" Enable spell checking
  set spell spelllang=en_us

" Enable plugin for git commit messages
  autocmd Filetype gitcommit setlocal spell textwidth=72

" Load justify macro
  runtime macros/justify.vim

" Change leader key
  let mapleader = ","

" Remap the <ESC> key
  inoremap jj <ESC>

" }}}

" Plugins Settings ---------------------------------------------------------{{{

" CtrlP plugin custom key settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'

" Run neomake on the current file on every write
autocmd! BufWritePost * Neomake

" }}}
