-- Make line numbers default and relative
vim.o.nu = true
vim.o.rnu = true

-- 4 space tabs
vim.o.ts = 4
vim.o.sts = 4
vim.o.sw = 4
vim.o.et = true

-- Set highlight on search
vim.o.hls = false

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.cb = 'unnamedplus'

-- Enable break indent
vim.o.bri = true

-- Save undo history
vim.o.udir = os.getenv 'HOME' .. '/.vim.undodir'
vim.o.udf = true

-- Keep cursor 8 lines from top/bottom
vim.o.so = 8

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ic = true
vim.o.scs = true

-- Keep signcolumn on by default
vim.wo.scl = 'yes'

-- Decrease update time
vim.o.ut = 250
vim.o.tm = 300

-- Set completeopt to have a better completion experience
vim.o.cot = 'menuone,noselect'
