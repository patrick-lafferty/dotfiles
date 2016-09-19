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

call plug#end()

colo apprentice

set tabstop=4
set shiftwidth=4
set showmatch "shows matching brackets
set smarttab

set wildmenu
