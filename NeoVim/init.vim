:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=3
:set smarttab
:set softtabstop=4
:set mouse=a
:set encoding=UTF-8
:set fileformat=unix
:set autoread

let mapleader=" "

call plug#begin(fnamemodify(expand('<sfile>'), ':p:h') . "/plug.vim")
" General
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'https://github.com/vim-airline/vim-airline'
" IDE
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tc50cal/vim-terminal'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'https://github.com/nvim-lua/plenary.nvim'
Plug 'https://github.com/ap/vim-css-color'
call plug#end()

" CoC LSP-s
let g:coc_global_extensions=[
	\ 'coc-tsserver',
	\ 'coc-json',
	\]

" Keybindings
"" Use leader as "*
nnoremap <Leader>y "*y
vnoremap <Leader>y "*y
nnoremap <Leader>p "*p
vnoremap <Leader>p "*p

"" NERDTree
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTreeToggle<CR>

"" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Eye candy here
"" Theme configuration
:colorscheme oceanic_material
let g:oceanic_material_background="darker"
let g:oceanic_material_transparent_background=1	

"" Airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
