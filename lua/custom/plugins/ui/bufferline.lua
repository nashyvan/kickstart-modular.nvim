local colors = {
  transparent = '#1c1c1c',
  selected = '#3a3a3a',
}

return {
  'akinsho/bufferline.nvim',
  lazy = false,
  keys = {
    { '<leader><Tab>', '<cmd>BufferLinePick<CR>', desc = 'BufferLinePick' },
  },
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    local bufferline = require 'bufferline'
    bufferline.setup {
      options = {
        mode = 'buffers', -- set to "tabs" to only show tabpages instead
        numbers = 'none', -- "none" | "ordinal" | "buffer_id" | "both" | function({ ordinal, id, lower, raise }): string,
        style_preset = {
          bufferline.style_preset.no_italic,
        },
        close_command = 'bdelete! %d',       -- can be a string | function, | false see "Mouse actions"
        right_mouse_command = 'bdelete! %d', -- can be a string | function | false, see "Mouse actions"
        left_mouse_command = 'buffer %d',    -- can be a string | function, | false see "Mouse actions"
        middle_mouse_command = nil,          -- can be a string | function, | false see "Mouse actions"
        indicator = {
          -- icon = "▎", -- this should be omitted if indicator style is not 'icon'
          style = 'icon',
        },
        buffer_close_icon = '󰅖',
        modified_icon = '●',
        close_icon = '',
        left_trunc_marker = '',
        right_trunc_marker = '',
        max_name_length = 12,
        max_prefix_length = 12, -- prefix used when a buffer is de-duplicated
        truncate_names = true,  -- whether or not tab names should be truncated
        tab_size = 12,
        -- diagnostics = "nvim_lsp",
        color_icons = true,               -- whether or not to add the filetype icon highlights
        show_buffer_icons = vim.g.have_nerd_font, -- disable filetype icons for buffers
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_tab_indicators = false,
        show_duplicate_prefix = true, -- whether to show duplicate buffer prefix
        persist_buffer_sort = true,   -- whether or not custom sorted buffers should persist
        move_wraps_at_ends = false,   -- whether or not the move command "wraps" at the first or last position
        -- separator_style = 'thin',     --| "slope" | "thick" | "thin" | { 'any', 'any' },
        always_show_bufferline = true,
      },
      highlights = {
        fill = {
          fg = "#808080",
          bg = colors.transparent,
        },
        background = {
          fg = "#808080",
          bg = colors.transparent,
        },
        tab = {
          fg = "#808080",
          bg = colors.transparent,
        },
        tab_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        tab_separator = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        tab_separator_selected = {
          fg = "#eeeeee",
          bg = colors.selected,
          sp = colors.selected,
          underline = false,
        },
        tab_close = {
          fg = "#eeeeee",
          bg = "#1c1c1c",
        },
        close_button = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        close_button_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        close_button_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        buffer_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        buffer_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
          bold = true,
          italic = false,
        },
        modified = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        modified_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        modified_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        duplicate_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
          italic = true,
        },
        duplicate_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
          italic = true,
        },
        duplicate = {
          fg = "#808080",
          bg = "#1c1c1c",
          italic = true,
        },
        separator_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        separator_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        separator = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        indicator_visible = {
          fg = "#808080",
          bg = colors.transparent,
        },
        indicator_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
        },
        pick_selected = {
          fg = "#eeeeee",
          bg = "#3a3a3a",
          bold = true,
          italic = true,
        },
        pick_visible = {
          fg = "#808080",
          bg = "#1c1c1c",
          bold = true,
          italic = true,
        },
        pick = {
          fg = "#808080",
          bg = "#1c1c1c",
          bold = true,
          italic = true,
        },
        offset_separator = {
          fg = "#808080",
          bg = "#1c1c1c",
        },
        trunc_marker = {
          fg = "#808080",
          bg = "#1c1c1c",
        }
      },
    }
  end,
}
