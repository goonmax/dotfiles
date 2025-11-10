local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
return{
  require("lazy").setup({
  spec = {
    -- import your plugins
    {'nvim-mini/mini.nvim', version = false },
    {"nvim-treesitter/nvim-treesitter", branch = 'master', lazy = false, build = ":TSUpdate"},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-lualine/lualine.nvim',dependencies = { 'nvim-tree/nvim-web-devicons' }},
    {'nvim-mini/mini.pairs', version = false },
    'junegunn/fzf',
    'junegunn/fzf.vim',
    {"mason-org/mason.nvim", opts = { ui = { icons = { package_installed = "✓", package_pending = "➜",package_uninstalled = "✗" } } } },
    'mfussenegger/nvim-lint',
    'lewis6991/gitsigns.nvim',
    'stevearc/conform.nvim',
    "neovim/nvim-lspconfig",
    {"folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  }
},
{
        'saghen/blink.cmp',
        build = 'cargo build --release',  -- compile the Rust backend
        dependencies = {
          'neovim/nvim-lspconfig',
          'rafamadriz/friendly-snippets',
        },
        config = function()
          require('plugin_configs.blink')  -- 👈 We'll create this file next
        end,
      },
    },
  })
}
