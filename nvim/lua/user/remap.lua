-- Change leader to space
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeOpen)
vim.keymap.set("n", "<leader>pt", vim.cmd.NvimTreeToggle)
-- Move lines
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Friendlier window
vim.keymap.set("n", "<leader>w", "<C-w>")
vim.keymap.set("n", "<leader>w<leader>w", "<C-w><C-w>")
