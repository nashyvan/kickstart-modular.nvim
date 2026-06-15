local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add {
  gh 'olimorris/codecompanion.nvim',
  gh 'ravitemer/codecompanion-history.nvim',
}
require('codecompanion').setup {
  strategies = {
    chat   = { adapter = 'copilot' },
    inline = { adapter = 'copilot' },
    agent  = { adapter = 'copilot' },
  },
  adapters = {
    openai = function()
      return require('codecompanion.adapters').extend('openai', {
        env = { api_key = os.getenv('OPENAI_API_KEY') },
      })
    end,
    copilot = function()
      return require('codecompanion.adapters').extend('copilot', {
        schema = {},
      })
    end,
  },
  extensions = {
    history = { enabled = true },
  },
  default_adapter = 'copilot',
}

vim.cmd 'cnoreabbrev cc CodeCompanion'
vim.cmd 'cnoreabbrev ccc CodeCompanionChat'
vim.cmd 'cnoreabbrev cca CodeCompanionAction'
