return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/codecompanion-history.nvim",
  },
  keys = {
    { "cc",  "CodeCompanion",       mode = "c" },
    { "ccc", "CodeCompanionChat",   mode = "c" },
    { "cca", "CodeCompanionAction", mode = "c" },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
      },
      inline = {
        adapter = "copilot",
      },
      agent = {
        adapter = "copilot",
      },
    },
    adapters = {
      openai = function()
        return require("codecompanion.adapters").extend("openai", {
          env = {
            api_key = os.getenv("OPENAI_API_KEY"),
          },
        })
      end,
      copilot = function()
        return require("codecompanion.adapters").extend("copilot", {
          schema = {
            -- model = {
            --   default = "gpt-4.1",
            -- },
          },
        })
      end,
    },
    extensions = {
      history = {
        enabled = true,
      },
    },
    default_adapter = "copilot",
  },
}
