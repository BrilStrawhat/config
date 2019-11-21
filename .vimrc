set nocompatible              " be iMproved, required
filetype off                  " required
set nu
syntax on
set laststatus=2
set statusline=col:%2c\ line:%2l/%L
set tabstop=4
set shiftwidth=4
set expandtab
:set hlsearch

":command C !python3 %
:command C !clang -std=c17 -Wall -Wextra -Werror -Wpedantic /home/bril/ucode/git/ucode/libmx/fortest.c /home/bril/ucode/git/ucode/libmx/src/*.c -I /home/bril/ucode/git/ucode/libmx/inc -o /home/bril/ucode/git/ucode/libmx/out.out
:command H e /home/bril/ucode/git/ucode/libmx/inc/libmx.h
:command CC !clang -Wall -Wextra -Werror -Wpedantic *.c ../../myheder.h -o ../out.out
:command M e /home/bril/ucode/git/ucode/libmx/fortest.c
:command O !/home/bril/ucode/git/ucode/libmx/out.out 


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Utility
Plugin 'scrooloose/nerdtree'
"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window
autocmd vimenter * NERDTree

"Plugin 'majutsushi/tagbar'  No necessary for now

Plugin 'wesQ3/vim-windowswap'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 
