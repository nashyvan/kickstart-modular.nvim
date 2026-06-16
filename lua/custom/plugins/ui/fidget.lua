local function gh(repo) return 'https://github.com/' .. repo end

-- fidget is already added by kickstart/lspconfig; override config with winblend = 0
vim.pack.add { gh 'j-hui/fidget.nvim' }
require('fidget').setup {
  notification = {
    window = { winblend = 0, avoid = { 'NvimTree' } },
  },
}
