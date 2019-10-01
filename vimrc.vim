" General Vim settings syntax on
	let mapleader=","
	set autoindent
	set tabstop=4
	set shiftwidth=4
	set dir=/tmp/
	set number
	set background=dark
	
	


	call plug#begin('~/.vim/plugged')
	"theme hopfuly better on the eyes
	Plug 'morhetz/gruvbox'
	"NerdTree For Better File Navagation
	
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }



	""You Complete me Auto Finishs beeter syntax

	Plug 'Valloric/YouCompleteMe'

	Plug 'w0rp/ale'

	Plug 'airblade/vim-gitgutter'
	
	Plug 'jiangmiao/auto-pairs'
	
	""Helpful Line Thingo
	
	Plug 'vim-airline/vim-airline'
	
	Plug 'vim-airline/vim-airline-themes'
	call plug#end()
	
	
	" FZF keybindings
	noremap <leader>f <Esc>:Files<CR>
	noremap <leader>ta <Esc>:Tags<CR>
	
	" Startify
	let g:startify_files_number = 5"


	"NerdTree
	noremap <leader>nt <Esc>:NERDTreeToggle<CR>
	
	"TagBar
	noremap <leader>tb <Esc>:TagbarToggle<CR>

	"Move between splits infinitly easier
	nnoremap <c-j> <c-w>j
	nnoremap <c-k> <c-w>k
	nnoremap <c-l> <c-w>l
	nnoremap <c-h> <c-w>h
	set splitbelow
	set splitright
	
	"Learn to stop arrow keys
	nnoremap <Left> :echoe "Use h"<CR>
	nnoremap <Right> :echoe "Use l"<CR>
	nnoremap <Up> :echoe "Use k"<CR>
	nnoremap <Down> :echoe "Use j"<CR>

	"Swap semicolon and colon
	noremap ; :
	noremap : ;

	autocmd Filetype html setlocal sw=2 expandtab
	autocmd Filetype javascript setlocal sw=4 expandtab

	set cursorline
	hi Cursor ctermfg=White ctermbg=Yellow cterm=bold guifg=white guibg=yellow gui=bold

	set hlsearch
	nnoremap <C-l> :nohl<CR><C-l>:echo "Search Cleared"<CR>
	nnoremap <C-c> :set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>
	nnoremap <C-n> :set relativenumber<CR>:set number<CR>:echo "Line numbers turned on."<CR>

	nnoremap n nzzzv
	nnoremap N Nzzzv

	nnoremap H 0
	nnoremap L $
	nnoremap J G
	nnoremap K gg


	set backspace=indent,eol,start

	nnoremap <Space> za
	nnoremap <leader>z zMzvzz

	nnoremap vv 0v$

	set listchars=tab:\|\ 
	nnoremap <leader><tab> :set list!<cr>
	set pastetoggle=<F2>
	set mouse=a
	set incsearch

" Language Specific
	" Tabs
		so ~/dotfiles/vim/sleuth.vim

	" Typescript
		autocmd BufNewFile,BufRead *.ts set syntax=javascript
		autocmd BufNewFile,BufRead *.tsx set syntax=javascript

	" Markup
		inoremap <leader>< <esc>I<<esc>A><esc>yypa/<esc>O<tab>


" File and Window Management 
	inoremap <leader>w <Esc>:w<CR>
	nnoremap <leader>w :w<CR>

	inoremap <leader>q <ESC>:q<CR>
	nnoremap <leader>q :q<CR>

	inoremap <leader>x <ESC>:x<CR>
	nnoremap <leader>x :x<CR>

	nnoremap <leader>e :Ex<CR>
	nnoremap <leader>t :tabnew<CR>:Ex<CR>
	nnoremap <leader>v :vsplit<CR>:w<CR>:Ex<CR>
	nnoremap <leader>s :split<CR>:w<CR>:Ex<CR>

" Return to the same line you left off at
	augroup line_return
		au!
		au BufReadPost *
			\ if line("'\"") > 0 && line("'\"") <= line("$") |
			\	execute 'normal! g`"zvzz' |
			\ endif
	augroup END

	autocmd FocusGained,BufEnter,CursorHold,CursorHoldI * if mode() != 'c' | checktime | endif
	set autoread 
	" Notification after file change
	" https://vi.stackexchange.com/questions/13091/autocmd-event-for-autoread
	autocmd FileChangedShellPost *
	  \ echohl WarningMsg | echo "File changed on disk. Buffer reloaded." | echohl None
	


"compliing stuff
	augroup compile
    autocmd!
    autocmd FileType c silent! nnoremap <leader>ll :silent !clear<CR>:!make<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType c silent! nnoremap <leader>lt :silent !clear<CR>:!make test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cpp silent! nnoremap <leader>ll :silent !clear<CR>:!make<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cpp silent! nnoremap <leader>lt :silent !clear<CR>:!make test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType cs silent! nnoremap <leader>ll :silent !clear<CR>:silent !mcs *.cs -out:out.exe<CR>:silent !read<CR>:silent !./out.exe<CR>:silent !read<CR>:silent !rm out.exe<CR>:silent !color<CR>:redraw!<CR>
    autocmd FileType python silent! nnoremap <leader>ll :silent !clear<CR>:!python3 %<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType go silent! nnoremap <leader>lt :silent !clear<CR>:!go test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType ruby silent! nnoremap <leader>ll :silent !clear<CR>:!ruby %<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>ll :silent !clear<CR>:!cargo run<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>lt :silent !clear<CR>:!cargo test<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>ld :silent !clear<CR>:!cargo doc --open<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType rust silent! nnoremap <leader>lit :silent !clear<CR>:!cargo test -- --ignored<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType java silent! nnoremap <leader>ll :silent !clear<CR>:!gradle run<CR>:silent !read<CR>:redraw!<CR>
    autocmd FileType java silent! nnoremap <leader>lt :silent !clear<CR>:!gradle test<CR>:silent !read<CR>:redraw!<CR>
    autocmd BufRead *.b silent! nnoremap <leader>ll :silent !clear<CR>:silent !bfi %<CR>:silent !read<CR>:redraw!<CR>
	augroup END
" Future stuff
	"Swap line
	"Insert blank below and above

" Fix for: https://github.com/fatih/vim-go/issues/1509

filetype plugin indent on


" Disable stupid backup and swap files

 set nobackup


 set nowritebackup
 set noswapfile
