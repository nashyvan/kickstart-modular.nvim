return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  config = function()
    require('conform').setup {
      format_on_save = {
        lsp_fallback = true,
        timeout_ms = 5000,
      },
      formatters_by_ft = {
        javascript = { 'prettier' },
        javascriptreact = { 'prettier' },
        typescript = { 'prettier' },
        typescriptreact = { 'prettier' },
        json = { 'prettier' },
        css = { 'prettier' },
        html = { 'prettier' },
        yaml = { 'prettier' },
        markdown = { 'prettier' },
      },
      formatters = {
        prettier = {
          command = 'npx',
          args = { 'prettier', '--stdin-filepath', '$FILENAME' },
          stdin = true,
          env = {
            PRETTIER_PLUGIN_SEARCH_DIR = '.', -- Чтобы находить локальный prettier-plugin-tailwindcss
          },
        },
      },
    }
  end,
}
