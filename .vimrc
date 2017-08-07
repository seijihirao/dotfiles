set nocompatible
set encoding=utf8

" Remove vim swap files
set noswapfile

" set title " Change the terminal title
syntax on " Turn syntax highlighting on
set number " Show line numbers

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Make copy/paste between vim instances
set clipboard=unnamedplus

" Remove Line Wrap
set wrap!

" Toggle highlight on ,/
nnoremap <leader>/ :set hlsearch!<CR>

"
" PLUGINS
"
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'VundleVim/vundle.vim'

" Integrations
Plugin 'tpope/vim-fugitive'         " git

" Completion
" Plugin 'valloric/youcompleteme'     " autocomplete

" Interface
Plugin 'vim-airline/vim-airline'    " statusbar
Plugin 'vim-airline/vim-airline-themes'

" Commands
Plugin 'terryma/vim-multiple-cursors'

" Other
Plugin 'scrooloose/nerdtree'        " filetree

set laststatus=2

call vundle#end()
filetype plugin indent on

" Don't show separators
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" autocmd vimenter * NERDTree " Starts nerdtree automatically

"
" SHORTCUTS
"

" Tabs
map <C-t> :tabnew<CR>
map <C-w> :tabclose<CR>
map <C-RIGHT> :tabNext<CR>
map <C-LEFT> :tabprevious<CR>
map <C-0> :tabfirst<CR>
map <C-9> :tablast<CR>

" Plugin
map <C-e> :NERDTreeToggle<CR>
