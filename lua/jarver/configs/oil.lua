local map = vim.keymap.set

require("oil").setup({
	columns = { "icon" },
	lsp_file_methods = { autosave_changes = true },
	view_options = { show_hidden = true },

	-- Open parent directory in current window
	map("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" }),
	-- Open parent directory in floating window
	map("n", "<space>-", require("oil").toggle_float),
})
