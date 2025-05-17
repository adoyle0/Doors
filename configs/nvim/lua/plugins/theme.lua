return {
  'RedsXDD/neopywal.nvim',
  name = 'neopywal',
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    vim.cmd.colorscheme 'neopywal'
  end,
  dependencies = {
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
