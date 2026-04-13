return {
  'romgrk/barbar.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons', -- для иконок
    'lewis6991/gitsigns.nvim'      -- необязательно, для интеграции с Git
  },
  config = function()
    require('barbar').setup {
      auto_hide = false,
      tabpages = true,
      clickable = true,
      -- icons = {
      --   buffer_index = false,
      --   filetype = { enabled = false },
      --   separator = { left = '▎', right = '' },
      -- },
      icons = { buffer_index = false, },
    }
  end,
}
