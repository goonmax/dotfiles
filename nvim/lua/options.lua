--===============
-- NVIM CONFIG ==
--===============
vim.cmd('syntax enable')
vim.cmd('filetype plugin indent on')
vim.opt.autowrite = true

-- Always block cursor
vim.opt.guicursor = ""

-- Function keys
vim.opt.timeout = false
vim.opt.ttimeout = true
-- Disable mouse
vim.opt.mouse = ""

-- Fixes Backspace
vim.opt.backspace = "indent,eol,start"

-- Disable folding
vim.opt.foldenable = false

vim.o.number = true
--vim.o.relativenumber = true

--vim.opt.tabstop = 2
--vim.opt.shiftwidth = 2
--vim.opt.expandtab = true
--vim.opt.softtabstop = 2
--vim.opt.softtabstop = 0
--vim.o.scrolloff = 6

vim.opt.tabstop = 8
vim.opt.softtabstop = 0
--vim.opt.expandtab = true always use spaces
vim.opt.shiftwidth =4
vim.opt.smarttab = true
vim.opt.smartindent = true

vim.o.wrap = false
vim.o.breakindent = true
vim.o.signcolumn = "yes"
vim.o.winborder = "rounded"

vim.o.swapfile = false
vim.o.undofile = true
vim.o.confirm = true

vim.g.have_nerd_font = true
vim.o.mouse = ""

-- case insensitive search
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.inccommand = "split" --substitution live preview

vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣", eol = "$" }

vim.o.timeoutlen = 1000
-- vim.opt.pastetoggle    = '<F2>'
vim.opt.colorcolumn    = '80,132'
vim.opt.formatoptions  = 'tcroqj'
vim.opt.statusline     = '%<%{winnr()}\\ %f\\ %m%r%h%=\\ 0x%02.B\\ \\ \\ \\ %-14.(%l/%L,%c%V%)\\ %P'
vim.opt.history = 700
vim.opt.undolevels = 700
vim.opt.ruler = true

-- this is that annoying ass thing that copies to my clipbaord re
--vim.opt.clipboard = "unnamedplus"

-- Ignore specific files with fzf

vim.opt.wildignore = vim.opt.wildignore + "tags"
vim.opt.wildignore = vim.opt.wildignore + "*.un~"
vim.opt.wildignore = vim.opt.wildignore + "*.pyc"
vim.opt.wildignore = vim.opt.wildignore + "*_build/*"
vim.opt.wildignore = vim.opt.wildignore + "*/coverage/*"
vim.opt.wildignore = vim.opt.wildignore + "*.o,*.obj,*~"
vim.opt.wildignore = vim.opt.wildignore + "*.class"

-- need for bufferline I think
vim.opt.termguicolors = true
require("bufferline").setup{}
