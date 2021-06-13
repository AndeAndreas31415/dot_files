" tmux
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

call plug#begin('~/.vim/plugged')
" autocompletion plugin
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py'} 
" plantuml syntax import
Plug 'aklt/plantuml-syntax'
call plug#end()

"rename mode name 
let g:currentmode={ 'n'  : 'Normal',
                  \ 'v'  : 'Visual',
                  \ 'V'  : 'V·Line',
                  \ "\<C-V>" : 'V·Block',
                  \ 'i'  : 'Insert',
                  \ 'R'  : 'Replace',
                  \ 'Rv' : 'V·Replace',
                  \ 'c'  : 'Command',}

set number      "number all lines
set mouse=a     "mouse enable for all modes
set hlsearch    "highlight all search matches
set incsearch   "highlighting if i typing
set autoindent  "same space befor line in the new line 
set cursorline  "underline the line of the cursor
set wildmenu    "autocompletes filename/vim commands
set foldenable  "folding more lines in 1 line     
set noshowmode  "disable show mode

set laststatus=2 "show the status line 

"status line elemente
set statusline=%#LineNr#                     "color theme
set statusline+=(%n)%f%m%r                   "(Buffer number) filename and modified flag and Readonly flag
set statusline+=\ [%{g:currentmode[mode()]}] "show mode
"set statusline+=\ %{mode()}                 "show mode
set statusline+=%=                           "Separation between left/right
set statusline+=L:%l/%L                      "show line / all lines 
set statusline+=\ C:%c                       "show colum
set statusline+=\ %p%%                       "Percentage file

colorscheme elflord 

filetype indent on "automate space if needed z.b(Python)
syntax on 
