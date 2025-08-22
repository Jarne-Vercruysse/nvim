return {
  {
    "rayliwell/tree-sitter-rstml",
    lazy = true,
    dependencies = { "nvim-treesitter" },
    build = ":TSUpdate",
    config = function()
      require("tree-sitter-rstml").setup()
    end,
  },
}
