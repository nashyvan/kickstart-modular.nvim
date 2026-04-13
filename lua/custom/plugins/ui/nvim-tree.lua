return {
  'nvim-tree/nvim-tree.lua',
  event = {},
  keys = {
    { '<leader>e', '<cmd>NvimTreeToggle<cr>', desc = 'Toggle File Explorer' },
  },
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    -- vim.g.loaded_netrw = 1
    -- vim.g.loaded_netrwPlugin = 1
    -- vim.opt.termguicolors = true
  end,
  opts = {
    view = {
      side = 'right',
    },
  },
}
