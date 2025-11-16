local function load_plugin(path)
    vim.opt.rtp:prepend(vim.fn.expand("~/.config/nvim-plugins/") .. "/" .. path)
end

-- Load plugins
load_plugin("nvim-treesitter")
load_plugin("nvim-lspconfig")

-- Configure Treesitter
require("nvim-treesitter.configs").setup {
    ensure_installed = {"python"},
    highlight = { enable = true },
    indent = { enable = true },
}

-- Configure Python LSP
require("lspconfig").pyright.setup{}

