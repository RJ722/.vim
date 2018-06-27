execute pathogen#infect()

set number
set relativenumber
set colorcolumn=79
filetype on
syntax on

colorscheme codedark

set backspace=indent,eol,start
set tabstop=4 softtabstop=4 shiftwidth=4
set smarttab
set expandtab
set smartindent
set autoindent
filetype indent on

set mouse=a

noremap <C-c> "+y
noremap <C-v> "+p

autocmd VimEnter * NERDTree | wincmd p
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

let g:sign_column=1

let g:ale_linters = {
\   'python': ['flake8', 'autopep8'],
\}
