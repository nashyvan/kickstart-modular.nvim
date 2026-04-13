-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- Disable the upstream default colorscheme; vscode.nvim is used instead.
  -- This prevents a race condition where tokyonight and vscode.nvim both try
  -- to set the colorscheme on startup with equal priority.
  { 'folke/tokyonight.nvim', enabled = false },

  require 'custom.plugins.ui.devicons',
  require 'custom.plugins.ui.nvim-tree',
  require 'custom.plugins.ui.bufferline',
  -- require 'custom.plugins.ui.barbar',
  require 'custom.plugins.ui.lualine',
  -- require 'custom.plugins.ui.barbecue',
  -- require 'custom.plugins.ui.dropbar',
  require 'custom.plugins.ui.alpha',
  require 'custom.plugins.ui.colorizer',
  require 'custom.plugins.ui.dressing',
  require 'custom.plugins.ui.fidget',
  require 'custom.plugins.ui.illuminate',
  require 'custom.plugins.ui.indent-blankline',
  require 'custom.plugins.ui.nvim-bqf',
  require 'custom.plugins.ui.sunglasses',
  require 'custom.plugins.ui.transparent',
  require 'custom.plugins.ui.twilight',
  require 'custom.plugins.ui.virt-column',
  -- require 'custom.plugins.ui.emmet',
  require 'custom.plugins.ui.autotag',
  -- require 'custom.plugins.ui.luasnip',
  require 'custom.plugins.ui.conform',
  require 'custom.plugins.ai.copilot',
  require 'custom.plugins.ai.codecompanion',
  require 'custom.plugins.colorscheme.vscode',
}
