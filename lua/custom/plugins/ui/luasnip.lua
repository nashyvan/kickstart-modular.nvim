return {
  {
    'L3MON4D3/LuaSnip',
    build = 'make install_jsregexp', -- это если хочешь поддержку regexp в сниппетах (не обязательно)
    dependencies = {
      'rafamadriz/friendly-snippets', -- вот этот плагин подключаем сюда
    },
    config = function()
      require('luasnip.loaders.from_vscode').lazy_load() -- загружаем сниппеты
    end,
  },
}
