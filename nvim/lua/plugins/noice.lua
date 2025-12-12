
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    -- "rcarriga/nvim-notify", -- opcional, para notificações
  },
  opts = {
    cmdline = {
      view = "cmdline", -- popup no topo
      position = {
        row = 0, -- topo da tela
        col = "50%", -- centralizado horizontalmente (funciona se noice aceitar %)
      },
    },
    -- outras opções do noice
    -- ex: messages = { view = "mini" },
  },
}
