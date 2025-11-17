local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup({
  settings = {
    Lua = {
      runtime = { version = "LuaJIT", path = vim.split(package.path, ";") },
      diagnostics = { globals = {"vim"} },
      workspace = {
        library = {
          [vim.fn.expand("$VIMRUNTIME/lua")] = true,
          [vim.fn.stdpath("config") .. "/lua"] = true,
        },
        checkThirdParty = false,
      },
      telemetry = { enable = false },
    },
  },
})

