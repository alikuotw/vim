set encoding=utf-8

syntax on        " 語法上色顯示
set ai           " 自動縮排
set expandtab	   " 用space代替tab
set shiftwidth=2 " 縮排數量
set tabstop=2
set ruler        " 顯示右下角設定值
set relativenumber
set cursorline
colorscheme desert " 配色

" NERDTree
nmap <F12> :NERDTree<CR>

" new tab
nmap <C-t><C-t> :tabnew<CR> 

" close tab
nmap <C-t><C-w> :tabclose<CR>

" move windwos
nmap <C-K> <C-W><C-K>
nmap <C-J> <C-W><C-J>
nmap <C-H> <C-W><C-H>
nmap <C-L> <C-W><C-L>

" set [vundle]
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'artur-shaik/vim-javacomplete2'

call vundle#end()
filetype plugin indent on     " required!
