set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'itchyny/lightline.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'c.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'doums/darcula'
Plugin 'tpope/vim-fugitive'
Plugin 'ervandew/supertab'
call vundle#end()
filetype plugin indent on
set number
syntax on
set autoindent
set linebreak
set showbreak=+++
set textwidth=100
set ignorecase
set shiftwidth=4
set smartindent
set wildmenu
set wildmode=longest,list,full
set smarttab
set showmatch
set cindent
set tabstop=2
set softtabstop=2
set nowrap
set encoding=utf8
set ruler
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'deus',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }
set noshowmode
set cursorline
set nu
set smartcase
set t_Co=256
map <C-o> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

autocmd BufWritePre * %s/\s\+$//e
colorscheme gruvbox
set background=dark

