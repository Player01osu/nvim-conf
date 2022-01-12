syntax on

set clipboard+=unnamedplus

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set mouse=a
set smartcase
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set number relativenumber
set termguicolors
" set spell

set wildmode=longest,list,full

" set colorcolumn=80

" set cursorline
" set cursorcolumn
" highlight ColorColumn ctermbg=0 guibg=lightgrey

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

    set nocompatible
    if has("autocmd")
      filetype plugin indent on
    endif


" Key mappings
map <C-B> :NERDTreeToggle<CR>
map <C-H> :Goyo<CR>
map <C-G> :colorscheme codedark<CR>
map <C-T> :colorscheme default<CR>
imap <C-P> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

" PLUGINS
call plug#begin('~/.vim/plugged')

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'masukomi/vim-markdown-folding'

" Function
Plug 'scrooloose/nerdtree'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'godlygeek/tabular'
Plug 'mbbill/undotree'

" Pretty
Plug 'ap/vim-css-color'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'junegunn/goyo.vim'
Plug 'tomasiser/vim-code-dark'

call plug#end()
