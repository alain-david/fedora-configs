-- lazy.nvim setup
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
    -- LSP
    "neovim/nvim-lspconfig",

    -- Autocompletado
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",

    -- Treesitter
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

    -- Explorador de archivos
    "nvim-tree/nvim-tree.lua",

    -- Fuzzy finder
    {"nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" }},

    -- Barra inferior
    "nvim-lualine/lualine.nvim",
})
