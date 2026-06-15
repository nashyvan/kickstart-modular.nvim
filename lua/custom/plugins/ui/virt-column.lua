local function gh(repo) return 'https://github.com/' .. repo end

vim.o.colorcolumn = '80'
vim.pack.add { gh 'lukas-reineke/virt-column.nvim' }
require('virt-column').setup {}
