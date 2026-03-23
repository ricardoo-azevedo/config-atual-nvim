return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	config = function()
		local wk = require("which-key")

		wk.add({

			{ "<leader>e", desc = "explorer" },
			{ "<leader>E", desc = "reveal file" },

			{ "<leader>c", group = "code" },
			{ "<leader>ca", desc = "code actions" },
			{ "<leader>ch", desc = "hover documentation" },

			{ "<leader>f", group = "find" },
			{ "<leader>fg", desc = "live grep" },

			{ "<leader>g", group = "git" },
			{ "<leader>gA", desc = "git add all" },
			{ "<leader>ga", desc = "git add file" },
			{ "<leader>gb", desc = "git blame" },
			{ "<leader>gc", desc = "git commit" },
			{ "<leader>gp", desc = "git push" },

			{ "<leader>h", group = "git hunks" },
			{ "<leader>hs", desc = "stage hunk" },
			{ "<leader>hr", desc = "reset hunk" },
			{ "<leader>hS", desc = "stage buffer" },
			{ "<leader>hR", desc = "reset buffer" },
			{ "<leader>hp", desc = "preview hunk" },
			{ "<leader>hi", desc = "preview inline" },
			{ "<leader>hb", desc = "blame line" },
			{ "<leader>hd", desc = "diff" },
			{ "<leader>hD", desc = "diff HEAD~" },
			{ "<leader>hq", desc = "quickfix hunks" },
			{ "<leader>hQ", desc = "quickfix all hunks" },

			{ "<leader>t", group = "terminal / timer" },
			{ "<leader>tt", desc = "new terminal" },
			{ "<leader>tn", desc = "next terminal" },
			{ "<leader>tp", desc = "previous terminal" },

			{ "<leader>tb", group = "pomodoro" },
			{ "<leader>tbc", desc = "custom timer" },
			{ "<leader>tbs", desc = "start pomodoro" },
			{ "<leader>tbe", desc = "stop timer" },
			{ "<leader>tbp", desc = "pause resume" },
			{ "<leader>tbn", desc = "next cycle" },
			{ "<leader>tbb", desc = "previous cycle" },

			{ "<leader>tw", desc = "toggle word diff" },
		})
	end,
}
