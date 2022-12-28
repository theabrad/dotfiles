require 'nvim-treesitter.configs'.setup {
  -- a list of parser names
  ensure_installed = { "help", "javascript", "typescript", "c", "lua", "rust", "ruby", "python" },

  -- install parsers synchronously
  sync_install = false,

  -- automatically install missing parsers when entering buffer
  auto_install = true,

  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
}
