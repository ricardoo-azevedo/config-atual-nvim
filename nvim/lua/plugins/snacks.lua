return {
  {
    "folke/snacks.nvim",
    opts = {
      explorer = {
        replace_netrw = true,  -- substitui netrw automaticamente
        trash = true,          -- usa lixeira do sistema
      },
      picker = {
        sources = {
          explorer = {}        -- config default do picker
        }
      }
    },
    config = function()
      local Snacks = require("snacks")

      -- Keymaps para abrir o explorer
      vim.keymap.set("n", "<leader>e", function()
        Snacks.explorer.open()
      end, { desc = "Open Snacks Explorer" })

      vim.keymap.set("n", "<leader>E", function()
        Snacks.explorer.reveal()
      end, { desc = "Reveal current buffer in Explorer" })
    end
  }
}
