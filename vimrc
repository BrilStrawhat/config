set nocompatible              " be iMproved, required
filetype off                  " required
set nu
syntax on
set laststatus=2
set statusline=col:%2c\ line:%2l/%L\ %F
set tabstop=4
set shiftwidth=4
set expandtab
:set hlsearch
:set completeopt=longest,menuone
:set colorcolumn=79
:hi ColorColumn ctermbg=6
set tags=tags;\
if match($TERM, "screen")!=-1
      set term=xterm
endif
":noh after this command: 
:nnoremap q :noh<cr>
"disable comment after O and <enter>:
autocmd BufNewFile,BufRead * setlocal formatoptions=cql
" move tabs with Alt arrow 
nnoremap <silent> <A-Left> :execute 'silent! tabmove ' . (tabpagenr()-2)<CR>
nnoremap <silent> <A-Right> :execute 'silent! tabmove ' . (tabpagenr()+1)<CR>
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Utility
Plugin 'mkitt/tabline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
""^^ For search Ctrl+P
Plugin 'scrooloose/nerdcommenter' "commetline*/*/
call vundle#end()            " required
"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window
map <C-n> :NERDTreeToggle<CR>

let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
let g:NERDSpaceDelims = 1

:nnoremap <Leader><C-]> <C-w><C-]><C-w>T
"^^tag in new tab
:nnoremap Q <C-w>k<C-w>c
"^^close window above
filetype plugin on
filetype plugin indent on    " required
"""" END Vundle Configuration 

