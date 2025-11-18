local blink = require("blink.cmp")

blink.setup({
  keymap = {
    preset = "default", -- required unless you're defining your own keymaps
  },
  sources = {
    default = { "lsp", "path", "buffer", "snippets" },
  },
})

-- Optionally enable LSP capabilities
local lspconfig = require("lspconfig")
local capabilities = blink.get_lsp_capabilities()

lspconfig.lua_ls.setup({ capabilities = capabilities })
lspconfig.pyright.setup({ capabilities = capabilities })

