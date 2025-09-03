local M = {}

M.setup = function()
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      yaml = { "yamlfmt" },
      javascriptreact = { "prettierd" },
    },

    format_on_save = {
      -- I recommend these options. See :help conform.format for details.
      lsp_format = "fallback",
      timeout_ms = 500,
    },
  })
end

M.setup()

return M
