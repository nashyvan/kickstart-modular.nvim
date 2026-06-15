local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'lukas-reineke/indent-blankline.nvim' }

-- mini.nvim (including mini.indentscope) is already installed by kickstart/mini
require('mini.indentscope').setup {
  symbol = '│',
  options = { try_as_border = false },
}
require('ibl').setup {
  indent = { char = '│', tab_char = '│' },
  scope = { enabled = false },
}
