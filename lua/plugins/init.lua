local function load_plugin(path)
  vim.opt.rtp:prepend(vim.fn.stdpath("config") .. "/plugins/" .. path)
end

-- Load Treesitter
load_plugin("nvim-treesitter")

-- Treesitter configuration
require("nvim-treesitter.configs").setup {
  ensure_installed = {"python"},
  highlight = { enable = true },
  indent = { enable = true },
}

-- load LSPConfig plugin
load_plugin("nvim-lspconfig")

-- configure Python LSP
require("lspconfig").pyright.setup{}

