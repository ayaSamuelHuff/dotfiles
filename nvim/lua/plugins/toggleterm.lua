local M = {
    "akinsho/nvim-toggleterm.lua",
    cmd = "ToggleTerm",
    keys = "<C-n>",
    config = function()
        local buf_map = vim.api.nvim_buf_set_keymap

        require("toggleterm").setup({
            size = function(term)
                if term.direction == "horizontal" then
                    return 15
                elseif term.direction == "vertical" then
                    return vim.o.columns * 0.4
                end
            end,
            open_mapping = "<C-n>",
            shading_factor = "1",
            direction = "float",
            autochdir = true,
        })

        local opts = { noremap = true }

        local set_terminal_keymaps = function()
            buf_map(0, "t", "<esc>", [[<C-\><C-n>]], opts)
            buf_map(0, "t", "<C-h>", [[<C-\><C-n><C-W>h]], opts)
            buf_map(0, "t", "<C-j>", [[<C-\><C-n><C-W>j]], opts)
            buf_map(0, "t", "<C-k>", [[<C-\><C-n><C-W>k]], opts)
            buf_map(0, "t", "<C-l>", [[<C-\><C-n><C-W>l]], opts)
        end
    end
}

return M
