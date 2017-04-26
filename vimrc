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
Plugin 'scrooloose/nerdtree' " Sidebar
Plugin 'kien/ctrlp.vim' " Fuzzy Searching
Plugin 'kchmck/vim-coffee-script' " CoffeeScript colorscheme
Plugin 'craigemery/vim-autotag' " Ctags
Plugin 'tomtom/tcomment_vim' " Comment
Plugin 'tpope/vim-fugitive' " Git
Plugin 'tpope/vim-bundler' " Bundler
Plugin 'tpope/vim-rvm' " RVM
Plugin 'tpope/vim-surround' " Quote/Parenthesis
Plugin 'tpope/vim-repeat' " Repeat vim-surround and more
Plugin 'vim-ruby/vim-ruby' " Vim for Ruby
Plugin 'tpope/vim-endwise' "Wisely add 'end' in Ruby
Plugin 'tpope/vim-rails' " Rails power tool
Plugin 'ervandew/supertab' " Insert completion using Tab
Plugin 'rstacruz/sparkup' " Emmet HTML
" Plugin 'MarcWeber/vim-addon-mw-utils' " Snipmate dependency
" Plugin 'tomtom/tlib_vim' " Snipmate dependency
" Plugin 'garbas/vim-snipmate' " Textmate snippets
Plugin 'altercation/vim-colors-solarized'

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
set background=dark
colorscheme solarized

set autoread
set autowrite
set si "smart indent"
map <F7> mzgg=G`z " Reindent whole file

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

match ErrorMsg '\%>80v.\+'

" Vim-Ruby options
let g:ruby_indent_access_modifier_style = 'indent'
let g:ruby_indent_block_style = 'expression'
let g:ruby_indent_assignment_style = 'variable'
