local opt = vim.opt

opt.inccommand = "split"
opt.smartcase = true
opt.ignorecase = true
opt.signcolumn = "yes"

opt.number = true
opt.relativenumber = false
opt.scrolloff = 12

-- Where to open splits
opt.splitright = true
opt.splitbelow = true

opt.signcolumn = "yes:1"
opt.numberwidth = 2
opt.wrap = true
opt.linebreak = true
opt.textwidth = 120
opt.colorcolumn = "+1"
opt.showbreak = "↪ "
opt.wrapmargin = 10
opt.undofile = true

-- When doing regex see life updates
opt.inccommand = "split"

-- LSP Window diagnostic
opt.winborder = "rounded"

-- Completions
-- opt.completeopt = { "menu", "menuone", "noselect" }
-- opt.shortmess:append "c"
-- opt.pumheight = 12
-- opt.pumblend = 16

-- shada == shared data
--:oldfiles or :o Display files with marks stored in the shada file
-- :rshada or :rs Read the shada file
--:wshada or :ws Write the shada file
--opt.shada = { "'10", "<0", "s10", "h" }

vim.schedule(function()
  opt.clipboard = "unnamedplus"
end)
opt.formatoptions:remove("o")
