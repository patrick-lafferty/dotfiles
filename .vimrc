if has("win32")
else

	runtime ftplugin/man.vim
	python3 from powerline.vim import setup as powerline_setup
	python3 powerline_setup()
	python3 del powerline_setup

	set rtp+=/usr/lib/python3.5/site-packages/powerline/bindings/vim

	set encoding=utf-8
	set t_Co=256
	let g:Powerline_symbols = 'fancy'
	set laststatus=2

endif

syntax on

call plug#begin()

Plug 'junegunn/seoul256.vim'
Plug 'romainl/Apprentice'
Plug 'tpope/vim-surround'

call plug#end()

colo apprentice

set noerrorbells

filetype plugin indent on
"to have different settings for different file types:
"autocmd FileType html setlocal shiftwidth=2 tabstop=2

set tabstop=4
set shiftwidth=4
set showmatch "shows matching brackets
set smarttab

set wildmenu "visual autocomplete for command menu

"search stuff
set incsearch
set ignorecase
set smartcase
set hlsearch

"ui stuff
set number "show line numbers
"set cursorline "highlight current line
