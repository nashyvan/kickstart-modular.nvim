local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'nvim-lualine/lualine.nvim' }
vim.pack.add { gh 'AndreM222/copilot-lualine' }

require('lualine').setup {
  options = {
    icons_enabled = vim.g.have_nerd_font,
    theme = {
      normal   = { a = { fg = '#ffffff', bg = '#005f87', gui = 'bold' }, b = { fg = '#ffffff', bg = '#3a3a3a' }, c = { fg = '#ffffff', bg = '#1c1c1c' } },
      insert   = { a = { fg = '#000000', bg = '#5b9b4c', gui = 'bold' } },
      visual   = { a = { fg = '#000000', bg = '#d98e73', gui = 'bold' } },
      replace  = { a = { fg = '#000000', bg = '#d082c4', gui = 'bold' } },
      inactive = { a = { fg = '#aaaaaa', bg = '#1c1c1c', gui = 'bold' }, b = { fg = '#aaaaaa', bg = '#1c1c1c' }, c = { fg = '#aaaaaa', bg = '#1c1c1c' } },
    },
    component_separators = { left = '', right = '' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { statusline = { 'NvimTree' }, winbar = {} },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = { statusline = 1000, tabline = 1000, winbar = 1000 },
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = {
      'branch',
      { 'diff', symbols = { added = ' ', modified = ' ', removed = ' ' } },
      'diagnostics',
    },
    lualine_x = {},
    lualine_y = {
      {
        'copilot',
        symbols = {
          status = {
            icons = { enabled = ' ', disabled = ' ', warning = ' ', unknown = ' ' },
            hl    = { enabled = '#50FA7B', disabled = '#6272A4', warning = '#FFB86C', unknown = '#FF5555' },
          },
        },
        show_colors = false,
        show_loading = true,
      },
    },
    lualine_z = { 'ctime' },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { 'filename' },
    lualine_x = { 'location' },
    lualine_y = {},
    lualine_z = {},
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {},
}
