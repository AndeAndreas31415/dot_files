" tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call plug#begin('~/.vim/plugged')
" autocompletion plugin
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py'} 
" plantuml syntax import
Plug 'aklt/plantuml-syntax'
call plug#end()

set number      "number all lines
set mouse=a     "mouse enable for all modes
set hlsearch    "highlight all search matches
set incsearch   "highlighting if i typing
set autoindent  "same space befor line in the new line 
set cursorline  "underline the line of the cursor
set showcmd     "show typed commands
set wildmenu    "autocompletes filename/vim commands
set foldenable  "folding more lines in 1 line     

set laststatus=2 "show the status line 

"status line elemente
set statusline=%#LineNr#
set statusline+=%f%m%r              "filename and modified flag and Readonly flag
set statusline+=%=                  "Separation between left/right
set statusline+=\ %p%%              "Percentage file
set statusline+=\ %l:%c             "line and colums in number

colorscheme elflord 

filetype indent on "automate space if needed z.b(Python)
syntax on 
