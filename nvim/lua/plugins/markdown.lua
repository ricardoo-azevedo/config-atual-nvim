return {
	"iamcco/markdown-preview.nvim",
	ft = { "markdown" },
	build = "cd app && npm install",
	config = function()
		vim.keymap.set("n", "<leader>mp", ":MarkdownPreview<CR>", { desc = "Markdown Preview" })
		vim.keymap.set("n", "<leader>ms", ":MarkdownPreviewStop<CR>", { desc = "Markdown Preview Stop" })
		vim.keymap.set("n", "<leader>mt", ":MarkdownPreviewToggle<CR>", { desc = "Markdown Toggle" })
	end,
}
