-- -- return {
-- --   "metalelf0/black-metal-theme-neovim",
-- --   lazy = false,
-- --   priority = 1000,
-- --   config = function()
-- --     require("black-metal").setup({
-- --       -- optional configuration here
-- --     })
-- --     require("black-metal").load()
-- --   end,
-- -- }
-- return {
--   'thedenisnikulin/vim-cyberpunk'
-- }
-- -- return {
-- --     "ptdewey/darkearth-nvim",
-- --     priority = 1000,
-- -- }
--
return {
  "uhs-robert/oasis.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("oasis").setup()      -- (see Configuration below for all customization options)
    vim.cmd.colorscheme("oasis")  -- After setup, apply theme (or any style like "oasis-night")
  end
}
