set guicursor = "block" 
set tabstop=2 
set shiftwidth=2
set expandtab
set smarttab
set softtabstop=2
set relativenumber
set nu
set nohlsearch
set hidden
set termguicolors
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8	
set colorcolumn=80
set signcolumn=yes
set clipboard+=unnamedplus

call plug#begin('~/.vim/plugged')
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'gruvbox-community/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

Plug 'neovim/nvim-lspconfig'
Plug 'jose-elias-alvarez/null-ls.nvim'
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'

Plug 'williamboman/nvim-lsp-installer'

"svelte
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'evanleck/vim-svelte', {'branch': 'main'}

"prisma
Plug 'pantharshit00/vim-prisma'

" airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"rust

Plug 'simrat39/rust-tools.nvim'
Plug 'mfussenegger/nvim-dap'

"omnisharp

"Plug 'OmniSharp/omnisharp-vim'

call plug#end()

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

"omnisharp
let g:OmniSharp_server_stdio = 0


set completeopt=menu,menuone,noselect

"let g:tokyonight_style = 'storm'
set background=dark
colorscheme gruvbox

let mapleader = " "

"telescope finder
nnoremap <leader>f <cmd>Telescope find_files hidden=true<cr>
nnoremap <leader>s <cmd>Telescope live_grep hidden=true<cr>

"clipboard

vnoremap <leader>y "+y 
nnoremap <leader>p "+p

"save file
nnoremap <leader>w :w!<CR>
 
"buffer management
nnoremap <C-b> :buffers<CR>
nnoremap <C-o> :bprevious<CR>
nnoremap <C-p> :bnext<CR>
nnoremap <C-x> :bdelete<CR>

:lua require("nvim-lsp-installer").setup{}

:lua require('telescope').setup{defaults = { file_ignore_patterns = { "node_modules", ".git" } }}
":lua require'lspconfig'.tsserver.setup{}

:lua require('lsp-config')
:lua require('cmp-config')
