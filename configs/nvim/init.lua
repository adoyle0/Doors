-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Install `lazy.nvim` plugin manager ]]
require 'lazy-bootstrap'

-- [[ Configure plugins ]]
require 'lazy-plugins'

-- [[ Setting options ]]
require 'options'

-- [[ Basic Keymaps ]]
require 'keymaps'

-- [[ Configure Telescope ]]
-- (fuzzy finder)
require 'telescope-setup'

-- [[ Configure Treesitter ]]
-- (syntax parser for highlighting)
require 'treesitter-setup'

-- [[ Configure LSP ]]
-- (Language Server Protocol)
require 'lsp-setup'

-- [[ Configure nvim-cmp ]]
-- (completion)
require 'cmp-setup'

-- Reverse some of the theme
function AddTransparency()
  -- These are known wanted
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
  vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })
  vim.api.nvim_set_hl(0, "GitSignsAdd", { bg = "none" })
  vim.api.nvim_set_hl(0, "GitSignsChange", { bg = "none" })
  vim.api.nvim_set_hl(0, "GitSignsDelete", { bg = "none" })
  vim.api.nvim_set_hl(0, "MsgArea", { bg = "none" })
  vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })

  -- idk what these are yet

  -- vim.api.nvim_set_hl(0, "StatusLineNC", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "StatusLine", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "ModeMsg", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "MsgSeparator", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspReferenceText", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspReferenceRead", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspReferenceWrite", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "WildMenu", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Folded", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "FoldColumn", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "CursorColumn", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NormalInactive", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "VisualNOS", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "WarningMsg", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "QuickFixLine", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Cursor", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "lCursor", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "CursorIM", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TermCursor", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TermCursorNC", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Conceal", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "ErrorMsg", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Ignore", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Todo", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "Error", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TabLine", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TabLineSel", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TabLineFill", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspTroubleCount", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspTroubleNormal", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "illuminatedWord", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "illuminatedCurWord", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NeogitHunkHeader", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NeogitHunkHeaderHighlight", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NeogitDiffContextHighlight", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NeogitDiffDeleteHighlight", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NeogitDiffAddHighlight", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "TelescopeSelection", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "IblIndent", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "NvimTreeStatusLineNC", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "ScrollbarHandle", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "LspFloatWinNormal", { bg = "red" })
  -- vim.api.nvim_set_hl(0, "BufferLineFill", { bg = "red" })
end

AddTransparency()

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
