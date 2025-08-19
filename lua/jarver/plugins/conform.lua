return {
  {
    "stevearc/conform.nvim",
    opts = {},
    config = function()
      require("jarver.configs.conform").setup()
    end,
  },
}
