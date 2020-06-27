syntax on
set number
set relativenumber
set tabstop=2 shiftwidth=2 expandtab
set encoding=utf-8

inoremap jk <Esc>

"Changing cursor shape
let &t_SI .= "\<Esc>[6 q" "solid vertical bar
let &t_EI .= "\<Esc>[2 q" "solid block
