local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'tsserver',
  'eslint',
  'sumneko_lua',
  'rust_analyzer',
  'gopls',
  'pyright',
  'solargraph'
})

-- Fix Undefined global "vim"
lsp.configure('sumneko_lua', {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
})

lsp.on_attach(function(_, bufnr)
  local nmap = function(keys, func, desc)
    if desc then
      desc = 'LSP: ' .. desc
    end

    vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
  end

  nmap("<leader>rn", vim.lsp.buf.rename, '[R]e[n]ame')
  nmap("<leader>ca", vim.lsp.buf.code_action, '[C]ode [A]ction')

  nmap("gd", vim.lsp.buf.definition, '[G]oto [D]efinition')
  nmap("gr", require('telescope.builtin').lsp_references, '[G]oto [R]eferences')
  nmap("gI", vim.lsp.buf.implementation, '[G]oto [I]mplementation')
  nmap("<leader>D", vim.lsp.buf.type_definition, '[T]ype [D]efinition')
  nmap("K", vim.lsp.buf.hover, 'Hover Documentation')
  nmap("<C-k>", vim.lsp.buf.signature_help, 'Signature Documentation')
  nmap("[d", vim.diagnostic.goto_next, 'Go to Next Diagnostic')
  nmap("]d", vim.diagnostic.goto_prev, 'Go to Previous Diagnostic')
end)

lsp.setup()

vim.diagnostic.config({
  virtual_text = true,
})
