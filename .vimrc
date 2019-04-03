" Plugins

call plug#begin('~/.vim/plugged')

Plug 'ryanoasis/vim-devicons'

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
map <C-n> :NERDTreeToggle<CR>

Plug 'vim-airline/vim-airline'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'mattn/emmet-vim' 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'alampros/vim-styled-jsx'
Plug 'posva/vim-vue'
Plug 'blockloop/vim-swigjs'
Plug 'w0rp/ale'

" Go to file
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --bin' }
Plug 'junegunn/fzf.vim'
map <C-p> :FZF<CR>

" Search in code
Plug 'mileszs/ack.vim'
if executable('ag')
  let g:ackprg = 'ag --nogroup --nocolor --column'
endif

Plug 'prettier/vim-prettier', { 'do': 'npm install' }
" Plug 'mhartington/oceanic-next'
" Plug 'sheerun/vim-polyglot'
Plug 'trevordmiller/nova-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

let g:deoplete#enable_at_startup=1

call plug#end()

" basics
filetype plugin indent on
syntax on
set number

" Default Whitesapce
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching and highlihgts
set hlsearch
set incsearch
set ignorecase
set smartcase

" Kepp more content at the bottom of buffer
set scrolloff=3

" Highlight cursor line
set cursorline

" Directory for temp files
set backupdir=~/dotvim/vim_backups//
set directory=~/dotvim/vim_backups//
set viewdir=~/dotvim/vim_backups//

" Show (partial) command in the status line
set showcmd

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if (has("termguicolors"))
  set termguicolors
endif

set mouse=a

" let g:oceanic_next_terminal_bold=1
" let g:oceanic_next_terminal_italic=1
" colorscheme OceanicNext
" let g:airline_theme='oceanicnext

" colorscheme nova
colorscheme nord

" Prettier config
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
