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
" set undodir=~/.vim/undodir
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
highlight CocFloating ctermbg=0 guibg=Gray
highlight CocErrorFloat ctermfg=0 guibg=Gray
highlight Pmenu ctermfg=0 guibg=Gray

command! -nargs=0 Prettier :CocCommand prettier.formatFile

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 0
let g:markdown_minlines = 100

    set nocompatible
    if has("autocmd")
      filetype plugin indent on
    endif

"let g:airline#extensions#tabline#enabled = 0
"let g:airline_extensions = []


" Key mappings
map <C-B> :NERDTreeToggle<CR>
map <C-H> :Goyo<CR>
map <C-K> :CocEnable<CR>
map <C-J> :CocDisable<CR>
map <C-G> :colorscheme codedark<CR>
map <C-C> :colorscheme material<CR>
map <C-T> :colorscheme default<CR>
map <C-S> :colorscheme gruvbox<CR>
map <C-L> :set wrap<CR>
map <C-P> :set nowrap<CR>
map <C-I> :noh<CR>
map <C-_> :vimgrep 
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Pretty
Plug 'ap/vim-css-color'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lualine/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'junegunn/goyo.vim'
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'
Plug 'marko-cerovac/material.nvim'

call plug#end()

lua << END
require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto',
    component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {},
    always_divide_middle = true,
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
END

colorscheme material

lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",

  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = true,

  -- List of parsers to ignore installing
  ignore_install = { "" },

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- list of language that will be disabled
    disable = { "" },

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}
EOF
