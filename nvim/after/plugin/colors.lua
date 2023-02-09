require("tokyonight").setup({
  style = "storm",
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
  },
})

function ColorMyPencils(color)
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

end

local color = "tokyonight"

-- use if using material
-- vim.g.material_style = "palenight"
--
if vim.fn.has('linux')
then
  ColorMyPencils(color)
else
  vim.cmd.colorscheme(color)
end
