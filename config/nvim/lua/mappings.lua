require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")

map({"n", "t"}, "<C-Up>", "<cmd>resize -2<CR>")
map({"n", "t"}, "<C-Down>", "<cmd>resize +2<CR>")
map({"n", "t"}, "<C-Left>", "<cmd>vertical resize -2<CR>")
map({"n", "t"}, "<C-Right>", "<cmd>vertical resize +2<CR>")

map("v", "J", ":m '>+1<CR>gv=gv")
map("v", "K", ":m '<-2<CR>gv=gv")

map("v", "H", "<gv")
map("v", "L", ">gv")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
