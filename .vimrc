syntax on
set expandtab
set ai
set ruler
set paste
highlight Comment ctermfg=green
set background=dark
set nocompatible
set hidden
set nowrap        " don't wrap lines
set tabstop=4     " a tab is four spaces
set backspace=indent,eol,start
                  " allow backspacing over everything in insert mode
set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting
set number        " always show line numbers
set shiftwidth=4  " number of spaces to use for autoindenting
set shiftround    " use multiple of shiftwidth when indenting with '<' and '>'
set showmatch     " set show matching parenthesis
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
set smarttab      " insert tabs on the start of a line according to
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
syntax enable
" Rebind <Leader> key
let mapleader      = ","
let maplocalleader = ","
"VIMRC edit
nnoremap <leader>vrc :edit ~/.vimrc<CR>
set t_Co=256
nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<C
noremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>
set wildmenu
set relativenumber

" Disable stupid backup and swap files
set nobackup
set nowritebackup
set noswapfile

set history=700     "Stores 700 Commands in history
set undolevels=700  "Stores lots of undos

" Remove trailing whitespace on save
autocmd BufWritePre * call s:StripTrailing()
function! s:StripTrailing()
  let l = line(".")
    let c = col(".")
      %s/\s\+$//e
        call cursor(l, c)
        endfunction
        " Disable Mouse Support
set mouse=
" Better copy & paste
set pastetoggle=<F2>
set clipboard^=unnamed
