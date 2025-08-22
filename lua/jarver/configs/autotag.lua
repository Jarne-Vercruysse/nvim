local M = {}

M.setup = function()
  -- Always add the parser to configs.treesitter.lua otherwise no autotag
  require("nvim-ts-autotag").setup({
    opts = { enable_close_on_slash = true },
  })
end

M.setup()

return M
