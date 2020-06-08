" Enable Syntax higlighting
syntax on
" Fix Syntax Highligting Issues

" No Annoying Bell Errors
set noerrorbells
set belloff=all

" Lines, Tabs and Spacing
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set smartcase
"UTF-8 Encoding if not enabled by default
set encoding=UTF-8
" Hybrid Line Numbers 
set number relativenumber
set nu rnu 
" Swap Files and Undo Settings
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
" Incremental Search - Search as you type
set incsearch

"Mapping leader key = SPACE
map <Space> <Leader>

"Plugins - Using Plug Package Manager

call plug#begin('~/.vim/plugged')
Plug 'kaicataldo/material.vim' " Material Theme 
Plug 'morhetz/gruvbox' " Gruvbox Theme - For what I feel like changing it 
Plug 'tpope/vim-fugitive' "Git Integration Plugin
Plug 'vim-utils/vim-man' "View Man pages on Vim
Plug 'mbbill/undotree' " Undo History Viewer
Plug 'preservim/nerdtree' "File Tree
Plug 'ryanoasis/vim-devicons' "Sweet Icons for NERDTree
Plug 'Xuyuanp/nerdtree-git-plugin' "Shows little indicators like VSCode when the file has been changed
Plug 'vim-airline/vim-airline' "Lightweight Status line
Plug 'vim-airline/vim-airline-themes' "Themes for vim airline
Plug 'sheerun/vim-polyglot' "Better syntax Highlighting
Plug 'leafgarland/typescript-vim' "Fix Typescript Syntax Highligting
Plug 'fatih/vim-go' " Vim Go Plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdcommenter' "Easy comments
call plug#end()
" Plug End

" TermGuiColors - Needed for the Material Theme
if (has('termguicolors'))
  set termguicolors
endif

"Material Color Scheme
let g:material_theme_style = 'darker'
colorscheme material
" Fix Weird Coloring for Line numbers in material darker theme
hi LineNr       term=bold cterm=bold ctermfg=2 guifg=Grey guibg=Grey90
"Vim Airline theme  
let g:airline_theme= 'material'
" Autoload NERDTree 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" This Closes NerdTree if the only window open is NerdTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" NerdTree Specific Keybindings
let NERDTreeWinSize=40 
let NERDTreeWinPos="left"
let NERDTreeShowHidden=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeAutoDeleteBuffer=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
nnoremap <Leader>f :NERDTreeToggle %<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind %<CR>
nnoremap <leader>u :UndotreeToggle<cr>
"Nerd Commenter Settings
filetype plugin on
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines is commented or no
let g:NERDToggleCheckAllLines = 1
