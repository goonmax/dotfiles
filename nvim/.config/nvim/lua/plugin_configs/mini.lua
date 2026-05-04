return {
  {
    'nvim-mini/mini.nvim',
    version = false,
    config = function()
      require('mini.icons').setup()
      require('mini.pairs').setup()
      require('mini.colors').setup()
    end
  },
}

