execute pathogen#infect()

set number
set colorcolumn=90
filetype on
syntax on

set guifont=Menlo\ Regular:h18

set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set expandtab
set smartindent
set autoindent
filetype indent on

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
