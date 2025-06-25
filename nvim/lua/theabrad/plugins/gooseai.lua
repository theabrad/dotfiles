return {
  'azorng/goose.nvim',
  config = function()
    require('goose').setup({
      prefered_picker = 'telescope',
      default_global_keymaps = true,
      providers = {
        openrouter = {
          'anthropic/claude-3.5-sonnet',
        },
      },
    })
  end,
  dependencies = {
    'nvim-lua/plenary.nvim',
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
      }
    }
  },
}
