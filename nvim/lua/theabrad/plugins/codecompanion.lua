return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "j-hui/fidget.nvim",
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  config = function()
    local default_model = "google/gemini-2.5-flash"
    local available_models = {
      "anthropic/claude-sonnet-4",
      "anthropic/claude-3.7-sonnet",
      "anthropic/claude-3.5-sonnet",
      "google/gemini-2.5-flash",
      "google/gemini-2.5-pro",
      "openai/gpt-4o-mini",
    }
    local current_model = default_model

    local function select_model()
      vim.ui.select(available_models, {
        prompt = "Select Model:",
      }, function(choice)
        if choice then
          current_model = choice
          vim.notify("Model set to: " .. current_model, vim.log.levels.INFO)
        else
          vim.notify("No model selected, using default: " .. default_model, vim.log.levels.WARN)
        end
      end)
    end

    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "openrouter",
          keymaps = {
            submit = {
              modes = { n = '<CR>'},
              description = "Submit",
              callback = function(chat)
                chat:apply_model(current_model)
                chat:submit()
              end,
            },
          },
        },
        inline = {
          adapter = "openrouter",
        },
      },
      adapters = {
        openrouter = function()
          return require("codecompanion.adapters").extend("openai_compatible", {
            env = {
              url = "https://openrouter.ai/api",
              api_key = "OPENROUTER_API_KEY",
              chat_url = "/v1/chat/completions",
            },
            schema = {
              model = {
                default = current_model,
              },
            },
          })
        end,
      },
      display = {
        diff = {
          enabled = true,
          close_chat_at = 240,
          layout = "vertical",
          opts = { "internal", "filler", "closeoff", "algorithm:patience", "followwrap", "linematch:120" },
          provider = "mini_diff",
        },
      },
    })

    vim.keymap.set({"n", "v"}, "<leader>ck", "<cmd>CodeCompanionActions<cr>", { noremap = true, silent = true})
    vim.keymap.set({"n", "v"}, "<leader>a", "<cmd>CodeCompanionChat Toggle<cr>", { noremap = true, silent = true})
    vim.keymap.set("n", "<leader>cs", select_model, { desc = "Select AI Model"})
    -- Expand 'cc' into 'CodeCompanion' in the command line
    vim.cmd([[cab cc CodeCompanion]])
  end,
}
