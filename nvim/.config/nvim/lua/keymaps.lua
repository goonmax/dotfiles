-------------
-- keymaps --
-------------
local M = {}

-- leader key must be set before keymaps
vim.g.mapleader = ","

function M.setup()
    local opts = { noremap = true, silent = true }
    local ok, fzf = pcall(require, 'fzf-lua')
    if ok then
        vim.keymap.set('n', '<leader>f',  fzf.files,     opts)
        vim.keymap.set('n', '<leader>fg', fzf.live_grep, opts)
        vim.keymap.set('n', '<leader>fb', fzf.buffers,   opts)
        vim.keymap.set('n', '<leader>fr', fzf.oldfiles,  opts)
    end
end

-- general keymaps outside of setup()
vim.keymap.set("n", "<leader>vrc", ":edit ~/.config/nvim/<CR>", { silent = true })
vim.keymap.set("n", "<C-l>", ':nohl<CR><C-l>:echo "Search Cleared"<CR>', { silent = true })
vim.keymap.set("n", "<C-c>", ':set norelativenumber nonumber<CR>:echo "Line numbers off"<CR>', { silent = true })
vim.keymap.set("n", "<C-n>", ':set number relativenumber<CR>:echo "Line numbers on"<CR>', { silent = true })
vim.keymap.set("n", "<Esc>", "<C-\\><C-n>", { silent = true })
vim.keymap.set("n", "<leader>m", ":!mkdir -p %:h<CR>", { silent = true })
vim.keymap.set("n", "<leader>b", ":ls<CR>:b<Space>", { silent = false })
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)
vim.keymap.set("n", "<space>", function()
    vim.cmd("silent make")
    vim.cmd("redraw!")
    if not vim.tbl_isempty(vim.fn.getqflist()) then
        vim.cmd("copen")
    end
end, { desc = "Silent make and open quickfix if errors" })
vim.keymap.set("n", "<leader>t", ":silent retab", { silent = true })
vim.keymap.set("n", "<leader>ql", function()
    require("persistence").load({ last = true })
end)

return M  -- must always be last
