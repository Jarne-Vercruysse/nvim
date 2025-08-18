local aug = vim.api.nvim_create_augroup("JarverCore", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
	group = aug,
	desc = "Highlight when yanking text",
	callback = function()
		vim.highlight.on_yank()
	end,
})
