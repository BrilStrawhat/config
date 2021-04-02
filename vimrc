" must install vim-gtk to use y"+

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
if match($TERM, "screen")!=-1
      set term=xterm
endif

" :nnoremap <Leader><C-]> <C-w><C-]><C-w>T
" "^^tag in new tab
" :nnoremap Q <C-w>k<C-w>c
" "^^close window above
" :set csprg=gtags-cscope

cabbrev t tabnew

" Alt-j/k inserts blank line below/above.
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Remove unwanted spaces after :w only in .c files
autocmd FileType c autocmd BufWritePre <buffer> %s/\s\+$//e

":noh after this command: 
:nnoremap q :noh<cr>
:nnoremap <C-n> :Te<CR>
:nnoremap T :tabnew<cr>

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
" Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter' " commetline*/*/

" Plugin 'vim-scripts/gtags.vim'
Plugin 'multilobyte/gtags-cscope'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'sk1418/QFGrep'
" Plugin 'jsfaint/gen_tags.vim'
" Plugin 'whatot/gtags-cscope.vim'
" Plugin 'joe-skb7/cscope-maps'
call vundle#end()            " required

"Switch between different windows by their direction`
no <C-j> <C-w>j| "switching to below window 
no <C-k> <C-w>k| "switching to above window
no <C-l> <C-w>l| "switching to right window 
no <C-h> <C-w>h| "switching to left window

let GtagsCscope_Auto_Map = 1
let GtagsCscope_Auto_Load = 1
set cscopetag
" set cscoperelative

let g:NERDCustomDelimiters = { 'c': { 'left': '//' } }
let g:NERDSpaceDelims = 1

filetype plugin on
filetype plugin indent on    " required
"""" END Vundle Configuration 
