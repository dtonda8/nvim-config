local plugin_root = vim.fn.expand("~/.config/nvim-plugins/")

local function load_plugin(name)
    vim.opt.rtp:prepend(plugin_root .. name)
end

-- Core plugin list
load_plugin("vim-gitgutter")
load_plugin("nvim-lspconfig")
load_plugin("nvim-treesitter")
load_plugin("plenary.nvim")
load_plugin("telescope.nvim")
load_plugin("vim-fugitive")
load_plugin("vim-commentary")
load_plugin("yazi.nvim")
load_plugin("bullets.vim")

-- Load plugin configs
require("plugins.configs.treesitter")
require("plugins.configs.telescope")
require("plugins.configs.yazi")
