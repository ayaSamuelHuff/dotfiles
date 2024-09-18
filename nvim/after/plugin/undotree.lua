local wk = require('which-key')

wk.add({
    { "<leader>u", desc = "Toggle UndoTree"}
}, { mode = "n" })

vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
