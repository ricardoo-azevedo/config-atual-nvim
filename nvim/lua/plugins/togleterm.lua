return {
	"akinsho/toggleterm.nvim",
	config = function()
		local toggleterm = require("toggleterm")
		toggleterm.setup({
			direction = "horizontal",
			shade_terminals = false,

			size = 15,
		})

		local Terminal = require("toggleterm.terminal").Terminal

		local spotify = Terminal:new({
			cmd = "ncspot",
			direction = "horizontal",
			hidden = true,
		})

		vim.keymap.set("n", "<leader>sp", function()
			spotify:toggle()
		end, { desc = "Spotify terminal" })

		local function new_term()
			Terminal:new():toggle()
		end
		vim.keymap.set("n", "<leader>tt", new_term, { desc = "Novo terminal" })

		vim.keymap.set("n", "<leader>1", "<cmd>ToggleTerm 1<CR>", { desc = "Terminal 1" })
		vim.keymap.set("n", "<leader>2", "<cmd>ToggleTerm 2<CR>", { desc = "Terminal 2" })
		vim.keymap.set("n", "<leader>3", "<cmd>ToggleTerm 3<CR>", { desc = "Terminal 3" })

		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Sair do modo terminal" })
		vim.keymap.set("n", "<leader>tn", function()
			vim.cmd("ToggleTerm direction=horizontal")
		end, { desc = "Próximo terminal" })

		vim.keymap.set("n", "<leader>tp", function()
			vim.cmd("ToggleTerm direction=horizontal")
		end, { desc = "Terminal anterior" })
	end,
}
