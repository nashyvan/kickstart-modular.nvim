local function gh(repo) return 'https://github.com/' .. repo end

vim.pack.add { gh 'akinsho/bufferline.nvim' }

local colors = {
  transparent = '#1c1c1c',
  selected = '#3a3a3a',
}

local bufferline = require 'bufferline'
bufferline.setup {
  options = {
    mode = 'buffers',
    numbers = 'none',
    style_preset = { bufferline.style_preset.no_italic },
    close_command = 'bdelete! %d',
    right_mouse_command = 'bdelete! %d',
    left_mouse_command = 'buffer %d',
    middle_mouse_command = nil,
    indicator = { style = 'icon' },
    buffer_close_icon = '󰅖',
    modified_icon = '●',
    close_icon = '',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 12,
    max_prefix_length = 12,
    truncate_names = true,
    tab_size = 12,
    color_icons = true,
    show_buffer_icons = vim.g.have_nerd_font,
    show_buffer_close_icons = true,
    show_close_icon = true,
    show_tab_indicators = false,
    show_duplicate_prefix = true,
    persist_buffer_sort = true,
    move_wraps_at_ends = false,
    always_show_bufferline = true,
  },
  highlights = {
    fill = { fg = '#808080', bg = colors.transparent },
    background = { fg = '#808080', bg = colors.transparent },
    tab = { fg = '#808080', bg = colors.transparent },
    tab_selected = { fg = '#eeeeee', bg = '#3a3a3a' },
    tab_separator = { fg = '#eeeeee', bg = '#3a3a3a' },
    tab_separator_selected = { fg = '#eeeeee', bg = colors.selected, sp = colors.selected, underline = false },
    tab_close = { fg = '#eeeeee', bg = '#1c1c1c' },
    close_button = { fg = '#808080', bg = '#1c1c1c' },
    close_button_visible = { fg = '#808080', bg = '#1c1c1c' },
    close_button_selected = { fg = '#eeeeee', bg = '#3a3a3a' },
    buffer_visible = { fg = '#808080', bg = '#1c1c1c' },
    buffer_selected = { fg = '#eeeeee', bg = '#3a3a3a', bold = true, italic = false },
    modified = { fg = '#808080', bg = '#1c1c1c' },
    modified_visible = { fg = '#808080', bg = '#1c1c1c' },
    modified_selected = { fg = '#eeeeee', bg = '#3a3a3a' },
    duplicate_selected = { fg = '#eeeeee', bg = '#3a3a3a', italic = true },
    duplicate_visible = { fg = '#808080', bg = '#1c1c1c', italic = true },
    duplicate = { fg = '#808080', bg = '#1c1c1c', italic = true },
    separator_selected = { fg = '#eeeeee', bg = '#3a3a3a' },
    separator_visible = { fg = '#808080', bg = '#1c1c1c' },
    separator = { fg = '#808080', bg = '#1c1c1c' },
    indicator_visible = { fg = '#808080', bg = colors.transparent },
    indicator_selected = { fg = '#eeeeee', bg = '#3a3a3a' },
    pick_selected = { fg = '#eeeeee', bg = '#3a3a3a', bold = true, italic = true },
    pick_visible = { fg = '#808080', bg = '#1c1c1c', bold = true, italic = true },
    pick = { fg = '#808080', bg = '#1c1c1c', bold = true, italic = true },
    offset_separator = { fg = '#808080', bg = '#1c1c1c' },
    trunc_marker = { fg = '#808080', bg = '#1c1c1c' },
  },
}

vim.keymap.set('n', '<leader><Tab>', '<cmd>BufferLinePick<CR>', { desc = 'BufferLinePick' })
