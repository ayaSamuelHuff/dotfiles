local harpoon = require("harpoon")
local wk = require("which-key")

harpoon:setup()

-- basic telescope configuration
local conf = require("telescope.config").values
local function toggle_telescope(harpoon_files)
    local file_paths = {}
    for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
    end

    require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder= require("telescope.finders").new_table({
            results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
    }):find()
end

wk.add({
    { "<leader>f", group = "Quick Files" },
    { "<leader>fa", desc = "add" },
    { "<leader>fv", desc = "Open harpoon window" }, 
    { "<leader>ff", desc = "Open jump list" },
    { "<leader>fk",  desc = "previous" },
    { "<leader>fj", desc =  "next" },
    { "<leader>fu",  desc =  "Select 1" },
    { "<leader>fi",  desc =  "Select 2" },
    { "<leader>fo",  desc =  "Select 3" },
    { "<leader>fp",  desc =  "Select 4" }, 
}, {mode = 'n', prefix = "<leader>" })

vim.keymap.set('n', '<leader>fa', function()
    harpoon:list():add()
end)
vim.keymap.set('n', '<leader>fv', function() 
    toggle_telescope(harpoon:list()) 
end)
vim.keymap.set('n', '<leader>ff', function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set('n', '<leader>fk', function()
    harpoon:list():prev()
end)
vim.keymap.set('n', '<leader>fj', function()
    harpoon:list():next()
end)
vim.keymap.set('n', '<leader>fu', function()
    harpoon:list():select(1)
end)
vim.keymap.set('n', '<leader>fi', function()
    harpoon:list():select(2)
end)
vim.keymap.set('n', '<leader>fo', function()
    harpoon:list():select(3)
end)
vim.keymap.set('n', '<leader>fp', function()
    harpoon:list():select(4)
end)
