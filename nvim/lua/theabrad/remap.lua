vim.g.mapleader = " "

-- netrw stuff
-- vim.keymap.set("n","<leader>nn", vim.cmd.Ex)
-- vim.keymap.set("n","<leader>dd", ":Lexplore %:p:h<CR>")

-- NvimTree
vim.keymap.set("n", "<leader>nn", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ff", ":NvimTreeFindFile<CR>")


-- Be able to move text with Shift J or K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
