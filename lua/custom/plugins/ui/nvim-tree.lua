local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'nvim-tree/nvim-tree.lua' }
require('nvim-tree').setup {
  view = { side = 'right' },
}
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle File Explorer' })
