let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'aklt/plantuml-syntax'
call plug#end()

set number
set mouse=a
set incsearch
set hlsearch
set autoindent

colorscheme elflord 

syntax on 
