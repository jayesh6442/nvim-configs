-- ══════════════════════════════════════════════════════════════════════
-- Neovim Options - Professional Configuration (Auto-Apply Fix)
-- ══════════════════════════════════════════════════════════════════════
-- Load default NvChad options first
require "nvchad.options"

-- ══════════════════════════════════════════════════════════════════════
-- Editor Appearance
-- ══════════════════════════════════════════════════════════════════════

local opt = vim.opt
local g = vim.g

-- Line numbers
opt.number = true
opt.relativenumber = true
opt.numberwidth = 4
opt.signcolumn = "yes"

-- Cursor line
opt.cursorline = true
opt.cursorlineopt = "both"

-- Colors
opt.termguicolors = true

-- Visual guides
opt.colorcolumn = "80,120"

-- Simple fillchars
opt.fillchars = {
  eob = " ",
  fold = " ",
  foldopen = "v",
  foldsep = " ",
  foldclose = ">",
  diff = "/",
  vert = "|",
}

-- Fold settings
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevel = 99
opt.foldlevelstart = 99
opt.foldenable = true
opt.foldcolumn = "1"

-- ══════════════════════════════════════════════════════════════════════
-- Editor Behavior
-- ══════════════════════════════════════════════════════════════════════

-- Indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.shiftround = true

-- Text wrapping
opt.wrap = false
opt.linebreak = true
opt.breakindent = true

-- Search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

-- Completion
opt.completeopt = { "menu", "menuone", "noselect" }
opt.pumheight = 15
opt.pumblend = 10

-- ══════════════════════════════════════════════════════════════════════
-- Window and Buffer Management
-- ══════════════════════════════════════════════════════════════════════

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Scrolling
opt.scrolloff = 8
opt.sidescrolloff = 8

-- ══════════════════════════════════════════════════════════════════════
-- File and Buffer Settings
-- ══════════════════════════════════════════════════════════════════════

-- File handling
opt.fileencoding = "utf-8"
opt.backup = false
opt.writebackup = false
opt.swapfile = false
opt.autoread = true
opt.autowrite = true

-- Persistent undo
opt.undofile = true
opt.undolevels = 10000

-- ══════════════════════════════════════════════════════════════════════
-- Performance
-- ══════════════════════════════════════════════════════════════════════

-- Timing
opt.updatetime = 250
opt.timeoutlen = 400

-- ══════════════════════════════════════════════════════════════════════
-- UI Elements
-- ══════════════════════════════════════════════════════════════════════

-- Command line
opt.cmdheight = 1
opt.showcmd = true
opt.showmode = false

-- Messages
opt.shortmess:append({ W = true, I = true, c = true, C = true })

-- List characters
opt.list = true
opt.listchars = {
  tab = "> ",
  trail = ".",
  extends = ">",
  precedes = "<",
  nbsp = "+",
}

-- Mouse
opt.mouse = "a"

-- ══════════════════════════════════════════════════════════════════════
-- Clipboard
-- ══════════════════════════════════════════════════════════════════════

opt.clipboard = "unnamedplus"

-- WSL clipboard fix
if vim.fn.has("wsl") == 1 then
  g.clipboard = {
    name = "WslClipboard",
    copy = {
      ["+"] = "clip.exe",
      ["*"] = "clip.exe",
    },
    paste = {
      ["+"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ["*"] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
    },
    cache_enabled = 0,
  }
end

-- ══════════════════════════════════════════════════════════════════════
-- Formatting
-- ══════════════════════════════════════════════════════════════════════

opt.formatoptions = "jcroqlnt"

-- Spell checking
opt.spell = false
opt.spelllang = { "en_us" }

-- ══════════════════════════════════════════════════════════════════════
-- Wildmenu
-- ══════════════════════════════════════════════════════════════════════

opt.wildmode = "longest:full,full"
opt.wildignore = {
  "*.o",
  "*.obj",
  "*.pyc",
  "*~",
  "*.swp",
  "*.bak",
  ".git",
  "node_modules",
  "__pycache__",
  "dist",
  "build",
}

-- ══════════════════════════════════════════════════════════════════════
-- Performance for Large Files
-- ══════════════════════════════════════════════════════════════════════

vim.api.nvim_create_autocmd("BufReadPre", {
  callback = function()
    local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(0))
    if ok and stats and stats.size > 1024 * 1024 then
      vim.opt_local.spell = false
      vim.opt_local.swapfile = false
      vim.opt_local.undofile = false
      vim.opt_local.breakindent = false
      vim.opt_local.colorcolumn = ""
      vim.opt_local.signcolumn = "no"
      vim.opt_local.foldcolumn = "0"
      vim.schedule(function()
        vim.bo.syntax = ""
      end)
    end
  end,
})

-- ══════════════════════════════════════════════════════════════════════
-- Diagnostic Settings
-- ══════════════════════════════════════════════════════════════════════

vim.diagnostic.config({
  underline = true,
  virtual_text = {
    spacing = 4,
    prefix = "●",
  },
  signs = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = "always",
  },
})

-- Diagnostic signs
local signs = {
  Error = "E",
  Warn = "W",
  Hint = "H",
  Info = "I",
}

for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- ══════════════════════════════════════════════════════════════════════
-- Better grep
-- ══════════════════════════════════════════════════════════════════════

if vim.fn.executable("rg") == 1 then
  opt.grepprg = "rg --vimgrep --no-heading --smart-case"
  opt.grepformat = "%f:%l:%c:%m"
end

-- Title
opt.title = true

-- Better backspace
opt.backspace = { "indent", "eol", "start" }

-- Join spaces
opt.joinspaces = false

-- ══════════════════════════════════════════════════════════════════════
-- Auto-Apply Custom Highlights (FIXED)
-- ══════════════════════════════════════════════════════════════════════

-- Function to apply custom highlights
local function apply_custom_highlights()
  local ok, highlights = pcall(require, "custom.highlights")
  if ok and type(highlights.apply) == "function" then
    highlights.apply()
  end
end

-- Apply on startup (after UI is ready)
vim.api.nvim_create_autocmd("UIEnter", {
  callback = function()
    vim.defer_fn(apply_custom_highlights, 100)
  end,
})

-- Apply when colorscheme changes
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.defer_fn(apply_custom_highlights, 50)
  end,
})

-- Also apply after VimEnter as backup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.defer_fn(apply_custom_highlights, 150)
  end,
})
