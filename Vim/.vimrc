" statusline config

" always display status line
set laststatus=2

" default the statusline to green when entering Vim
hi statusline guibg=DarkGrey ctermfg=8 guifg=White ctermbg=15

" left side
set statusline=%f       " file name
set statusline+=%y      " filetype
set statusline+=%h      " help file flag
set statusline+=%m      " modified flag
set statusline+=%r      " read only flag
" right side
set statusline+=\ %=                        " align left
set statusline+=Line:%l/%L[%p%%]            " line X of Y [percent of file]
set statusline+=\ Col:%c                    " current column


" misc config

syntax on               " syntax highlighting
set number              " line numbers
set autoindent          " indent based on previous line
set hlsearch            " when searching, highlight all occurrences in file
