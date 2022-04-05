set nocompatible
set encoding=utf8

" Remove vim swap files
set noswapfile

" set title " Change the terminal title
syntax on " Turn syntax highlighting on
set number relativenumber " Show hybrid (absolute/relative) line numbers

" Indentation
set expandtab           " enter spaces when tab is pressed
set textwidth=120       " break lines when line length increases
set tabstop=4           " use 4 spaces to represent tab
set softtabstop=4
set shiftwidth=4        " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set smartindent
set smarttab
set expandtab

" Make copy/paste between vim instances
set clipboard=unnamed

" Remove Line Wrap
set wrap!

" Toggle highlight on ,/
nnoremap <leader>/ :set hlsearch!<CR>

"
" PLUGINS
"
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/vundle.vim'

" Integrations
Plugin 'tpope/vim-fugitive'         " git

" Completion
" Plugin 'valloric/youcompleteme'     " autocomplete
" Plugin 'zxqfl/tabnine-vim'

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
map <tab> :tabNext<CR>
map <S-tab> :tabprevious<CR>
map <C-0> :tabfirst<CR>
map <C-9> :tablast<CR>

" Plugin
map <C-e> :NERDTreeToggle<CR>

"
" SYNTAX
"
au BufNewFile,BufRead *.s,*.S set filetype=arm " arm = armv6/7
