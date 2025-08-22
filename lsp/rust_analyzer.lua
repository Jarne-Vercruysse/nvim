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
        granularity = { group = "module" },
        prefix = "self",
      },
      completion = {
        postfix = { enable = true },
      },
    },
  },
}
