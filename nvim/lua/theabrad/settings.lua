vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.shiftround = true
vim.o.expandtab = true

vim.o.termguicolors = true

vim.o.swapfile = false

vim.wo.number = true

vim.o.mouse = 'a'

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.clipboard = 'unnamedplus'

-- disable netrw for now
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- diagnostics
-- vim.diagnostic.config({ virtual_lines = true })
vim.diagnostic.config(({
  virtual_lines = { current_line = true }
}))
