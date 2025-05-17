return {
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    formatters_by_ft = {
      bash = { 'shellharden', 'beautysh' },
      css = { 'prettierd', 'prettier', stop_after_first = true },
      html = { 'htmlbeautifier' },
      javascript = { 'prettierd', 'prettier', stop_after_first = true },
      javascriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      json = { 'prettierd', 'prettier', stop_after_first = true },
      lua = { 'stylua' },
      markdown = { 'prettierd', 'prettier', stop_after_first = true },
      python = { 'isort', 'black' },
      rust = { 'leptosfmt', 'rustfmt' },
      scss = { 'prettierd', 'prettier', stop_after_first = true },
      sh = { 'shellharden', 'beautysh' },
      toml = { 'taplo' },
      typescript = { 'prettierd', 'prettier', stop_after_first = true },
      typescriptreact = { 'prettierd', 'prettier', stop_after_first = true },
      yaml = { 'yamlfix' },
      zsh = { 'shellharden', 'beautysh' },
    },
  },
  keys = {
    {
      '<leader>f',
      function()
        require('conform').format { async = true, lsp_format = 'fallback' }
      end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
}
