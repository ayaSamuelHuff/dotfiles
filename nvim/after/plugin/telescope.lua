local builtin = require('telescope.builtin')
local wk = require('which-key')

wk.add({
    {"<leader>p", group = "File Explorer"},
    {"<leader>pf", desc = "Find by Name" },
    {"<leader>ps", desc = "Grep Search" },
    {"<leader>pv", desc = "view" },
}, { mode = 'n'  })

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({search = vim.fn.input("Grep > ") });
end)
