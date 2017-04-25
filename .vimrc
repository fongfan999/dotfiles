set encoding=utf-8

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'marcweber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets' 
Plugin 'Yggdroot/indentLine' " Display indention level
Plugin 'craigemery/vim-autotag' " Ctags
Plugin 'tomtom/tcomment_vim' " Comment
Plugin 'ervandew/supertab' " Tab completions

" Ruby & Rails
Plugin 'mattn/webapi-vim' " Web API
Plugin 'mattn/emmet-vim' " Emmet
Plugin 'tpope/vim-fugitive' " Git
Plugin 'tpope/vim-bundler' " Bundler
Plugin 'tpope/vim-rvm' " RVM
Plugin 'tpope/vim-rails' " Rails power tool
Plugin 'tpope/vim-surround' " Quote/Parenthesis
Plugin 'tpope/vim-repeat' " Repeat vim-surround and more

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on                         " show syntax highlighting
filetype plugin indent on
set autoindent                    " set auto indent
set ts=2                          " set indent to 2 spaces
set shiftwidth=2                  " set indent to 2 spaces when shifting
set colorcolumn=80                " show column at column 80
set number                        " show line number
set expandtab                     " use spaces, not tab characters
set relativenumber                " show relative line numbers
set showmatch                     " show bracket matches
set ignorecase                    " ignore case in search
set hlsearch                      " highlight all search matches
set cursorline                    " highlight current line
set smartcase                     " pay attention to case when caps are used
set incsearch                     " show search results as I type
set ruler                         " show row and column in footer
set scrolloff=2                   " minimum lines above/below cursor
set laststatus=2                  " always show status bar

set gfn=Monaco:h13

let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/.vim/snippets.json')), "\n"))
set autoread
set autowrite
set autoindent
set si "smart indent"
map <F7> mzgg=G`z " Reindentation

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

match ErrorMsg '\%>80v.\+'

" indentLine
let g:indentLine_color_term = 239
let g:indent_guides_enable_on_vim_startup=1
let g:indentLine_char = ':'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'
