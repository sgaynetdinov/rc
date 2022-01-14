set nocompatible              " be iMproved, required
filetype off                  " required

" Initialize plugin system
call plug#begin('~/.vim/plugged')

Plug '/opt/homebrew/bin/fzf'
Plug 'junegunn/fzf'
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree'
Plug 'airblade/vim-gitgutter'

call plug#end()

filetype plugin indent on    " required

map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

let $LANG='en'
set langmenu=en
set encoding=utf-8
set fileencoding=utf-8

" Enable syntax highlighting
syntax on 

" Display line number 
set number
set cursorline

" Always show current position
set ruler

" Disable swap files
set nobackup
set nowritebackup
set noswapfile

" Disable automatic newline at end of file
set nofixendofline

" Indenting
set autoindent   " always set autoindenting on
set smartindent
set tabstop=4    " tabs are n spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set expandtab    " expand tabs by default (overloadable per file type)
set cindent

" OSX stupid backspace fix
set backspace=indent,eol,start

" Set custom syntax 
au BufReadPost *.vue set syntax=html