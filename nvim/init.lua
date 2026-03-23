vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config.lazy")

vim.o.swapfile = false

vim.o.backup = false
vim.o.writebackup = false

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.statuscolumn = " %l%=%s"
vim.opt.fillchars = "eob: "

local hover = function()
  vim.lsp.buf.hover()
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "NONE" })
  vim.api.nvim_set_hl(0, "FloatBorder", { bg = "NONE" })
end

vim.keymap.set("n", "<leader>ch", hover, { desc = "[C]ode [H]over documentation" })

vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

vim.keymap.set("n", "<C-h>", ":leftabove vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-l>", ":rightbelow vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-j>", ":rightbelow split<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-k>", ":leftabove split<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<A-h>", "<C-w>h", { noremap = true, silent = true })
vim.keymap.set("n", "<A-l>", "<C-w>l", { noremap = true, silent = true })
vim.keymap.set("n", "<A-j>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", "<C-w>k", { noremap = true, silent = true })


-- vim.keymap.set("n", "<leader>e", ":Ex<CR>")

-- vim.keymap.set("n", "<leader>e", ":Neotree reveal<CR>", { silent = true })
vim.opt.clipboard = "unnamedplus"
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "d", '"_d')
vim.keymap.set("v", "d", '"_d')


-- vim.cmd("colorscheme silverhand")
-- vim.cmd.colorscheme("darkearth")
vim.cmd.colorscheme("oasis-night")

vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.breakindent = true

-- vim.cmd([[
-- hi Normal guibg=NONE ctermbg=NONE
-- hi NormalNC guibg=NONE ctermbg=NONE
-- hi EndOfBuffer guibg=NONE ctermbg=NONE
-- hi SignColumn guibg=NONE ctermbg=NONE
-- hi VertSplit guibg=NONE ctermbg=NONE
-- hi StatusLine guibg=NONE ctermbg=NONE
-- hi StatusLineNC guibg=NONE ctermbg=NONE
-- hi MsgArea guibg=NONE ctermbg=NONE
-- hi TelescopeNormal guibg=NONE ctermbg=NONE
-- hi FloatBorder guibg=NONE ctermbg=NONE
-- hi NormalFloat guibg=NONE ctermbg=NONE
-- hi Pmenu guibg=NONE ctermbg=NONE
-- hi PmenuSel guibg=NONE ctermbg=NONE
-- hi WinSeparator guibg=NONE ctermbg=NONE
-- hi TermFloat guibg=NONE ctermbg=NONE
-- ]])
