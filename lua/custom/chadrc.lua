---@type ChadrcConfig
local M = {}

-- ══════════════════════════════════════════════════════════════════════
-- UI Configuration - Professional Theme Setup
-- ══════════════════════════════════════════════════════════════════════

M.ui = {
  -- Theme Configuration
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "one_light" },
  

   hl_override = {
    TelescopeBorder = { fg = "#89B4FA", bg = "#181825" },
    TelescopePromptBorder = { fg = "#F38BA8", bg = "#181825" },
    TelescopePromptTitle = { fg = "#1E1E2E", bg = "#F38BA8", bold = true },
    TelescopeResultsBorder = { fg = "#89B4FA", bg = "#181825" },
    TelescopePreviewBorder = { fg = "#A6E3A1", bg = "#181825" },
    
    NvimTreeNormal = { bg = "#181825" },
    NvimTreeWinSeparator = { fg = "#181825", bg = "#181825" },
    
    CursorLineNr = { fg = "#F9E2AF", bold = true },
  },
  -- Transparency Settings
  transparency = false,
  
  -- Status Line Configuration
  statusline = {
    theme = "default", -- default, vscode, vscode_colored, minimal
    separator_style = "round", -- default, round, block, arrow
    order = nil,
    modules = nil,
  },
  
  -- Tab Line Configuration
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },
  
  -- NvDash Configuration (Dashboard)
  nvdash = {
    load_on_startup = true,
    header = {
      "                                                    ",
      " ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
      " ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
      " ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
      " ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
      " ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
      " ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
      "                                                    ",
    },
    buttons = {
      { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
      { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
      { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
      { txt = "󱥚  Themes", keys = "Spc t h", cmd = ":lua require('nvchad.themes').open()" },
      { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },
      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
      {
        txt = function()
          local stats = require("lazy").stats()
          local ms = math.floor(stats.startuptime) .. " ms"
          return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
        end,
        hl = "NvDashFooter",
        no_gap = true,
      },
      { txt = "─", hl = "NvDashFooter", no_gap = true, rep = true },
    },
  },
  
  -- Cheatsheet Configuration
  cheatsheet = {
    theme = "grid", -- simple, grid
    excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" },
  },
  
  -- LSP Configuration
  lsp = {
    signature = true,
    semantic_tokens = false,
  },
  
  -- Terminal Configuration
  term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.4, ["bo sp"] = 0.3, ["bo vsp"] = 0.4 },
    float = {
      relative = "editor",
      row = 0.1,
      col = 0.15,
      width = 0.7,
      height = 0.7,
      border = "rounded",
    },
  },
  
  -- Color Overrides for more professional look
  hl_override = {
    -- Syntax Highlighting
    Comment = { italic = true, fg = "#7C8696" },
    ["@comment"] = { italic = true, fg = "#7C8696" },
    
    -- UI Elements
    Normal = { bg = "#1E1E2E" },
    NormalFloat = { bg = "#181825" },
    FloatBorder = { fg = "#89B4FA", bg = "#181825" },
    
    -- Line Numbers
    LineNr = { fg = "#45475A" },
    CursorLineNr = { fg = "#F9E2AF", bold = true },
    
    -- Cursor and Selection
    CursorLine = { bg = "#313244" },
    Visual = { bg = "#404254" },
    
    -- Status Line
    StatusLine = { bg = "#1E1E2E" },
    StatusLineNC = { bg = "#181825" },
    
    -- Tab Line
    TabLine = { bg = "#181825", fg = "#6C7086" },
    TabLineFill = { bg = "#181825" },
    TabLineSel = { bg = "#313244", fg = "#CDD6F4", bold = true },
    
    -- Telescope
    TelescopeBorder = { fg = "#89B4FA", bg = "#181825" },
    TelescopePromptBorder = { fg = "#F38BA8", bg = "#181825" },
    TelescopeResultsBorder = { fg = "#89B4FA", bg = "#181825" },
    TelescopePreviewBorder = { fg = "#A6E3A1", bg = "#181825" },
    TelescopePromptTitle = { fg = "#1E1E2E", bg = "#F38BA8", bold = true },
    TelescopeResultsTitle = { fg = "#1E1E2E", bg = "#89B4FA", bold = true },
    TelescopePreviewTitle = { fg = "#1E1E2E", bg = "#A6E3A1", bold = true },
    
    -- Git Signs
    GitSignsAdd = { fg = "#A6E3A1" },
    GitSignsChange = { fg = "#F9E2AF" },
    GitSignsDelete = { fg = "#F38BA8" },
    
    -- Diagnostics
    DiagnosticError = { fg = "#F38BA8" },
    DiagnosticWarn = { fg = "#FAB387" },
    DiagnosticInfo = { fg = "#89B4FA" },
    DiagnosticHint = { fg = "#94E2D5" },
    
    -- NvimTree
    NvimTreeNormal = { bg = "#181825" },
    NvimTreeNormalNC = { bg = "#181825" },
    NvimTreeWinSeparator = { fg = "#181825", bg = "#181825" },
    NvimTreeRootFolder = { fg = "#F38BA8", bold = true },
    NvimTreeFolderIcon = { fg = "#89B4FA" },
    NvimTreeIndentMarker = { fg = "#45475A" },
    
    -- Completion Menu
    Pmenu = { bg = "#181825" },
    PmenuSel = { bg = "#313244", fg = "#CDD6F4" },
    PmenuSbar = { bg = "#313244" },
    PmenuThumb = { bg = "#585B70" },
    
    -- Code Context
    ["@variable"] = { fg = "#CDD6F4" },
    ["@function"] = { fg = "#89B4FA" },
    ["@keyword"] = { fg = "#CBA6F7", italic = true },
    ["@string"] = { fg = "#A6E3A1" },
    ["@number"] = { fg = "#FAB387" },
    ["@boolean"] = { fg = "#FAB387" },
    ["@type"] = { fg = "#F9E2AF" },
    ["@constant"] = { fg = "#FAB387" },
    ["@parameter"] = { fg = "#F2CDCD", italic = true },
  },
  
  -- Additional highlight overrides that take effect after base theme loads
  hl_add = {
    -- Treesitter Context
    TreesitterContext = { bg = "#262637" },
    TreesitterContextLineNumber = { bg = "#262637", fg = "#F9E2AF" },
    
    -- Indent Blankline
    IblIndent = { fg = "#2A2A3E" },
    IblScope = { fg = "#45475A" },
    
    -- WhichKey
    WhichKey = { fg = "#F38BA8" },
    WhichKeyGroup = { fg = "#89B4FA" },
    WhichKeyDesc = { fg = "#CDD6F4" },
    WhichKeySeperator = { fg = "#6C7086" },
    WhichKeyFloat = { bg = "#181825" },
    WhichKeyBorder = { fg = "#89B4FA", bg = "#181825" },
    
    -- Code Action Signs
    LightBulbSign = { fg = "#F9E2AF" },
    
    -- Fold
    Folded = { bg = "#262637", fg = "#6C7086" },
    FoldColumn = { bg = "#1E1E2E", fg = "#45475A" },
    
    -- Search
    IncSearch = { bg = "#F9E2AF", fg = "#1E1E2E" },
    Search = { bg = "#F38BA8", fg = "#1E1E2E" },
    
    -- Diff
    DiffAdd = { bg = "#283B3B" },
    DiffChange = { bg = "#32302F" },
    DiffDelete = { bg = "#3C2C3C" },
    DiffText = { bg = "#4A4637" },
  },
}

-- ══════════════════════════════════════════════════════════════════════
-- Base46 Integration
-- ══════════════════════════════════════════════════════════════════════

M.base46 = {
  theme = "catppuccin",
  transparency = false,
  
  -- Custom theme overrides
  theme_toggle = { "catppuccin", "one_light" },
  
  -- Integration settings
  integrations = {
    "blankline",
    "cmp",
    "defaults",
    "devicons",
    "git",
    "lsp",
    "mason",
    "nvchad_updater",
    "nvdash",
    "nvimtree",
    "statusline",
    "syntax",
    "tbline",
    "telescope",
    "whichkey",
  },
  
  changed_themes = {},
  
  hl_override = M.ui.hl_override,
  hl_add = M.ui.hl_add,
}

-- ══════════════════════════════════════════════════════════════════════
-- Plugin Configuration
-- ══════════════════════════════════════════════════════════════════════

-- THIS MUST EXIST OTHERWISE NOTHING IN custom/ LOADS
M.plugins = "custom.plugins"

-- ══════════════════════════════════════════════════════════════════════
-- Mappings (Load safely with pcall to avoid errors if file missing)
-- ══════════════════════════════════════════════════════════════════════

local mappings_ok, mappings = pcall(require, "custom.configs.mappings")
if mappings_ok then
  M.mappings = mappings
end

return M
