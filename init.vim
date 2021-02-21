syntax on
set exrc
set clipboard=unnamed
set mouse=a
set cursorline
set numberwidth=1
set sw=2
set encoding=utf-8
set ignorecase
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set relativenumber
set nu
set termguicolors
set scrolloff=10
set noshowmode
set completeopt=menuone,noinsert,noselect
set hidden
set nowrap
set noswapfile
set nobackup
set undodir=~/AppData/Local/nvim/undodir
set undofile
set incsearch
set nohlsearch
set colorcolumn=80
set signcolumn=yes
set formatoptions-=r
set formatoptions-=o
highlight ColorColumn ctermbg=0 guibg=lightgrey

" Give more space for displaying messages.
set cmdheight=2"

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

let mapleader=" "


source ~/AppData/Local/nvim/plugins.vim
source ~/AppData/Local/nvim/plug-configs.vim
source ~/AppData/Local/nvim/maps.vim

colorscheme gruvbox
let g:gruvbox_contrast_dark="dark"
set background=dark
