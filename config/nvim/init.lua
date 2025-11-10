require("plugins")
-- Enable syntax highlighting
vim.cmd('syntax on')
vim.cmd('syntax enable')

-- Enable file type detection and plugins
vim.cmd('filetype plugin on')
vim.cmd('filetype plugin indent on')

-- Basic settings
vim.opt.expandtab = true
vim.opt.ai = true
vim.opt.printoptions = 'paper:a4'
vim.opt.formatoptions = 'tcroqj'
vim.opt.listchars = 'tab:>-,trail:$'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.statusline = '%<%{winnr()} %f %m%r%h%= 0x%02.B    %-14.(%l/%L,%c%V) %P'

-- Window settings
vim.cmd('windo set wrap')
vim.cmd('windo set list number colorcolumn=80,132')

-- Additional settings
vim.opt.ruler = true
vim.opt.nocompatible = true
vim.opt.hidden = true
vim.opt.wrap = false
vim.opt.tabstop = 4
vim.opt.backspace = 'indent,eol,start'
vim.opt.autoindent = true
vim.opt.copyindent = true
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.showmatch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.wildmenu = true
vim.opt.termguicolors = true
vim.opt.wildignore = {'**/node_modules/**', '**/dist/**', '*.pyc'}
vim.opt.tags = {'./tags', 'tags'}
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.mouse = ''
vim.opt.history = 700
vim.opt.undolevels = 700
vim.opt.pastetoggle = '<F2>'

-- Highlight settings
vim.cmd('highlight Comment ctermfg=green')

-- Leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Custom key mappings
vim.api.nvim_set_keymap('n', '<leader>t', ':filetype detect<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>vrc', ':edit ~/.vim/vimrc<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', ':nohl<CR><C-l>:echo "Search Cleared"<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-c>', ':set norelativenumber<CR>:set nonumber<CR>:echo "Line numbers turned off."<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-n>', ':set number<CR>:set number<CR>:echo "Line numbers turned on."<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>m', ':!mkdir -p %:h<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>b', ':ls<cr>:b<space>', { noremap = true })

-- Autocommands
vim.cmd([[
  autocmd BufWritePre * call v:lua.strip_trailing_whitespace()
  autocmd BufWritePre *.h,*.hpp,*.c,*.cpp,*.vert,*.frag call v:lua.format_buffer()
  autocmd BufNewFile,BufRead *.[cCh] set cindent expandtab sw=2 ts=2 colorcolumn=80,132
  autocmd BufNewFile,BufRead *.cpp set cindent expandtab sw=2 ts=2 colorcolumn=80,132
  autocmd BufNewFile,BufRead *.java set cindent expandtab sw=2 ts=2 colorcolumn=80,132
  autocmd BufNewFile,BufRead *.sh set smartindent expandtab sw=2 ts=2 colorcolumn=80,132
  autocmd BufNewFile,BufRead *.xml set smartindent expandtab sw=2 ts=2 colorcolumn=80,132
  autocmd BufNewFile,BufRead [Mm]akefile,*.mk set tw=0 ai ts=4 sw=4 noexpandtab
  autocmd BufWritePre * :retab
]])

-- Functions
_G.strip_trailing_whitespace = function()
  local l = vim.fn.line('.')
  local c = vim.fn.col('.')
  vim.cmd([[%s/\s\+$//e]])
  vim.fn.cursor(l, c)
end

_G.format_buffer = function()
  if vim.bo.modified and vim.fn.findfile('.clang-format', vim.fn.expand('%:p:h') .. ';') ~= '' then
    local cursor_pos = vim.fn.getpos('.')
    vim.cmd('%!clang-format')
    vim.fn.setpos('.', cursor_pos)
  end
end

-- Color settings
vim.cmd([[
  hi StatusLine ctermfg=lightgreen
  hi StatusLineNC ctermfg=lightblue
  hi VertSplit ctermfg=lightblue ctermbg=black
  hi LineNr ctermfg=240
  hi Comment ctermfg=204
  hi SpecialKey ctermfg=238
  hi NonText ctermfg=247
  hi asmRegister ctermfg=99
  hi asmInstruction ctermfg=lightyellow
  hi Folded ctermfg=100 ctermbg=black
  hi TabLine ctermbg=246 ctermfg=white
  hi TabLineSel ctermbg=203 ctermfg=white
  hi TabLineFill ctermbg=white ctermfg=238
  hi DiffChange ctermbg=97
  hi DiffText ctermbg=111
  hi ColorColumn ctermbg=234
  hi Search ctermbg=198 ctermfg=white
]])

-- Insert mode key mappings
vim.api.nvim_set_keymap('i', '#ceb', 'I/*75A*o$74A A*o75a*A/k^llR', {})
vim.api.nvim_set_keymap('i', '#cfb', 'I/*75A*yyp0r yypA/k^llR', {})
vim.api.nvim_set_keymap('i', '#fc', '#fc', {})
vim.api.nvim_set_keymap('i', '%ifc', '0%if defined( CONFIG_ ) && ( CONFIG_ > 0 )^f_a', {})
vim.api.nvim_set_keymap('i', '%eif', '0%endif', {})
vim.api.nvim_set_keymap('i', '%eic', '0%endif /% defined CONFIG_ && ( CONFIG_ > 0 ) %/^f_a', {})



require("mappings")
