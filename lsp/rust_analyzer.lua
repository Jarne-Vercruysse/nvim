vim.lsp.config("rust_analyzer", {
  cmd = { "rustup", "run", "stable", "rust-analyzer" },
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
      },
    },
  },
})
