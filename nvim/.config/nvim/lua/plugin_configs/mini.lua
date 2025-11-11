return {
  {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
      require('mini.icons').setup()
      require('mini.pairs').setup()
    end
  },
  {
    'nvim-mini/mini.pairs',
    version = false,
  },
}

