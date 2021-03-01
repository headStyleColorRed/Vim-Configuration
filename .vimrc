syntax on

set mouse=r
set guicursor=
set noshowmatch
set relativenumber
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set wrap
set smartcase
set noswapfile
set nobackup
set incsearch
set termguicolors
set scrolloff=8
set splitbelow

" _ _ _ P L U G I N S _ _ _ "
call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'maralla/completor.vim'
Plug 'townk/vim-autoclose'
Plug 'dense-analysis/ale'

call plug#end()


" _ _ _ C O L O R S _ _ _ "
colorscheme gruvbox
set background=dark


" _ _ _ L I G H T  L I N E _ _ _ "
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

" _ _ _ N E R D   T R E E  _ _ _ "
nmap <C-f> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif



" _ _ _ S Y N T A X   C H E C K E R   _ _ _ "
