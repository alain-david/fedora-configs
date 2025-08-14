-- lazy.nvim setup
vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
  -- Tema OneDark
  {
    "navarasu/onedark.nvim",
    lazy = false, -- cargar inmediatamente
    priority = 1000, -- asegurarse que se cargue primero
    config = function()
      require("onedark").setup {
        style = "dark", -- opciones: dark, darker, cool, deep, warm, warmer, light
      }
      require("onedark").load()
    end,
  },
  
  -- Barra de estado(inferior)
  {
    "nvim-lualine/lualine.nvim",
    event = "VimEnter",
    config = function()
      require("lualine").setup {
        options = {
          theme = "onedark",
          section_separators = "",
          component_separators = "",
        },
      }
    end,
  },
  
  -- Explorador de archivos
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      local api = require("nvim-tree.api")
      require("nvim-tree").setup {
        view = { width = 30 },
        
        renderer = { icons = { show = { git = true, folder = true, file = true } } },
        
        on_attach = function(bufnr)
          local function opts(desc)
            return { desc = "NvimTree: "..desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
          end
          
          -- Abrir archivo
          vim.keymap.set("n", "<CR>", api.node.open.edit, opts("Open"))
          vim.keymap.set("n", "v", api.node.open.vertical, opts("Open: Vertical Split"))
          vim.keymap.set("n", "h", api.node.open.horizontal, opts("Open: Horizontal Split"))
          
          -- Crear, renombrar, borrar, refrescar
          vim.keymap.set("n", "a", api.fs.create, opts("Create"))
          vim.keymap.set("n", "r", api.fs.rename, opts("Rename"))
          vim.keymap.set("n", "d", api.fs.remove, opts("Delete"))
          vim.keymap.set("n", "R", api.tree.reload, opts("Refresh"))

          -- Info del archivo
          vim.keymap.set("n", "i", api.tree.reload, opts("Toggle_file_info"))
          
          -- Cerrar árbol
          vim.keymap.set("n", "<leader>e", api.tree.close, opts("Close"))
        end,
      }
    end,
  },
  
  -- Telescope
  {
    "nvim-telescope/telescope.nvim",
    dependencies = "nvim-lua/plenary.nvim",
    config = function()
      require("telescope").setup{}
    end,
  },

  -- Terminal integrada
  {
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup{
        open_mapping = [[<leader>t]],
        direction = "horizontal",
      }
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup {
        ensure_installed = {"dart", "c_sharp", "go", "json", "lua"},
        highlight = { enable = true },
      }
    end,
  },

  -- Iconos para archivos
  { "nvim-tree/nvim-web-devicons" },

  -- Comentar
  {
    "tpope/vim-commentary",
    event = "BufReadPre", -- carga ligera
  },

  -- LSP
  "neovim/nvim-lspconfig",

  -- Autocompletado
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  "L3MON4D3/LuaSnip",
})
