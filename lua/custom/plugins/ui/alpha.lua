local function gh(repo) return 'https://github.com/' .. repo end

local options

if vim.api.nvim_exec('echo argc()', true) == '0' then
  local function split(s)
    local t = {}
    local max_line_length = vim.api.nvim_get_option 'columns'
    local longest = 0
    for far in s:gmatch '[^\r\n]+' do
      local line
      far:gsub('(%s*)(%S+)', function(spc, word)
        if not line or #line + #spc + #word > max_line_length then
          table.insert(t, line)
          line = word
        else
          line = line .. spc .. word
          longest = max_line_length
        end
      end)
      if #line > longest then longest = #line end
      table.insert(t, line)
    end
    for i = 1, #t do
      local space = longest - #t[i]
      local left = math.floor(space / 2)
      local right = space - left
      t[i] = string.rep(' ', left) .. t[i] .. string.rep(' ', right)
    end
    return t
  end

  local function button(sc, txt, hl, keybind, keybind_opts)
    local sc_ = sc:gsub('%s', ''):gsub('SPC', '<leader>')
    local opts = {
      position = 'center',
      shortcut = sc,
      cursor = 5,
      width = 50,
      align_shortcut = 'right',
      hl_shortcut = hl,
    }
    if keybind then
      keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
      opts.keymap = { 'n', sc_, keybind, keybind_opts }
    end
    local function on_press()
      local key = vim.api.nvim_replace_termcodes(sc_ .. '<Ignore>', true, false, true)
      vim.api.nvim_feedkeys(key, 'normal', false)
    end
    return { type = 'button', val = txt, on_press = on_press, opts = opts }
  end

  local header = {
    type = 'text',
    val = {
      [[                               __                ]],
      [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
      [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
      [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
      [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
      [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    },
    opts = { position = 'center', hl = 'Character' },
  }

  local footer = {
    type = 'text',
    val = {},
    opts = { position = 'center', hl = 'Character' },
  }

  local buttons = {
    type = 'group',
    val = {
      button('e', '  New Buffer',              'RainbowRed',    ':tabnew<CR>'),
      button('f', '  Find file',               'RainbowYellow', ':Telescope find_files<CR>'),
      button('r', '  Recently opened files',   'RainbowBlue',   ':Telescope oldfiles<CR>'),
      button('l', '  Projects',                'RainbowOrange', ':Telescope marks<CR>'),
    },
    opts = { spacing = 1 },
  }

  local ol = {
    icon             = #header.val,
    message          = #footer.val,
    length_buttons   = #buttons.val * 2 - 1,
    neovim_lines     = 2,
    padding_between  = 3,
  }

  local left = vim.api.nvim_get_option 'lines' - (ol.length_buttons + ol.message + ol.padding_between + ol.icon + ol.neovim_lines)

  if left >= 0 then
    local top = math.floor(left / 2)
    local bot = left - top
    options = {
      layout = {
        { type = 'padding', val = top },
        header,
        { type = 'padding', val = ol.padding_between },
        buttons,
        footer,
        { type = 'padding', val = bot },
      },
      opts = { margin = 5 },
    }
  end
end

vim.pack.add { gh 'goolord/alpha-nvim' }
if options ~= nil then
  require('alpha').setup(options)
end
