set encoding=utf-8

set nocompatible              " use Vim settings, rather than Vi settings
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree' " Sidebar
Plugin 'craigemery/vim-autotag' " Ctags
Plugin 'tomtom/tcomment_vim' " Comment
Plugin 'Townk/vim-autoclose' " Auto-close chars
Plugin 'alvan/vim-closetag' " Auto-close HTML tags
Plugin 'tpope/vim-fugitive' " Git
Plugin 'tpope/vim-bundler' " Bundler
Plugin 'tpope/vim-surround' " Quoting/Parenthesizing
Plugin 'tpope/vim-repeat' " Repeat vim-surround and more
Plugin 'tpope/vim-rails' " Rails power tool
Plugin 'tpope/vim-endwise' " Wisely add 'end'
Plugin 'vim-ruby/vim-ruby' " Vim for Ruby
Plugin 'ervandew/supertab' " Insert completion using Tab
Plugin 'rstacruz/sparkup' " Emmet HTML
Plugin 'airblade/vim-gitgutter' " Git diff in the gutter
Plugin 'vim-airline/vim-airline' " Status/tabline
Plugin 'edkolev/tmuxline.vim' " Tmux airline
Plugin 'djoshea/vim-autoread' " Automatically reload a file
Plugin 'vim-scripts/ReplaceWithRegister' " Replace text without visual mode
Plugin 'vim-syntastic/syntastic' " Syntax checking
Plugin 'pangloss/vim-javascript' " Vim for Javascript
Plugin 'mxw/vim-jsx' " React JSX syntax highlighting
Plugin 'gregsexton/MatchTag' " Match HTML tags
Plugin 'chriskempson/base16-vim' " Base16 colorscheme
Plugin 'kchmck/vim-coffee-script' " Coffeescript colorscheme
Plugin 'rizzatti/dash.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

syntax on                         " show syntax highlighting
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
set list listchars=tab:»·,trail:· " display extra whitespace
set backspace=indent,eol,start    " allow delete auto-indentaion
set si                            " smart indent
se mouse+=a                       " select only text without line numbers
set foldmethod=syntax
set foldlevel=1
set autoread
set autowrite

" yank to clipboard
if has("clipboard")
  set clipboard=unnamed " copy to the system clipboard

  if has("unnamedplus") " X11 support
    set clipboard+=unnamedplus
  endif
endif

set background=dark
colorscheme base16-onedark

" Reindent whole file
map <F7> mzgg=G`z

set nobackup
set nowb
set noswapfile
set backupdir=~/tmp,/tmp
set backupcopy=yes
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*
set directory=/tmp

" Build current Ruby file
command Rbrun execute ":w | :!ruby %"
map <F5> :Rbrun<CR>

" Naviate between split windowns easier
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" Key binding
command! Q q
command! Qall qall
command! QA qall
command! E e
command! W w
command! Wq wq

" Vim-Ruby options
let g:ruby_indent_access_modifier_style = 'indent'
let g:ruby_indent_block_style = 'expression'
let g:ruby_indent_assignment_style = 'variable'

" Tmuxline
let g:tmuxline_preset = {
      \'a'    : '#S',
      \'win'  : '#I #W',
      \'cwin' : '#I #W',
      \'x'    : '',
      \'y'    : '#(~/.tmux/plugins/itunes-tracker/script.sh)',
      \'z'    : 'BAT #(~/.tmux/plugins/tmux-battery/scripts/battery_percentage.sh) | %I:%M, %b %d',
      \'options' : {'status-justify': 'left'} }

" Auto-close HTML tags
let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.jsx,*.js,*.html.erb"

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_enable_balloons = 1
let g:syntastic_ignore_files = ['\m\c\.scss$', '\m\c\.sass$']

autocmd BufWritePost * :SyntasticCheck
