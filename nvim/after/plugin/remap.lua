local wk = require('which-key')

wk.add({
    {"<leader>w", group = "Window"},
    {"<leader>ws", desc = "Split horizontal"},
    {"<leader>wv", desc = "Split vertical"},
    {"<leader>w<leader>w", desc = "Switch"},
    {"<leader>wq", desc = "Close current"},
    {"<leader>wj", desc = "Switch adjacent down"},
    {"<leader>wk", desc = "Switch adjacent up"},
    {"<leader>wl", desc = "Switch adjacent right"},
    {"<leader>wh", desc = "Switch adjacent left"},
}, { mode = 'n' })
