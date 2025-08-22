return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "echasnovski/mini.icons" },
    config = function()
      require("jarver.configs.fzf").setup()
    end,
  },
}
