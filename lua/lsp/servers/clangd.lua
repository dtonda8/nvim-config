local lspconfig = require("lspconfig")

lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  on_attach = function(client, bufnr)
    local opts = { buffer = bufnr, silent = true }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
  end
})

