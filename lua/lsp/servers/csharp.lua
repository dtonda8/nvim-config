local lspconfig = require("lspconfig")

lspconfig.csharp_ls.setup{
    cmd = { vim.fn.expand("~/.dotnet/tools/csharp-ls") },  -- full path to the installed tool
    filetypes = { "cs" },
    root_dir = lspconfig.util.root_pattern(".sln", ".csproj", ".git") or vim.fn.getcwd(),
    settings = {},
}

