let mapleader="\<space>"
set background=dark
set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu

" Tabs size
set expandtab
set shiftwidth=2
set tabstop=2

filetype plugin indent on
syntax on
set t_Co=256
set nu ru et
set hlsearch
let &t_ZH="\e[3m"
let &t_ZR="\e[23m"
call plug#begin('~/.config/nvim/autoload')

Plug 'fatih/vim-go'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'EdenEast/nightfox.nvim' " Vim-Plug"
Plug 'phaazon/hop.nvim'
Plug 'preservim/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'folke/which-key.nvim'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-startify'

call plug#end() 

set encoding=utf-8
set fileencoding=utf-8
set showtabline=2
set autoindent
set smartindent
set backup
set swapfile
set undofile
set backupdir=~/.local/share/nvim/backup//
set directory=~/.local/share/nvim/swap//
set undodir=~/.local/share/nvim/undo//
set undolevels=200
set undoreload=2000
set scrolloff=4
set showmatch
set mouse=v
set mouse=a
set incsearch
set ttyfast
set spell
inoremap
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

autocmd CursorHold * silent call CocActionAsync('highlight')

