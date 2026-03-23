return {
	"Lachignol/time-bomb.nvim",
	config = function()
		require("time-bomb").setup({
			enable_default_keymaps = true,

			-- If you want overload with custom keymaps don't set enable_default_keymaps at false.
			keymaps = {
				timer_custom = "<leader>tbc", -- Custom timer
				pomodoro_start = "<leader>tbs", -- Start Pomodoro
				stop_timer = "<leader>tbe", -- Stop timer
				pause_timer = "<leader>tbp", -- Pause/Resume
				next_timer = "<leader>tbn", -- Next cycle
				prev_timer = "<leader>tbb", -- Previous cycle
			},

			pomodoro_cycles = {
				{ title = "Work", time = "30", style = "cyberpunk" }, -- Time in minute*
				{ title = "Short-Break", time = "5", style = "cyberpunk" },
				{ title = "Work", time = "25", style = "cyberpunk" },
				{ title = "Short-Break", time = "5", style = "cyberpunk" },
				{ title = "Work", time = "20", style = "cyberpunk" },
				{ title = "Long-Break", time = "15", style = "cyberpunk" },
			},
			-- *Time must be upper than 1 min and less than 1440 min (1 day)
			timer_color = "white", -- lime, blue, black, gray, silver, white, fuchsia
			enable_notification = true, -- System notifications
		})
	end,
}
