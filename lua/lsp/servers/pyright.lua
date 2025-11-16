local lspconfig = require("lspconfig")

lspconfig.pyright.setup({
    cmd = {
        "node",
        vim.fn.expand("~/.config/nvim-lsps/python/pyright/dist/pyright-langserver.js"),
        "--stdio"
    },
    filetypes = { "python" },
    root_dir = function()
        return vim.fn.getcwd()
    end,
})

