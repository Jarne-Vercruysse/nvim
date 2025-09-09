-- https://github.com/ibhagwan/fzf-lua
local M = {}
local map = vim.keymap.set

M.setup = function()
  require("fzf-lua").setup({
    winopts = {
      fullscreen = false,
    },
  })

  map("n", "<leader>sf", require("fzf-lua").files)
  map("n", "<leader>sb", require("fzf-lua").buffers)
  map("n", "<leader>sg", require("fzf-lua").grep)
  map("n", "<leader>sc", function()
    require("fzf-lua").files({ cwd = "~/.config/nvim-min/" })
    -- This would make sure it works on any OS guess we will see
    --require("fzf-lua").files({ cwd = vim.fn.expand("~/.config/nvim-min/") })
  end)

  -- [[LSP]]
  map("n", "<leader>lr", require("fzf-lua").lsp_references)
  map("n", "<leader>ld", require("fzf-lua").lsp_definitions)
  map("n", "<leader>li", require("fzf-lua").lsp_incoming_calls)
  map("n", "<leader>lo", require("fzf-lua").lsp_outgoing_calls)
  map("n", "<leader>lc", require("fzf-lua").lsp_code_actions)

  -- [[DIAGNOSTICS]]
  map("n", "<leader>sdd", require("fzf-lua").diagnostics_document)
  map("n", "<leader>sdw", require("fzf-lua").diagnostics_workspace)
end

M.setup()

return M
