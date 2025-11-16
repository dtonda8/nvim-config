local plugin_root = vim.fn.expand("~/.config/nvim-plugins/")

local function load_plugin(name)
    vim.opt.rtp:prepend(plugin_root .. name)
end

-- Core plugin list
load_plugin("nvim-treesitter")
load_plugin("nvim-lspconfig")

-- Load plugin configs
require("plugins.configs.treesitter")   -- add more when ready
