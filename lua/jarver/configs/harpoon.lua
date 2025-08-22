local M = {}

M.setup = function()
  local harpoon = require("harpoon")

  -- REQUIRED
  harpoon:setup()
  -- REQUIRED

  local map = vim.keymap.set
  map("n", "<leader>ha", function()
    harpoon:list():add()
  end)

  map("n", "<leader>hl", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
  end)

  map("n", "<leader>hq", function()
    harpoon:list():select(1)
  end)
  map("n", "<leader>hw", function()
    harpoon:list():select(2)
  end)
  map("n", "<leader>he", function()
    harpoon:list():select(3)
  end)
  map("n", "<leader>hr", function()
    harpoon:list():select(4)
  end)

  -- Toggle previous & next buffers stored within Harpoon list
  map("n", "<leader>h<S-N>", function()
    harpoon:list():prev()
  end)

  map("n", "<leader>hn", function()
    harpoon:list():next()
  end)
end

M.setup()

return M
