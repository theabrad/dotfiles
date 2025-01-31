return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "folke/lazydev.nvim",
  },
  config = function()
    local nvim_lsp = require("lspconfig")
    local mason_lspconfig = require("mason-lspconfig")

    local protocol = require("vim.lsp.protocol")

    local on_attach = function(client, bufnr)
      -- format on save
      if client.server_capabilities.documentFormattingProvider then
        vim.api.nvim_create_autocmd("BufWritePre", {
          group = vim.api.nvim_create_augroup("Format", { clear = true }),
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format()
          end,
        })
      end


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
    end

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    mason_lspconfig.setup_handlers({
      function(server)
        nvim_lsp[server].setup({
          capabilities = capabilities,
        })
      end,
      ["ts_ls"] = function()
        nvim_lsp["ts_ls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["eslint"] = function()
        nvim_lsp["eslint"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["lua_ls"] = function()
        nvim_lsp["lua_ls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })
      end,
      ["rust_analyzer"] = function()
        nvim_lsp["rust_analyzer"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["gopls"] = function()
        nvim_lsp["gopls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["pyright"] = function()
        nvim_lsp["pyright"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["solargraph"] = function()
        nvim_lsp["solargraph"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["html"] = function()
        nvim_lsp["html"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
      ["cssls"] = function()
        nvim_lsp["cssls"].setup({
          on_attach = on_attach,
          capabilities = capabilities,
        })
      end,
    })
  end
}
