set nocompatible
set number
set bg=dark
set tabstop=4
set expandtab
set shiftwidth=4
set autoindent
set hlsearch
"call pathogen#helptags()
"call pathogen#infect()
set hidden
if has("autocmd")
  " When editing a file, always jump to the last known cursor position.
    " Don't do it when the position is invalid or when inside an event handler
      " (happens when dropping a file on gvim).
        " Also don't do it when the mark is in the first line, that is the default
          " position when opening a file.

autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
    endif
