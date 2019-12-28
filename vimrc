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
:set completeopt=longest,menuone
:set colorcolumn=79
:hi ColorColumn ctermbg=6
":noh after this command: 
:nnoremap i :noh<cr>i
:nnoremap I :noh<cr>I
:nnoremap a :noh<cr>a
:nnoremap A :noh<cr>A
:nnoremap v :noh<cr>v
:nnoremap V :noh<cr>V
:nnoremap q :noh<cr>
"disable comment after O and <enter>:
autocmd BufNewFile,BufRead * setlocal formatoptions=cql

" libmx
" :command C !clang -std=c17 -Wall -Wextra -Werror -Wpedantic 
        " \ /home/bril/ucode/libmx/fortest.c
        " \ /home/bril/ucode/libmx/src/*.c
        " \ -I /home/bril/ucode/libmx/inc -o
        " \ /home/bril/ucode/libmx/out.out
" :command H e /home/bril/ucode/libmx/inc/libmx.h
" :command CC !clang -Wall -Wextra -Werror -Wpedantic *.c ../../myheder.h -o ../out.out
" :command M e /home/bril/ucode/libmx/fortest.c
" :command O !/home/bril/ucode/libmx/out.out 

" pathfinder 
:command C !clang -std=c17 -Wall -Wextra -Werror -Wpedantic
        \ /home/bril/ucode/pathfinder/src/*.c
        \ /home/bril/ucode/libmx/libmx.a
        \ -I /home/bril/ucode/pathfinder/inc
        \ -I /home/bril/ucode/libmx/inc 
        \ -o /home/bril/ucode/pathfinder/pathfinder
:command H e /home/bril/ucode/pathfinder/inc/pathfinder.h
:command CC !clang -Wall -Wextra -Werror -Wpedantic *.c ../../pathfinder.h -o ../out.out
:command O !/home/bril/ucode/pathfinder/pathfinder test
" :command -nargs=1 O !/home/bril/ucode/pathfinder/pathfinder <args>

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
map <C-n> :NERDTreeToggle<CR>

Plugin 'ctrlpvim/ctrlp.vim'
""^^ For search Ctrl+P
Plugin 'scrooloose/nerdcommenter' "commetline*/*/
let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
let g:NERDSpaceDelims = 1
filetype plugin on

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 
