local core = "jarver.core."
-- Leader key
vim.g.mapleader = " "

require(core .. "keymaps")
require(core .. "options")
require(core .. "autocmds")

require("jarver.lazy")
