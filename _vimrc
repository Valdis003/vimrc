set guifont=consolas:h11
"close menu and bar
set guioptions-=m
set guioptions-=T

"off the scroll bars
set guioptions-=r
set guioptions-=L

set encoding=utf-8
set nonumber

"highlight when type while searching
set hlsearch
set ignorecase
set incsearch

"highlight brackets
set showmatch

"match <> too
set matchpairs+=<:>

"
set nowrap

set backspace=2

set shiftwidth=2
set tabstop=2
set smarttab
set expandtab
set autoindent
set smartindent

filetype indent plugin on
autocmd FileType js sw=4 ts=4

set visualbell
syntax on

set foldmethod=manual

"       hidden:  Allow "hidden" buffers.  A must-have!
set hidden
set history=100

set splitbelow
set ruler

set nocompatible

"don't create .swp files
set noswapfile

"fast split switch
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


let mapleader = " "
nnoremap <Leader><Leader> :e#<CR>
map <leader>s :source ~/_vimrc<CR>
map <leader>t :browse oldfiles <cr>
"nnoremap <Leader>t :browse oldfiles<CR>
nmap <leader>j :NERDTreeFind<CR>

"Close buffer keep window
nnoremap <silent> <leader>q :bp<bar>:bd #<CR>

"
"off the highlight of search
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

map <C-k><C-b> :NERDTreeToggle<CR>

"switch between buffers
map <a-h> :bp<CR>
map <a-l> :bn<CR>

autocmd BufWritePre * :%s/\s\+$//e


" let NERDTreeMapActivateNode='<right>'

call plug#begin('~/.vim/plugged')

"color scheme
Plug ('nightsense/carbonized')

"emmet
Plug ('mattn/emmet-vim')

"
Plug ('raimondi/delimitmate')
"static code checker
" Plug ('scrooloose/syntastic')
" Plug ('garbas/vim-snipmate')
" Plug ('honza/vim-snippets')

"allow to comment lines and selections by gc
Plug ('vim-scripts/tComment')

"nerdtree
Plug ('scrooloose/nerdtree')

"allow surround word\selection\etc with () {} [] <> etc.
Plug ('tpope/vim-surround')

"pretty statusbar
"Plug ('vim-airline/vim-airline')

"html snippets
Plug ('othree/html5.vim')

"Plug 'itchyny/lightline.vim'

Plug 'ervandew/supertab'

"shows + and - diffs in file
Plug 'airblade/vim-gitgutter'

Plug 'terryma/vim-multiple-cursors/'
Plug 'junegunn/vim-easy-align'

Plug 'kien/ctrlp.vim'

Plug 'pangloss/vim-javascript'

call plug#end()

colorscheme carbonized-dark

"Open tree when start
"call s:initNerdTree(getcwd())
let FILE=expand("~/.vim/js/js.vim")
if filereadable(FILE)
  exe "source "  FILE
endif

"expand {} after enter
let delimitMate_expand_cr=1
nmap ga <Plug>(EasyAlign)

nmap <leader>1 d%<ESC>k<bar>p
