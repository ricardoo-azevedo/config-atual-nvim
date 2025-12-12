return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },

  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "vimls", "html", "cssls" },
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      -- nova API nvim 0.11+: vim.lsp.config
      vim.lsp.config("lua_ls", {})
      vim.lsp.config("vimls", {})
      vim.lsp.config("html", {})
      vim.lsp.config("cssls", {})
      vim.lsp.config("bashls", {})
      vim.lsp.config("rust_analyzer", {})
      vim.lsp.config("ast_grep", {})

      -- keymaps continuam iguais
      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
      vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "[C]ode [H]over documentation" })
    end,
  },
}
