execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

syntax enable

set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set nowrap
set wildmode=longest,list,full
set wildmenu

set background=dark
set t_Co=256
set number
set cursorline

set foldmethod=indent
set foldlevel=99

" VIM-FU
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_theme = 'airlineish'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_tab_nr = 1

let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.linenr = 'LINE:'
let g:airline#extensions#csv#enabled = 0

cmap w!! %!sudo tee > /dev/null %
map <s-l> :tabnext<cr>
map <s-h> :tabprevious<cr>



" Override location for .swp files
if isdirectory($HOME .'/.vim/swap') == 0
    :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif

set directory=./.vim-swap//
set directory+=~/.vim/swap//
set directory+=~/tmp//
set directory+=.

colorscheme grb256

let g:SuperTabDefaultCompletionType = "Context"

augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
