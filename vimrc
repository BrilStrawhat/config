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

:command C !clang -std=c17 -Wall -Wextra -Werror -Wpedantic  /Users/tyerofieie/ucode/libmx/fortest.c /Users/tyerofieie/ucode/libmx/src/*.c -I /Users/tyerofieie/ucode/libmx/inc -o /Users/tyerofieie/ucode/libmx/out.out
:command H e /Users/tyerofieie/ucode/libmx/inc/libmx.h
:command CC !clang -Wall -Wextra -Werror -Wpedantic /Users/tyerofieie/ucode/libmx/test.c /Users/tyerofieie/ucode/libmx/src/*.c -I /Users/tyerofieie/ucode/libmx/inc -o /Users/tyerofieie/ucode/libmx/tost.out
:command M e /Users/tyerofieie/ucode/libmx/fortest.c
:command O !/Users/tyerofieie/ucode/libmx/out.out 
:command OO !/Users/tyerofieie/ucode/libmx/tost.out 

":command C !clang -std=c17 -Wall -Wextra -Werror -Wpedantic  ../fortest.c *.c  -o ../out.out
":command M e ../fortest.c
":command O !../out.out 

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
nmap <C-n> :NERDTreeToggle<CR>

Plugin 'scrooloose/nerdcommenter' "commetline
"Plugin 'majutsushi/tagbar'  No necessary for now

Plugin 'wesQ3/vim-windowswap'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 
