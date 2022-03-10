syntax on

set relativenumber
set noerrorbells
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
"set colorcolumn=70
highlight ColorColumn ctermbg=0 guibg=lightgrey
inoremap jk <Esc>

call plug#begin("~/.vim/plugged")

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kevinoid/vim-jsonc'
Plug 'Yggdroot/indentLine'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-commentary'
Plug 'psliwka/vim-smoothie'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafOfTree/vim-matchtag'

call plug#end()

"installed coc extension:
"coc-emmet
"coc-pair
"coc-prettier
"coc-eslint
"coc-json
"coc-snippets
"coc-tsserver

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')

set shiftwidth=4

set termguicolors
colorscheme gruvbox
set background=dark

let mapleader = " "

"nerdtree config
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>f :NERDTreeToggle<CR>

"terminal config
set splitright
set splitbelow
tnoremap <Esc> <C-\><C-n>
au BufEnter * if &buftype == 'terminal' | :startinsert | endif
function! OpenTerminal()
  split term://bash
  resize 10
endfunction
nnoremap <c-n> :call OpenTerminal()<CR>

"remap
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

let g:loaded_python_provider = 0
let g:python_host_prog = ''
let g:python3_host_prog = '/usr/local/bin/python3'

autocmd FileType json syntax match Comment +\/\/.\+$+

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" telescope config
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>






