return {

  -- Mason (LSP installer)
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "ts_ls",      -- NEW NAME
        "eslint",
        "jsonls",
        "html",
        "cssls",
        "lua_ls",
        "tailwindcss",
      },
    },
  },

  -- LSP (NEW API)
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "custom.configs.lsp"
    end,
  },

  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    opts = require "custom.configs.treesitter",
  },

  -- NONE-LS ONLY (remove null-ls)
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
      require "custom.configs.format_on_save"
    end,
  },

  -- LuaSnip
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require "custom.configs.snippets"
    end,
  },

  -- VSCode snippets
  { "rafamadriz/friendly-snippets" },

  -- Emmet
  { "mattn/emmet-vim" },

  -- Colorizer (NvChad already loads this, but OK)
  { "NvChad/nvim-colorizer.lua" },

  -- DAP
  { "mfussenegger/nvim-dap" },

  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },

  -- Gitsigns
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require "custom.configs.gitsigns"
    end,
  },
}

