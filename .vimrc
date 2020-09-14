" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number

" Show file stats
set ruler

" Encoding
set encoding=utf-8

" Color Scheme
"colorscheme edge 
colorscheme challenger_deep 

" Dark background
set background=dark

" Show colors in GUI
if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Set font
set gfn=Hack:h10,Menlo:h10

" Turn on cursorline
set cursorline

" Searching
set ignorecase
set smartcase
set showmatch
set hlsearch
set incsearch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" set window size
set lines=35
set columns=120

" Set to open with pwd as current file directory
set autochdir

" Hide the toolbar
set guioptions-=T

" Set wildchar visual completion awesomeness.
" This is enhanced command line completion and it rocks.
set wildmenu 
set wildmode=full
