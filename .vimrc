" Vundle Begin Block
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugin
Plugin 'fatih/vim-go'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Vundle End Block

map <C-n> :NERDTreeToggle<CR>

let $LANG='en'
set langmenu=en
set encoding=utf-8
set fileencoding=utf-8

" Enable syntax highlighting
syntax on 

" Display line number 
set number

" Always show current position
set ruler

" Disable swap files
set noswapfile

" Disable automatic newline at end of file
set nofixendofline

" Indenting
set autoindent " always set autoindenting on
set smartindent
set tabstop=4 " tabs are n spaces
set shiftwidth=4 " number of spaces to use for autoindenting
set expandtab " expand tabs by default (overloadable per file type)
set cindent

" OSX stupid backspace fix
set backspace=indent,eol,start
