set encoding=utf-8
set tabstop=4
set shiftwidth=4

" Rebind <Leader> key
    let mapleader      = ","
    let maplocalleader = ","

"Commands
nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
nnoremap <C-c> :set norelativenumber<CR>:set nonumberCR><:echo "Line numbers turned off."<CR>
nnoremap <C-n> :set relativenumberCR><:set number<CR>:echo "Line numbers turned on."<CR>
"MakeTags
command! MakeTags !ctags -R .
set t_Co=256            "256 Color support


"VIMRC edit
    nnoremap <leader>vrc :edit ~/.vimrc<CR>


"Learn to stop arrow keys
    nnoremap <Left> :echoe "Use h"<CR>
    nnoremap <Right> :echoe "Use l"<CR>
    nnoremap <Up> :echoe "Use k"<CR>
    nnoremap <Down> :echoe "Use j"<CR>

"Fixes Backspace
set backspace=2


highlight Comment ctermfg=green
" Disable Mouse Support
set mouse=
" Better copy & paste
set pastetoggle=<F2>
set clipboard^=unnamed



" Enable syntax highlighting
filetype off
filetype plugin indent on
syntax on



" Showing line numbers and length
set nu  " show line numbers
set nuw=6
set relativenumber
set tw=79               " width of document (used by gd)
set nowrap              " don't automatically wrap on load
set fo-=t               " don't automatically wrap text when typing
set colorcolumn=128     " Maximum line length

" Useful settings
set history=700     "Stores 700 Commands in history
set undolevels=700  "Stores lots of undos
set ruler           "Show cursor at all times
set wildmenu
set wildignore+=**/node_modules/**

" Spaces as tabs 😜
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Make searchs better
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

set background=dark

" Remove trailing whitespace on save
autocmd BufWritePre * call s:StripTrailing()
function! s:StripTrailing()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfunction
