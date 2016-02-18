set encoding=utf-8

syntax on        " 語法上色顯示
set ai           " 自動縮排
set expandtab	 " 用space代替tab
set shiftwidth=2 " 縮排數量
set tabstop=2

colorscheme desert " 配色

set relativenumber
set cursorline
set background=dark
set noeb
set autochdir


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

" java complete
setlocal omnifunc=javacomplete#Complete " java自動完成
autocmd FileType java nmap <C-X><C-O>

" syntastic
let g:syntastic_check_on_open = 1  " Syntastic 自動檢查語法錯誤

" compile key
autocmd FileType java nmap <F5> :!javac "%:p" && java -cp "%:p:h" "%:t:r"<CR>

" set [vundle]
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required 
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree' 
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/javacomplete'

call vundle#end()
filetype plugin indent on     " required!
" [vundle]
