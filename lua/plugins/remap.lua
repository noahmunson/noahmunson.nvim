local map = vim.keymap.set

map("n", "<Space>", "<Nop>", { silent = true })

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<Esc>", "<cmd>nohlsearch<CR>")

map("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

map("n", "<left>", "<cmd>echo 'Use hjkl to move'<CR>")
map("n", "<right>", "<cmd>echo 'Use hjkl to move'<CR>")
map("n", "<down>", "<cmd>echo 'Use hjkl to move'<CR>")
map("n", "<up>", "<cmd>echo 'Use hjkl to move'<CR>")

map("i", "<C-h>", "<Left>")
map("i", "<C-j>", "<Down>")
map("i", "<C-k>", "<Up>")
map("i", "<C-l>", "<Right>")

map("n", "<C-h>", "<C-w>h", { desc = "switch window left" })
map("n", "<C-j>", "<C-w>j", { desc = "switch window down" })
map("n", "<C-k>", "<C-w>k", { desc = "switch window up" })
map("n", "<C-l>", "<C-w>l", { desc = "switch window right" })

map("n", "<leader>e", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window"})

map({ "n", "t" }, "<C-i>", function()
    require("nvterm.terminal").toggle "float"
end, { desc = "Toggle floating terminal "})