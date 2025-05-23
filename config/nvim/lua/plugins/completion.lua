return {
  -- 'hrsh7th/cmp-path',
  -- { 'hrsh7th/cmp-nvim-lsp', opts = {} },
  -- 'saadparwaiz1/cmp_luasnip',
  {
    'saghen/blink.cmp',
    event = 'VimEnter',
    version = '1.*', -- keep this pinned for rust fuzzy finder
    dependencies = {
      -- Snippet Engine
      {
        'L3MON4D3/LuaSnip',
        version = '2.*', -- keep this pinned for rust fuzzy finder
        build = 'make install_jsregexp',
        dependencies = {
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require('luasnip.loaders.from_vscode').lazy_load()
            end,
          },
        },
        opts = {},
      },
      'folke/lazydev.nvim',
    },
    --- @module 'blink.cmp'
    --- @type blink.cmp.Config
    opts = {
      completion = {
        documentation = { auto_show = true, auto_show_delay_ms = 500 },
      },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'lazydev' },
        providers = {
          lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 },
        },
      },
      snippets = { preset = 'luasnip' },
      fuzzy = { implementation = 'prefer_rust' },

      -- Shows a signature help window while you type arguments for a function
      signature = { enabled = true },
    },
  },
}
