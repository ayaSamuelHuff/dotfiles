require('nvim-treesitter.configs').setup {
    ensure_installed = { "dart", "javascript", "typescript", "vim", "vimdoc", "query", "c_sharp" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
    },
}
