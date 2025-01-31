return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup()
    local builtin = require('telescope.builtin')

    --set keymaps
    local keymap = vim.keymap
    keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
    keymap.set('n', '<leader>sh', builtin.help_tags, { desc = '[S]earch [H]elp' })
    keymap.set('n', '<leader>sw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
    keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
    keymap.set('n', '<leader>sb', builtin.buffers, { desc = '[S]earch by [B]uffer' })
    keymap.set('n', '<leader>sc', builtin.colorscheme, { desc = '[S]earch by [C]olorscheme' })
    keymap.set('n', '<leader>sd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
    keymap.set('n', '<C-p>', builtin.git_files, {})
  end
}
