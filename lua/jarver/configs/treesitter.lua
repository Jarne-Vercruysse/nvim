local M = {}
local parsers = { "rust", "lua", "just", "html", "css", "javascript", "typescript" }

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

      -- -- Voeg filetype-detectie voor JSX/TSX toe
      -- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      --   pattern = { "*.jsx" },
      --   command = "set filetype=javascriptreact",
      -- })
      -- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
      --   pattern = { "*.tsx" },
      --   command = "set filetype=typescriptreact",
      -- })
    end,
  })

  -- Voeg een keybind toe om vim.treesitter.start() handmatig te triggeren
  vim.keymap.set("n", "<leader>rt", ":lua vim.treesitter.start()<CR>", { noremap = true, silent = true })
end

M.setup()

return M
