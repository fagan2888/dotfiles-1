" General
let mapleader = ","
set nocompatible
set encoding=utf-8
set backspace=start,indent,eol
set ruler
set showcmd
set noerrorbells
set hidden
set formatoptions+=arow
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
set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set grepprg=ack
let g:tex_flavor = "latex"
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

" Appearance
set background=dark
colorscheme oceanblack256
" Get rid of ugly Green insert
highlight! link ModeMsg MoreMsg
"highlight Pmenu ctermbg=238 gui=bold
highlight! link Pmenu Search
highlight! link ColorColumn Search


" Plugins
"let g:proj_flags="imstbcg"
let NERDTreeQuitOnOpen = 1
autocmd FileType python compiler pylint
let g:pylint_onwrite = 0
let g:pylint_cwindow = 0
let g:miniBufExplModSelTarget = 1 
"let g:pydiction_location = '/usr/share/pydiction/complete-dict'
let g:vimwiki_list = [{'path': '~/documents/notes/'}]
let g:pyflakes_use_quickfix = 0
let g:otl_bold_headers = 0

" Remapping
nmap <silent><leader><leader>w :w<cr>
nmap <silent><leader><leader>c :bd<cr>
nmap <silent><C-H> :bp<CR>
nmap <silent><C-L> :bn<CR>
imap ; :
nmap <silent><C-_> :nohlsearch<CR>
map <silent><leader><space> :nohlsearch<CR>
nmap <silent><leader>e :NERDTreeToggle<CR>
