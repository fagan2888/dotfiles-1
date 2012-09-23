" General
let mapleader = ","

set nocompatible
set spell spelllang=en_us
set encoding=utf-8
set backspace=start,indent,eol
set ruler
set showcmd
set noerrorbells
set hidden
set nowrap
set autoread
set directory=~/.vim/backup,/tmp
set undodir=~/.vim/undo,/tmp
set textwidth=79
set colorcolumn=+1
set showmatch
set mat=2 "Show matching braces"
set autochdir
set cmdheight=2 "Avoid hit-enter
set undofile
set gdefault

" Tab
set expandtab
set autoindent
set smartindent
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set grepprg=ack

" File and omnicomplete
filetype plugin indent on
syntax on
au Filetype python syntax keyword pythonDecorator True False self None
"set onmifunc=syntaxcomplete#Complete
set cot=menu,longest


" Search
set hlsearch
set incsearch
set ignorecase
set smartcase


call pathogen#infect() 


" Appearance
set background=dark
colorscheme oceanblack256
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
"highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search
highlight! link Spellbad IncSearch

" Plugins
let NERDTreeQuitOnOpen = 1
let g:miniBufExplModSelTarget = 1 
let g:pydoc_cmd = 'pydoc2'
let g:pep8_map = '<silent><leader>8'
let g:neocomplcache_enable_at_startup = 1 
let g:neocomplcache_enable_auto_select = 1 
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=0
let g:syntastic_quiet_warnings=1

" Remapping
nmap <silent><leader>w :w<cr>
nmap <silent><leader>c :bd<cr>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
nmap ; :
nmap <silent><leader><space> :nohlsearch<CR>
nmap <silent><leader>e :NERDTreeToggle<CR>
"nmap <silent><leader>t :TlistToggle<cr>


