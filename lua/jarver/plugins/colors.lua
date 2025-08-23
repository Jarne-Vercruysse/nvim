return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      require("jarver.configs.colors")
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
  },
}
