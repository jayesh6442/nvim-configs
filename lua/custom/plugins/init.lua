local plugins = {

  -- =====================
  -- Mason & LSP
  -- =====================
  {
    "williamboman/mason.nvim",
    opts = {},
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "tsserver",
        "eslint",
        "jsonls",
        "html",
        "cssls",
        "lua_ls",
        "tailwindcss",
        "jdtls",
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("custom.configs.lspconfig")
    end,
  },

  -- =====================
  -- File Tree
  -- =====================
  {
    "nvim-tree/nvim-tree.lua",
    config = function(_, opts)
      opts.view.side = "right"
      opts.view.width = 40
      require("nvim-tree").setup(opts)
    end,
  },

  -- =====================
  -- Formatting / Linting
  -- =====================
  {
    "nvimtools/none-ls.nvim",
    config = function()
      require("custom.configs.null-ls")
      require("custom.configs.format_on_save")
    end,
  },

  -- =====================
  -- Snippets
  -- =====================
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    config = function()
      require("custom.configs.snippets")
    end,
  },

  { "rafamadriz/friendly-snippets" },
  { "mattn/emmet-vim" },

  -- =====================
  -- UI / Utils
  -- =====================
  { "NvChad/nvim-colorizer.lua" },

  -- =====================
  -- Debugging
  -- =====================
  { "mfussenegger/nvim-dap" },

  {
    "mxsdev/nvim-dap-vscode-js",
    dependencies = { "mfussenegger/nvim-dap" },
  },

  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap" },
  },

  -- =====================
  -- Git
  -- =====================
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("custom.configs.gitsigns")
    end,
  },

  -- =====================
  -- Java (ONLY ONCE)
  -- =====================
  {
    "nvim-java/nvim-java",
    ft = { "java" },
    dependencies = {
      "neovim/nvim-lspconfig",
      "williamboman/mason.nvim",
    },
    config = function()
      require("java").setup()
    end,
  },
}

-- Apply custom highlights AFTER colorscheme
vim.schedule(function()
  local ok, highlights = pcall(require, "custom.highlights")
  if ok and type(highlights.apply) == "function" then
    highlights.apply()
  end
end)

return plugins

