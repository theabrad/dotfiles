vim.g.mapleader = " "

-- NvimTree
vim.keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>")


-- Be able to move text with Shift J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
