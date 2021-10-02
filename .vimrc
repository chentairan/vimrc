" vim basic setting
syntax on
set number
set cursorline
set wrap
set showcmd
set wildmenu
set hlsearch
set incsearch
exec "nohlsearch"

" vim setup
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set tw=0
set scrolloff=5
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
set laststatus=2
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


" key map
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source $MYVIMRC<CR>
map V :vsplit<CR>
map H :split<CR>

" plugin install
call plug#begin()
  Plug 'preservim/nerdtree'
  Plug 'dracula/vim', { 'as': 'dracula' }
  Plug 'ycm-core/YouCompleteMe'
  Plug 'vim-airline/vim-airline'
  Plug 'connorholyday/vim-snazzy'
call plug#end()

" NERDTree
map tt :NERDTreeToggle<CR>

" You Complete ME
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"

" Theme
" colorscheme dracula
let g:SnazzyTransparent = 1
color snazzy
