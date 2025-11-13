return {

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

  -- Null-ls
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require "custom.configs.null-ls"
    end,
  },

  -- React specific plugins
  { "pangloss/vim-javascript" },
  { "MaxMEllon/vim-jsx-pretty" },

  -- Tailwind highlighting
  { "laytan/tailwind-sorter.nvim", build = "cargo build --release" },
  { "NvChad/nvim-colorizer.lua" },

  -- React Native debugging
  {
    "mfussenegger/nvim-dap",
  },
  {
    "jose-elias-alvarez/nvim-dap-ui",
  },
  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
  },
{ "L3MON4D3/LuaSnip", version = "v2.*" },

{
  "rafamadriz/friendly-snippets",
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  end,
},

}

