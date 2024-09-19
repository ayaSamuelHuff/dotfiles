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
    { "<leader>h", group = "Harpoon" },
    { "<leader>ha", desc = "Add File" },
    { "<leader>hv", desc = "Open harpoon window" }, 
    { "<leader>hf", desc = "Open jump list" },
    { "<leader>hk",  desc = "Previous" },
    { "<leader>hj", desc =  "Next" },
    { "<leader>hu",  desc =  "Select 1" },
    { "<leader>hi",  desc =  "Select 2" },
    { "<leader>ho",  desc =  "Select 3" },
    { "<leader>hp",  desc =  "Select 4" }, 
}, {mode = 'n', prefix = "<leader>" })

vim.keymap.set('n', '<leader>ha', function()
    harpoon:list():add()
end)
vim.keymap.set('n', '<leader>hv', function() 
    toggle_telescope(harpoon:list()) 
end)
vim.keymap.set('n', '<leader>hf', function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)
vim.keymap.set('n', '<leader>hk', function()
    harpoon:list():prev()
end)
vim.keymap.set('n', '<leader>hj', function()
    harpoon:list():next()
end)
vim.keymap.set('n', '<leader>hu', function()
    harpoon:list():select(1)
end)
vim.keymap.set('n', '<leader>hi', function()
    harpoon:list():select(2)
end)
vim.keymap.set('n', '<leader>ho', function()
    harpoon:list():select(3)
end)
vim.keymap.set('n', '<leader>hp', function()
    harpoon:list():select(4)
end)
