vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true

vim.o.termguicolors = true
vim.cmd("colorscheme duskfox")

vim.o.swapfile = false

vim.wo.number = true

vim.o.mouse = 'a'

vim.o.ignorecase = true
vim.o.smartcase = true

-- disable netrw for now
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- netrw settings
vim.g.netrw_banner = 0
vim.g.netrw_keepdir = 0
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 30
vim.g.netrw_browse_split = 4
vim.g.netrw_altv = 1
