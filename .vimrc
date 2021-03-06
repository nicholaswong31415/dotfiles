syntax on
"set number
"set relativenumber
set noshowmode
set tabstop=2 shiftwidth=2 expandtab
set smartindent
set noswapfile
set nowrap
set ignorecase
set smartcase
set incsearch
set encoding=utf-8
set background=dark
highlight EndOfBuffer ctermfg=black ctermbg=black

inoremap jk <Esc>

let mapleader = " "

"Changing cursor shape
let &t_SI .= "\<Esc>[5 q" "solid vertical bar
let &t_SR .= "\<Esc>[3 q" "solid underscore
let &t_EI .= "\<Esc>[1 q" "solid block

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'
Plug 'franbach/miramare'
Plug 'sheerun/vim-polyglot'

call plug#end()

set termguicolors

let g:miramare_disable_italic_comment = 1

colorscheme miramare

autocmd VimEnter * redraw!
