local function gh(repo) return 'https://github.com/' .. repo end

vim.cmd [[set termguicolors]]
vim.pack.add { gh 'catgoose/nvim-colorizer.lua' }
require('colorizer').setup()
