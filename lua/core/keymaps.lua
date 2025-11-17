vim.g.mapleader = " "
vim.keymap.set("n", "<leader>w", ":w<CR>")

local map = vim.keymap.set

map('n', 'gd', vim.lsp.buf.definition, { desc = "Go to definition" })
map('n', 'gD', vim.lsp.buf.declaration, { desc = "Go to declaration" })
map('n', '<leader>di', vim.lsp.buf.implementation, { desc = "Go to implementation" })
map('n', '<leader>dt', vim.lsp.buf.type_definition, { desc = "Go to type definition" })
map('n', 'gr', vim.lsp.buf.references, { desc = "List references" })
map('n', 'K', vim.lsp.buf.hover, { desc = "Hover info" })

