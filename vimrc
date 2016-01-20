" be iMproved, required
set nocompatible

" required for vundle
filetype off

" install vundle if not found
let iCanHazVundle=1
let vundle_readme=expand('$HOME/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "installing vundle.."
    echo ""
    silent !mkdir -p $HOME/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle $HOME/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" set runtime path to include vundle and initialize
set rtp+=$HOME/.vim/bundle/vundle
call vundle#begin()

" let vundle manage vundle, required
Plugin 'gmarik/vundle'

" syntax checking
Plugin 'scrooloose/syntastic'

" show git diff
Plugin 'airblade/vim-gitgutter'

" base16 tomorrow dark syntax theme
Plugin 'chriskempson/base16-vim'

" multiple cursor support
Plugin 'terryma/vim-multiple-cursors'

" required
call vundle#end()

" install all bundles
if iCanHazVundle == 0
    echo "installing bundles, please ignore key map error messages"
    echo ""
    :PluginInstall
endif

" enable syntax highlighting
syntax on

" indentation
set autoindent
filetype plugin indent on

" use os clipboard for copypasta
set clipboard=unnamed

" enable os mouse clicking and scrolling
if has("mouse")
   set mouse=a
endif

" no swap files, use version control instead
set noswapfile

" show line numbers
set number
" show column numbers
set ruler

" case-insensitive search
set ignorecase

" highlight search results
set hlsearch

" default to soft tabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" use base16 tomorrow dark theme
colorscheme base16-default
set background=dark

" tip: install plugins with 'vim +PluginInstall +qall' command
