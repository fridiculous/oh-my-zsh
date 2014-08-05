set nocompatible              " be iMproved, required
set number
set mouse=a
set autoindent
set smartindent                                
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab
set softtabstop=4
set spell
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" https://github.com/wincent/Command-T
Plugin 'wincent/command-t'
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" also install
" https://github.com/altercation/solarized/tree/master/osx-terminal.app-colors-solarized
" https://github.com/altercation/solarized
" https://github.com/altercation/vim-colors-solarized
Plugin 'altercation/vim-colors-solarized'
" https://github.com/pangloss/vim-javascript
Plugin 'pangloss/vim-javascript'
" https://github.com/nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'
" https://github.com/mrmargolis/dogmatic.vim
Plugin 'mrmargolis/dogmatic.vim'
" https://github.com/spolu/dwm.vim
Plugin 'spolu/dwm.vim'
" https://github.com/hynek/vim-python-pep8-indent
Plugin 'hynek/vim-python-pep8-indent'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" automatically open with nerdtree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" turn on solarized
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

" https://github.com/nvie/vim-flake8
Plugin 'nvie/vim-flake8'

" turn off python indenting
let g:pymode_indent = 0
