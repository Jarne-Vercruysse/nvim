local aug = vim.api.nvim_create_augroup("JarverCore", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  group = aug,
  desc = "Highlight when yanking text",
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- This is for the builtin omnifunc and LSP, to bare bones atm
-- vim.api.nvim_create_autocmd("LspAttach", {
--   group = aug,
--   callback = function(args)
--     local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
--     local buf = args.buf
--     if client:supports_method "textDocument/implementation" then
--       vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = buf, desc = "Go to Implementation" })
--     end
--
--     vim.bo[buf].omnifunc = "v:lua.vim.lsp.omnifunc"
--
--     -- Enable auto-completion. Note: Use CTRL-Y to select an item. |complete_CTRL-Y|
--     if client:supports_method "textDocument/completion" then
--       -- Optional: trigger autocompletion on EVERY keypress. May be slow!
--       -- local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
--       -- client.server_capabilities.completionProvider.triggerCharacters = chars
--
--       vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
--     end
--   end,
-- })
