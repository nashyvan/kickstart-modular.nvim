local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'xiyaowong/transparent.nvim' }
require('transparent').setup {
  extra_groups = {},
  exclude_groups = {},
}
-- TransparentEnable is defined in plugin/ which loads after init.lua; defer to VimEnter
vim.api.nvim_create_autocmd('VimEnter', {
  once = true,
  callback = function() vim.cmd 'TransparentEnable' end,
})
