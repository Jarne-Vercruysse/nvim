local set = vim.keymap.set

-- [[WINDOWS]]
-- Creating
set("n", "<leader>wh", "<C-w>s", { desc = "Split window horizontally" })
set("n", "<leader>wv", "<C-w>v", { desc = "Split window vertically" })
set("n", "<leader>we", "<C-w>n", { desc = "New empty split" })

-- navigating
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })

-- These mappings control the size of splits (height/width)
set("n", "<M-,>", "<c-w>5<")
set("n", "<M-.>", "<c-w>5>")
-- Height [T]aller, [S]maller
set("n", "<M-t>", "<C-W>+")
set("n", "<M-s>", "<C-W>-")

-- TIP: Disable arrow keys in normal mode
set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')
