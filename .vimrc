set encoding=utf-8

syntax on        " 語法上色顯示
set ai           " 自動縮排
set expandtab	   " 用space代替tab
set shiftwidth=4 " 縮排數量
set tabstop=4
set ruler        " 顯示右下角設定值
set relativenumber
set cursorline
colorscheme moloki " 配色

" NERDTree
nmap <F12> :NERDTree<CR>

" new tab
map <C-n> :tabnext<CR> 
map <C-b> :tabprevious<CR>
map <C-t> :tabnew<CR>
map <C-e> :tabclose<CR>

" move windwos
map <C-k> <C-w>k
map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-l> <C-w>l
nnoremap <Tab> <c-w>w

" save
nmap <S-w> :w<CR>      
nmap <S-x><S-w> :wq<CR>
" exit
nmap <S-q> :q!<CR>
nmap <S-x><S-q> :qall!<CR>

" left shift
imap <S-Tab> <C-d>

" compile
map <S-F5><S-P> :!python %<CR>


" set [vundle]
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'aperezdc/vim-template'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on     " required!
