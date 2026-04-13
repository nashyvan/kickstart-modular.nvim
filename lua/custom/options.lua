vim.o.relativenumber = true

-- Auto-install extra Treesitter parsers for web development on startup.
-- Note: treesitter.lua also auto-installs parsers on FileType (on demand),
-- but this eagerly pre-installs them so they are ready on first use.
local extra_parsers = { 'javascript', 'typescript', 'tsx', 'twig' }

vim.api.nvim_create_autocmd('VimEnter', {
  group = vim.api.nvim_create_augroup('custom-extra-treesitter-parsers', { clear = true }),
  once = true,
  callback = function()
    local ok, treesitter = pcall(require, 'nvim-treesitter')
    if not ok then return end
    treesitter.install(extra_parsers)
  end,
})
