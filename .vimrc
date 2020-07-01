syntax on
set number
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set smartindent
set noswapfile
set incsearch
set encoding=utf-8
set background=dark

inoremap jk <Esc>

"Changing cursor shape
let &t_SI .= "\<Esc>[6 q" "solid vertical bar
let &t_EI .= "\<Esc>[2 q" "solid block

autocmd VimEnter * silent exec "! print -n '\e[1 q'"
autocmd VimLeave * silent exec "! print -n '\e[5 q'"

call plug#begin('~/.vim/plugged')

Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-commentary'
Plug 'jiangmiao/auto-pairs'

call plug#end()
