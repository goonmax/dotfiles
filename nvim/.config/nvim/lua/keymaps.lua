-------------
-- keymaps --
-------------
vim.g.mapleader = ","
vim.keymap.set('n', '<leader>vrc', ':edit ~/.config/nvim/init.lua<CR>', { silent = true })
vim.keymap.set('n', '<C-l>', ':nohl<CR><C-l>:echo "Search Cleared"<CR>', { silent = true })
vim.keymap.set('n', '<C-c>', ':set norelativenumber nonumber<CR>:echo "Line numbers off"<CR>', { silent = true })
vim.keymap.set('n', '<C-n>', ':set number relativenumber<CR>:echo "Line numbers on"<CR>', { silent = true })
vim.keymap.set('n', '<leader>m', ':!mkdir -p %:h<CR>', { silent = true })
vim.keymap.set('n', '<leader>b', ':ls<CR>:b<Space>', { silent = false })
vim.keymap.set('n', '<leader>f', '<Esc>:Files<CR>', opts)
vim.keymap.set('n', '<space>', function()
  vim.cmd('silent make')   -- runs :make quietly (fills quickfix)
  vim.cmd('redraw!')       -- force redraw
  -- optionally open quickfix window if errors:
  if not vim.tbl_isempty(vim.fn.getqflist()) then
    vim.cmd('copen')
  end
end, { desc = "Silent make and open quickfix if errors" })
vim.keymap.set('n', '<leader>t', ':silent retab', { silent = true })
---- load the last session
vim.keymap.set("n", "<leader>ql", function() require("persistence").load({ last = true }) end)
