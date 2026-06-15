local function gh(repo) return 'https://github.com/' .. repo end

-- Install real nvim-web-devicons alongside mini.icons mock for maximum compat
vim.pack.add { gh 'nvim-tree/nvim-web-devicons' }
require('nvim-web-devicons').setup {
  color_icons = true,
  default = true,
  strict = true,
  override_by_filename = {
    ['.gitignore'] = { icon = '', color = '#f1502f', name = 'Gitignore' },
  },
  override_by_extension = {
    ['log'] = { icon = '', color = '#81e043', name = 'Log' },
  },
}
