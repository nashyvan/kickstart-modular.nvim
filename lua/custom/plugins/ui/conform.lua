local function gh(repo) return 'https://github.com/' .. repo end

-- conform is already added by kickstart; override setup with prettier for JS/TS/web
vim.pack.add { gh 'stevearc/conform.nvim' }
require('conform').setup {
  format_on_save = {
    lsp_fallback = true,
    timeout_ms = 5000,
  },
  formatters_by_ft = {
    javascript      = { 'prettier' },
    javascriptreact = { 'prettier' },
    typescript      = { 'prettier' },
    typescriptreact = { 'prettier' },
    json            = { 'prettier' },
    css             = { 'prettier' },
    html            = { 'prettier' },
    yaml            = { 'prettier' },
    markdown        = { 'prettier' },
  },
  formatters = {
    prettier = {
      command = 'npx',
      args = { 'prettier', '--stdin-filepath', '$FILENAME' },
      stdin = true,
      env = {
        PRETTIER_PLUGIN_SEARCH_DIR = '.', -- find local prettier-plugin-tailwindcss
      },
    },
  },
}
