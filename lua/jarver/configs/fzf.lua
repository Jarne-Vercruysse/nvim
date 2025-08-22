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
  map("n", "<leader>slr", require("fzf-lua").lsp_references)
  map("n", "<leader>slr", require("fzf-lua").lsp_references)
  map("n", "<leader>sd", require("fzf-lua").diagnostics_document)
end

M.setup()

return M
