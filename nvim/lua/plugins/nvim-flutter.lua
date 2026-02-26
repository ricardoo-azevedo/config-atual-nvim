return {
  {
    "nvim-flutter/flutter-tools.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("flutter-tools").setup({
        ui = {
          border = "rounded",
        },
        decorations = {
          statusline = {
            app_version = true,
            device = true,
          },
        },
        debugger = {
          enabled = false,
        },
        lsp = {
          color = {
            enabled = true,
          },
          settings = {
            showTodos = true,
            completeFunctionCalls = true,
            analysisExcludedFolders = {
              vim.fn.expand("$HOME/.pub-cache"),
              vim.fn.expand("$HOME/flutter"),
            },
          },
          on_attach = function(client, bufnr)
            local opts = { buffer = bufnr, silent = true }

            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)

            vim.keymap.set("n", "<leader>oi", function()
              vim.lsp.buf.code_action({
                context = {
                  only = { "source.organizeImports" },
                },
                apply = true,
              })
            end, opts)
          end,
        },
      })
    end,
  },
}
