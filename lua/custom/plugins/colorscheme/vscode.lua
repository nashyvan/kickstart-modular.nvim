local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'Mofiqul/vscode.nvim' }

local code = require 'vscode'
code.setup {
  transparent = false,
  italic_comments = true,
  disable_nvimtree_bg = true,
}
code.load()
