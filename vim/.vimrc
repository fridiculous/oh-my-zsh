set nocompatible              " be iMproved, required
filetype off                  " required

" highlight search terms
set hlsearch
" Cursorline
" set cursorline cursorcolumn
" File encodings
set fileencodings=utf-8,latin1
" Convert tab to spaces
set expandtab
" Set line numbers
set nu
" Syntax always on
syntax on
" Keep the same indentation as the previous line
set autoindent
" Insert a level of indentation in some file types
set smartindent
" Global indent
set tabstop=4
set shiftwidth=4

" for any mouse
set mouse=a
set spell

" unknown
set smarttab
set softtabstop=4

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
" https://github.com/spolu/dwm.vim
" Plugin 'spolu/dwm.vim'
" https://github.com/wincent/Command-T
Plugin 'wincent/command-t'
" https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
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
" Plugin 'hynek/vim-python-pep8-indent'
" https://github.com/hynek/vim-python-pep8-indent
" https://github.com/klen/python-mode
" https://github.com/nvie/vim-flake8
Plugin 'klen/python-mode'
" https://github.com/kien/ctrlp.vim
Plugin 'kien/ctrlp.vim'
" https://github.com/scrooloose/syntastic
Plugin 'scrooloose/syntastic'
" https://github.com/jistr/vim-nerdtree-tabs
Plugin 'jistr/vim-nerdtree-tabs'
" https://github.com/Lokaltog/vim-easymotion
Plugin 'Lokaltog/vim-easymotion'
" https://github.com/ervandew/supertab
Plugin 'ervandew/supertab'

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
" to enable, first
" git clone https://github.com/altercation/solarized
" cd os-x or iterm and import the dark colors into the text editor
" otherwise flip on
" let g:solarized_termcolors=256
colorscheme solarized

" set filetype = yaml for sls salt files
au BufNewFile,BufRead *.sls set filetype=yaml

" turn off python indenting
let g:pymode_indent = 0

" turn off python folding
let g:pymode_folding = 1

" Map ctrl-movement keys to window switching
map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>
" Switch to alternate file
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>

" autocmd vimenter * NERDTree 
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
