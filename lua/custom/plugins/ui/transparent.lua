local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'xiyaowong/transparent.nvim' }
require('transparent').setup {
  extra_groups = {},
  exclude_groups = {},
}
vim.cmd 'TransparentEnable'
