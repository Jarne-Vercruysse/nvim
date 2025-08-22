return {
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("jarver.configs.autotag").setup()
    end,
  },
}
