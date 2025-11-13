return {
 -- changs
  -- LSP
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lspconfig"
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.treesitter",
  },

  -- Null-ls (formatting)
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },

  -- Snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require "custom.configs.snippets"
    end,
  },

  -- VSCode snippets (React + RN)
  {
    "rafamadriz/friendly-snippets",
  },

  -- React / JSX syntax
  { "pangloss/vim-javascript" },
  { "MaxMEllon/vim-jsx-pretty" },

  -- Emmet for JSX/TSX
  {
    "mattn/emmet-vim",
  },

  -- Tailwind highlight (RN Web / Expo web)
  { "NvChad/nvim-colorizer.lua" },

  -- React Native debugging (DAP)
  { "mfussenegger/nvim-dap" },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
  },
  {
  "rcarriga/nvim-dap-ui",
  dependencies = { "mfussenegger/nvim-dap" },
},

  {
  "lewis6991/gitsigns.nvim",
  config = function()
    require "custom.configs.gitsigns"
  end,
},
{
  "nvimtools/none-ls.nvim",
  config = function()
    require "custom.configs.null-ls"
    require "custom.configs.format_on_save"
  end,
},
}

