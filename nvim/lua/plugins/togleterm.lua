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

		-- cria sempre um terminal novo
		local function new_term()
			Terminal:new():toggle()
		end
		vim.keymap.set("n", "<leader>tt", new_term, { desc = "Novo terminal" })

		-- alternar entre terminais já abertos
		vim.keymap.set("n", "<leader>1", "<cmd>ToggleTerm 1<CR>", { desc = "Terminal 1" })
		vim.keymap.set("n", "<leader>2", "<cmd>ToggleTerm 2<CR>", { desc = "Terminal 2" })
		vim.keymap.set("n", "<leader>3", "<cmd>ToggleTerm 3<CR>", { desc = "Terminal 3" })

		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]], { desc = "Sair do modo terminal" })
		-- mover para próximo/anteriores (mais dinâmico)
		vim.keymap.set("n", "<leader>tn", function()
			vim.cmd("ToggleTerm direction=horizontal")
		end, { desc = "Próximo terminal" })

		vim.keymap.set("n", "<leader>tp", function()
			vim.cmd("ToggleTerm direction=horizontal")
		end, { desc = "Terminal anterior" })
	end,
}
