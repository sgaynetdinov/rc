let $LANG='en'
set langmenu=en
set encoding=utf-8

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
