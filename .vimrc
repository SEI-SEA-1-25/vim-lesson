" Tells vim to stop using only a subset of its features.
" Which is what it does by default for compatibility with
" the original Vi. Generally seen as a very stupid default.
" Your vim is severely crippled if you don't turn this off.
set nocompatible

" Use the system clipboard if it's available.
set clipboard^=unnamed,unnamedplus

" Really really basic syntax coloration.
syntax on

" Add line numbers and make them relative to your current line.
set number
set relativenumber

" Makes "jk" switch from Insert Mode to Normal.
inoremap jk <esc>

" Show what mode you're in at the bottom of the screen.
set showmode

" Sets the cursor based on the mode you're in.
" Straight line for Insert, block for Normal.
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
