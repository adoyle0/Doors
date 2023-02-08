require'nvim-treesitter.configs'.setup {
    ensure_installed = { "help", "javascript", "typescript", "python", "c", "lua", "rust" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
    indent = {
        enable = true,
        disable = {'python',}
    },
}
