local M = {}

M.themes = {
  gruvbox = "gruvbox",
  kanagawa = "kanagawa",
  catpuccin = "catppuccin",
}

M.current = M.themes.gruvbox

-- Set a new theme
function M.set(theme)
  vim.cmd.colorscheme(theme)
  M.current = theme
  vim.schedule(function()
    vim.notify("Colorscheme set to " .. theme, vim.log.levels.INFO)
  end)
end

-- toggle tussen kanagawa en gruvbox
function M.toggle()
  if M.current == M.themes.kanagawa then
    M.set(M.themes.gruvbox)
  else
    M.set(M.themes.kanagawa)
  end
end

-- keybind om te togglen (bv. <leader>tc)
vim.keymap.set("n", "<leader>tcs", function()
  M.toggle()
end, { desc = "Toggle colorscheme" })

-- initial load
M.set(M.current)

return M
