local function load_plugin(path)
    vim.opt.rtp:prepend(vim.fn.expand("~/.config/nvim-plugins/") .. "/" .. path)
end

-- Load plugins
load_plugin("nvim-treesitter")
load_plugin("nvim-lspconfig")

-- Require LSPConfig once
local lspconfig = require("lspconfig")

-- Configure Treesitter
local parser_path = vim.fn.expand("~/.config/nvim-plugins/parsers")

-- Disable online parser downloads
require("nvim-treesitter.install").prefer_git = true
require("nvim-treesitter.install").disable = true

-- Append submodules to runtimepath so Treesitter can find parsers
vim.opt.rtp:append(parser_path)

-- Configure Treesitter for all languages you have
require("nvim-treesitter.configs").setup {
    ensure_installed = {
        "c",
        "cpp",
        "python",
        "java",
        "c_sharp",
        "javascript",
        "typescript",
        "kotlin",
    },
    highlight = { enable = true },
    indent = { enable = true },
    -- Optional: incremental selection, textobjects, etc. can be added here
}

-- LSP: Python
lspconfig.pyright.setup {}

-- LSP: C / C++
lspconfig.clangd.setup {
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = lspconfig.util.root_pattern(
        "compile_commands.json",
        "compile_flags.txt",
        ".git"
    ),
}

