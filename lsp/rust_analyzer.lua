return {
  settings = {
    ["rust-analyzer"] = {
      diagnostics = {
        enable = true,
      },
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        enable = true,
        command = "clippy",
      },
      inlayHints = {
        lifetimeElisionHints = { enable = true, useParameterNames = true },
        parameterHints = true,
        typeHints = true,
      },
      imports = {
        granularity = { group = "crate" },
        prefix = "self",
        group = { "crate" },
      },
      completion = {
        postfix = { enable = true },
      },
    },
  },
}
