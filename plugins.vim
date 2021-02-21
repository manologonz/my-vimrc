call plug#begin('~/AppData/Local/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'dense-analysis/ale'
Plug 'jremmen/vim-ripgrep'
Plug 'tpope/vim-fugitive'
Plug 'leafgarland/typescript-vim'
Plug 'vim-utils/vim-man'
Plug 'lyuts/vim-rtags'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree' 
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', {'do': { -> fzf#install()}}
Plug 'junegunn/fzf.vim'
Plug 'glepnir/dashboard-nvim'
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdcommenter'
"Plug 'preservim/vimux'
Plug 'terryma/vim-multiple-cursors'
Plug 'mhinz/vim-signify'
Plug 'Yggdroot/indentLine'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'pangloss/vim-javascript'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'prettier/vim-prettier', {'do': 'npm install','for': ['javascript', 'typescript', 'css', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']} 
"Plug 'Shougo/deoplete.nvim'

call plug#end()
