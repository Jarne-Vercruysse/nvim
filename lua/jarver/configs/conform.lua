local M = {}

M.setup = function()
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      yaml = { "yamlfmt" },
      javascriptreact = { "prettierd" },
      javascript = { "prettierd" },
      rust = { lsp_format = "first", "rustfmt" },
    },

    format_on_save = {
      timeout_ms = 500,
      lsp_format = "fallback",
    },
  })

  vim.keymap.set({ "n", "v" }, "<leader>f", function()
    require("conform").format({
      bufnr = vim.api.nvim_get_current_buf(),
      async = true,
      lsp_format = "fallback",
      timeout_ms = 500,
    })
  end, { desc = "Format file" })
end

M.setup()

return M
