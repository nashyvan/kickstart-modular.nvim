local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'kevinhwang91/nvim-bqf' }
require('bqf').setup {
  filter = {
    fzf = {
      extra_opts = { '--bind', 'ctrl-o:toggle-all', '--delimiter', '│' },
    },
  },
}
