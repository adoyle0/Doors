return {
  {
    'RedsXDD/neopywal.nvim',
    name = 'neopywal',
    lazy = false,
    cond = os.execute('test -f ~/.cache/wal/colors-wal.vim') == 0,
    priority = 1000,
    opts = {},
    config = function()
      vim.cmd.colorscheme 'neopywal'
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      options = {
        icons_enabled = false,
        theme = 'neopywal',
        component_separators = '|',
        section_separators = '',
      },
    },
  },
}
