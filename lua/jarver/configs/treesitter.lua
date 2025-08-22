local M = {}
local parsers = { "rust", "lua", "just", "html" }

M.setup = function()
  local ts = require("nvim-treesitter")
  ts.install(parsers)

  -- enable TS features per filetype
  local aug = vim.api.nvim_create_augroup("JarverTS", { clear = true })
  vim.api.nvim_create_autocmd("FileType", {
    group = aug,
    pattern = parsers,
    callback = function()
      -- start treesitter highlight
      vim.treesitter.start()

      -- folds with TS
      vim.wo.foldmethod = "expr"
      vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"

      -- indent with TS
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
  })
end

M.setup()

return M
