function ColorMyPencils(color)
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    local color = 'tokyonight'
    if vim.fn.has('linux')
    then
      ColorMyPencils(color)
    else
      vim.cmd.colorscheme(color)
    end
  end,
}
