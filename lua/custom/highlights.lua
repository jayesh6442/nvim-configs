-- ══════════════════════════════════════════════════════════════════════
-- Custom Highlights - Professional Theme Extension
-- ══════════════════════════════════════════════════════════════════════
-- This module provides additional highlight groups and theme refinements
-- to create a polished, professional appearance across all UI elements

local M = {}

-- ══════════════════════════════════════════════════════════════════════
-- Color Palette - Catppuccin Mocha
-- ══════════════════════════════════════════════════════════════════════

local colors = {
  -- Base colors
  base = "#1E1E2E",
  mantle = "#181825",
  crust = "#11111B",
  
  -- Surface colors
  surface0 = "#313244",
  surface1 = "#45475A",
  surface2 = "#585B70",
  
  -- Overlay colors
  overlay0 = "#6C7086",
  overlay1 = "#7F849C",
  overlay2 = "#9399B2",
  
  -- Text colors
  text = "#CDD6F4",
  subtext0 = "#A6ADC8",
  subtext1 = "#BAC2DE",
  
  -- Accent colors
  rosewater = "#F5E0DC",
  flamingo = "#F2CDCD",
  pink = "#F5C2E7",
  mauve = "#CBA6F7",
  red = "#F38BA8",
  maroon = "#EBA0AC",
  peach = "#FAB387",
  yellow = "#F9E2AF",
  green = "#A6E3A1",
  teal = "#94E2D5",
  sky = "#89DCEB",
  sapphire = "#74C7EC",
  blue = "#89B4FA",
  lavender = "#B4BEFE",
}

-- ══════════════════════════════════════════════════════════════════════
-- Core UI Highlights
-- ══════════════════════════════════════════════════════════════════════

M.core_ui = {
  -- Editor background and UI
  Normal = { bg = colors.base, fg = colors.text },
  NormalFloat = { bg = colors.mantle, fg = colors.text },
  NormalNC = { bg = colors.base, fg = colors.text },
  
  -- Borders
  FloatBorder = { fg = colors.blue, bg = colors.mantle },
  WinSeparator = { fg = colors.surface0, bg = colors.base },
  VertSplit = { fg = colors.surface0, bg = colors.base },
  
  -- Line numbers
  LineNr = { fg = colors.surface2 },
  LineNrAbove = { fg = colors.surface1 },
  LineNrBelow = { fg = colors.surface1 },
  CursorLineNr = { fg = colors.yellow, bold = true },
  
  -- Cursor and selection
  Cursor = { bg = colors.text, fg = colors.base },
  CursorLine = { bg = colors.surface0 },
  CursorColumn = { bg = colors.surface0 },
  ColorColumn = { bg = colors.surface0 },
  Visual = { bg = colors.surface1 },
  VisualNOS = { bg = colors.surface1 },
  
  -- Folds
  Folded = { bg = colors.surface0, fg = colors.overlay2 },
  FoldColumn = { bg = colors.base, fg = colors.surface2 },
  
  -- Signs column
  SignColumn = { bg = colors.base, fg = colors.surface2 },
  
  -- Popup menu
  Pmenu = { bg = colors.mantle, fg = colors.text },
  PmenuSel = { bg = colors.surface0, fg = colors.text, bold = true },
  PmenuSbar = { bg = colors.surface0 },
  PmenuThumb = { bg = colors.surface2 },
  
  -- Wild menu
  WildMenu = { bg = colors.surface0, fg = colors.text },
  
  -- Search
  Search = { bg = colors.surface1, fg = colors.text, bold = true },
  IncSearch = { bg = colors.yellow, fg = colors.base, bold = true },
  CurSearch = { bg = colors.red, fg = colors.base, bold = true },
  
  -- Messages and modes
  ModeMsg = { fg = colors.blue, bold = true },
  MoreMsg = { fg = colors.green },
  Question = { fg = colors.blue },
  WarningMsg = { fg = colors.peach },
  ErrorMsg = { fg = colors.red },
  
  -- Diff
  DiffAdd = { bg = "#283B3B" },
  DiffChange = { bg = "#32302F" },
  DiffDelete = { bg = "#3C2C3C", fg = colors.red },
  DiffText = { bg = "#4A4637", bold = true },
  
  -- Spell checking
  SpellBad = { sp = colors.red, undercurl = true },
  SpellCap = { sp = colors.yellow, undercurl = true },
  SpellLocal = { sp = colors.blue, undercurl = true },
  SpellRare = { sp = colors.green, undercurl = true },
  
  -- Misc
  Directory = { fg = colors.blue },
  EndOfBuffer = { fg = colors.base },
  NonText = { fg = colors.surface1 },
  SpecialKey = { fg = colors.surface2 },
  Title = { fg = colors.blue, bold = true },
  Whitespace = { fg = colors.surface1 },
}

-- ══════════════════════════════════════════════════════════════════════
-- Syntax Highlights
-- ══════════════════════════════════════════════════════════════════════

M.syntax = {
  Comment = { fg = colors.overlay0, italic = true },
  
  Constant = { fg = colors.peach },
  String = { fg = colors.green },
  Character = { fg = colors.green },
  Number = { fg = colors.peach },
  Boolean = { fg = colors.peach },
  Float = { fg = colors.peach },
  
  Identifier = { fg = colors.text },
  Function = { fg = colors.blue },
  
  Statement = { fg = colors.mauve },
  Conditional = { fg = colors.mauve, italic = true },
  Repeat = { fg = colors.mauve, italic = true },
  Label = { fg = colors.mauve },
  Operator = { fg = colors.sky },
  Keyword = { fg = colors.mauve, italic = true },
  Exception = { fg = colors.mauve },
  
  PreProc = { fg = colors.pink },
  Include = { fg = colors.pink },
  Define = { fg = colors.pink },
  Macro = { fg = colors.pink },
  PreCondit = { fg = colors.pink },
  
  Type = { fg = colors.yellow },
  StorageClass = { fg = colors.yellow },
  Structure = { fg = colors.yellow },
  Typedef = { fg = colors.yellow },
  
  Special = { fg = colors.blue },
  SpecialChar = { fg = colors.flamingo },
  Tag = { fg = colors.mauve },
  Delimiter = { fg = colors.overlay2 },
  SpecialComment = { fg = colors.overlay0, italic = true },
  Debug = { fg = colors.red },
  
  Underlined = { underline = true },
  Ignore = { fg = colors.surface1 },
  Error = { fg = colors.red },
  Todo = { fg = colors.base, bg = colors.yellow, bold = true },
}

-- ══════════════════════════════════════════════════════════════════════
-- Treesitter Highlights
-- ══════════════════════════════════════════════════════════════════════

M.treesitter = {
  -- Identifiers
  ["@variable"] = { fg = colors.text },
  ["@variable.builtin"] = { fg = colors.red },
  ["@variable.parameter"] = { fg = colors.flamingo, italic = true },
  ["@variable.member"] = { fg = colors.text },
  
  -- Constants
  ["@constant"] = { fg = colors.peach },
  ["@constant.builtin"] = { fg = colors.peach },
  ["@constant.macro"] = { fg = colors.peach },
  
  -- Modules
  ["@module"] = { fg = colors.text },
  ["@module.builtin"] = { fg = colors.red },
  
  -- Types
  ["@type"] = { fg = colors.yellow },
  ["@type.builtin"] = { fg = colors.yellow },
  ["@type.definition"] = { fg = colors.yellow },
  ["@type.qualifier"] = { fg = colors.mauve, italic = true },
  
  -- Attributes
  ["@attribute"] = { fg = colors.blue },
  ["@property"] = { fg = colors.text },
  
  -- Functions
  ["@function"] = { fg = colors.blue },
  ["@function.builtin"] = { fg = colors.blue },
  ["@function.call"] = { fg = colors.blue },
  ["@function.macro"] = { fg = colors.red },
  ["@function.method"] = { fg = colors.blue },
  ["@function.method.call"] = { fg = colors.blue },
  
  -- Constructors
  ["@constructor"] = { fg = colors.sapphire },
  
  -- Keywords
  ["@keyword"] = { fg = colors.mauve, italic = true },
  ["@keyword.conditional"] = { fg = colors.mauve, italic = true },
  ["@keyword.repeat"] = { fg = colors.mauve, italic = true },
  ["@keyword.return"] = { fg = colors.mauve, italic = true },
  ["@keyword.function"] = { fg = colors.mauve, italic = true },
  ["@keyword.operator"] = { fg = colors.mauve, italic = true },
  ["@keyword.import"] = { fg = colors.pink },
  ["@keyword.storage"] = { fg = colors.yellow },
  ["@keyword.exception"] = { fg = colors.mauve },
  
  -- Operators
  ["@operator"] = { fg = colors.sky },
  
  -- Punctuation
  ["@punctuation.delimiter"] = { fg = colors.overlay2 },
  ["@punctuation.bracket"] = { fg = colors.overlay2 },
  ["@punctuation.special"] = { fg = colors.sky },
  
  -- Strings
  ["@string"] = { fg = colors.green },
  ["@string.documentation"] = { fg = colors.green },
  ["@string.regexp"] = { fg = colors.peach },
  ["@string.escape"] = { fg = colors.pink },
  ["@string.special"] = { fg = colors.blue },
  
  -- Characters
  ["@character"] = { fg = colors.teal },
  ["@character.special"] = { fg = colors.pink },
  
  -- Numbers
  ["@number"] = { fg = colors.peach },
  ["@number.float"] = { fg = colors.peach },
  
  -- Booleans
  ["@boolean"] = { fg = colors.peach },
  
  -- Comments
  ["@comment"] = { fg = colors.overlay0, italic = true },
  ["@comment.documentation"] = { fg = colors.overlay0, italic = true },
  ["@comment.error"] = { fg = colors.red },
  ["@comment.warning"] = { fg = colors.yellow },
  ["@comment.todo"] = { fg = colors.base, bg = colors.yellow, bold = true },
  ["@comment.note"] = { fg = colors.base, bg = colors.blue, bold = true },
  
  -- Markup (Markdown, etc.)
  ["@markup.strong"] = { fg = colors.maroon, bold = true },
  ["@markup.italic"] = { fg = colors.maroon, italic = true },
  ["@markup.strikethrough"] = { fg = colors.text, strikethrough = true },
  ["@markup.underline"] = { underline = true },
  ["@markup.heading"] = { fg = colors.blue, bold = true },
  ["@markup.heading.1"] = { fg = colors.red, bold = true },
  ["@markup.heading.2"] = { fg = colors.peach, bold = true },
  ["@markup.heading.3"] = { fg = colors.yellow, bold = true },
  ["@markup.heading.4"] = { fg = colors.green, bold = true },
  ["@markup.heading.5"] = { fg = colors.blue, bold = true },
  ["@markup.heading.6"] = { fg = colors.mauve, bold = true },
  ["@markup.quote"] = { fg = colors.overlay2, italic = true },
  ["@markup.math"] = { fg = colors.blue },
  ["@markup.environment"] = { fg = colors.pink },
  ["@markup.link"] = { fg = colors.blue, underline = true },
  ["@markup.link.label"] = { fg = colors.sapphire },
  ["@markup.link.url"] = { fg = colors.blue, underline = true, italic = true },
  ["@markup.raw"] = { fg = colors.green },
  ["@markup.raw.block"] = { fg = colors.green },
  ["@markup.list"] = { fg = colors.mauve },
  ["@markup.list.checked"] = { fg = colors.green },
  ["@markup.list.unchecked"] = { fg = colors.overlay2 },
  
  -- Tags (HTML, XML, JSX)
  ["@tag"] = { fg = colors.mauve },
  ["@tag.attribute"] = { fg = colors.flamingo, italic = true },
  ["@tag.delimiter"] = { fg = colors.overlay2 },
  
  -- Diff
  ["@diff.plus"] = { link = "DiffAdd" },
  ["@diff.minus"] = { link = "DiffDelete" },
  ["@diff.delta"] = { link = "DiffChange" },
}

-- ══════════════════════════════════════════════════════════════════════
-- LSP Semantic Tokens
-- ══════════════════════════════════════════════════════════════════════

M.lsp = {
  -- Types
  ["@lsp.type.class"] = { fg = colors.yellow },
  ["@lsp.type.decorator"] = { fg = colors.blue },
  ["@lsp.type.enum"] = { fg = colors.yellow },
  ["@lsp.type.enumMember"] = { fg = colors.peach },
  ["@lsp.type.function"] = { fg = colors.blue },
  ["@lsp.type.interface"] = { fg = colors.yellow },
  ["@lsp.type.macro"] = { fg = colors.red },
  ["@lsp.type.method"] = { fg = colors.blue },
  ["@lsp.type.namespace"] = { fg = colors.text },
  ["@lsp.type.parameter"] = { fg = colors.flamingo, italic = true },
  ["@lsp.type.property"] = { fg = colors.text },
  ["@lsp.type.struct"] = { fg = colors.yellow },
  ["@lsp.type.type"] = { fg = colors.yellow },
  ["@lsp.type.typeParameter"] = { fg = colors.flamingo, italic = true },
  ["@lsp.type.variable"] = { fg = colors.text },
  
  -- Modifiers
  ["@lsp.mod.readonly"] = { fg = colors.peach },
  ["@lsp.mod.deprecated"] = { fg = colors.surface2, strikethrough = true },
  ["@lsp.mod.static"] = { fg = colors.lavender },
}

-- ══════════════════════════════════════════════════════════════════════
-- Diagnostic Highlights
-- ══════════════════════════════════════════════════════════════════════

M.diagnostics = {
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.peach },
  DiagnosticInfo = { fg = colors.blue },
  DiagnosticHint = { fg = colors.teal },
  DiagnosticOk = { fg = colors.green },
  
  DiagnosticUnderlineError = { sp = colors.red, undercurl = true },
  DiagnosticUnderlineWarn = { sp = colors.peach, undercurl = true },
  DiagnosticUnderlineInfo = { sp = colors.blue, undercurl = true },
  DiagnosticUnderlineHint = { sp = colors.teal, undercurl = true },
  DiagnosticUnderlineOk = { sp = colors.green, undercurl = true },
  
  DiagnosticVirtualTextError = { fg = colors.red, bg = colors.mantle },
  DiagnosticVirtualTextWarn = { fg = colors.peach, bg = colors.mantle },
  DiagnosticVirtualTextInfo = { fg = colors.blue, bg = colors.mantle },
  DiagnosticVirtualTextHint = { fg = colors.teal, bg = colors.mantle },
  
  DiagnosticSignError = { fg = colors.red, bg = colors.base },
  DiagnosticSignWarn = { fg = colors.peach, bg = colors.base },
  DiagnosticSignInfo = { fg = colors.blue, bg = colors.base },
  DiagnosticSignHint = { fg = colors.teal, bg = colors.base },
  
  DiagnosticFloatingError = { fg = colors.red, bg = colors.mantle },
  DiagnosticFloatingWarn = { fg = colors.peach, bg = colors.mantle },
  DiagnosticFloatingInfo = { fg = colors.blue, bg = colors.mantle },
  DiagnosticFloatingHint = { fg = colors.teal, bg = colors.mantle },
}

-- ══════════════════════════════════════════════════════════════════════
-- Git Signs
-- ══════════════════════════════════════════════════════════════════════

M.git = {
  GitSignsAdd = { fg = colors.green },
  GitSignsChange = { fg = colors.yellow },
  GitSignsDelete = { fg = colors.red },
  GitSignsChangedelete = { fg = colors.red },
  GitSignsTopdelete = { fg = colors.red },
  GitSignsUntracked = { fg = colors.overlay2 },
  
  GitSignsAddLn = { bg = "#283B3B" },
  GitSignsChangeLn = { bg = "#32302F" },
  GitSignsDeleteLn = { bg = "#3C2C3C" },
  
  GitSignsAddNr = { fg = colors.green, bg = colors.base },
  GitSignsChangeNr = { fg = colors.yellow, bg = colors.base },
  GitSignsDeleteNr = { fg = colors.red, bg = colors.base },
}

-- ══════════════════════════════════════════════════════════════════════
-- Telescope
-- ══════════════════════════════════════════════════════════════════════

M.telescope = {
  TelescopeNormal = { bg = colors.mantle, fg = colors.text },
  TelescopeBorder = { fg = colors.blue, bg = colors.mantle },
  TelescopeTitle = { fg = colors.base, bg = colors.blue, bold = true },
  
  TelescopePromptNormal = { bg = colors.crust },
  TelescopePromptBorder = { fg = colors.red, bg = colors.crust },
  TelescopePromptTitle = { fg = colors.base, bg = colors.red, bold = true },
  TelescopePromptPrefix = { fg = colors.red },
  TelescopePromptCounter = { fg = colors.overlay2 },
  
  TelescopeResultsNormal = { bg = colors.mantle },
  TelescopeResultsBorder = { fg = colors.blue, bg = colors.mantle },
  TelescopeResultsTitle = { fg = colors.base, bg = colors.blue, bold = true },
  
  TelescopePreviewNormal = { bg = colors.mantle },
  TelescopePreviewBorder = { fg = colors.green, bg = colors.mantle },
  TelescopePreviewTitle = { fg = colors.base, bg = colors.green, bold = true },
  
  TelescopeSelection = { bg = colors.surface0, fg = colors.text, bold = true },
  TelescopeSelectionCaret = { fg = colors.red, bg = colors.surface0 },
  TelescopeMultiSelection = { fg = colors.overlay2, bg = colors.surface0 },
  
  TelescopeMatching = { fg = colors.yellow, bold = true },
}

-- ══════════════════════════════════════════════════════════════════════
-- NvimTree
-- ══════════════════════════════════════════════════════════════════════

M.nvimtree = {
  NvimTreeNormal = { bg = colors.mantle, fg = colors.text },
  NvimTreeNormalNC = { bg = colors.mantle, fg = colors.text },
  NvimTreeWinSeparator = { fg = colors.mantle, bg = colors.mantle },
  NvimTreeEndOfBuffer = { fg = colors.mantle },
  
  NvimTreeRootFolder = { fg = colors.red, bold = true },
  NvimTreeFolderName = { fg = colors.blue },
  NvimTreeFolderIcon = { fg = colors.blue },
  NvimTreeEmptyFolderName = { fg = colors.overlay2 },
  NvimTreeOpenedFolderName = { fg = colors.blue, bold = true },
  NvimTreeSymlink = { fg = colors.teal },
  
  NvimTreeExecFile = { fg = colors.green, bold = true },
  NvimTreeOpenedFile = { fg = colors.text, bold = true },
  NvimTreeSpecialFile = { fg = colors.yellow, underline = true },
  NvimTreeImageFile = { fg = colors.text },
  
  NvimTreeIndentMarker = { fg = colors.surface1 },
  NvimTreeLiveFilterPrefix = { fg = colors.red, bold = true },
  NvimTreeLiveFilterValue = { fg = colors.red, bold = true },
  
  NvimTreeGitDirty = { fg = colors.yellow },
  NvimTreeGitStaged = { fg = colors.green },
  NvimTreeGitMerge = { fg = colors.peach },
  NvimTreeGitRenamed = { fg = colors.blue },
  NvimTreeGitNew = { fg = colors.green },
  NvimTreeGitDeleted = { fg = colors.red },
  NvimTreeGitIgnored = { fg = colors.overlay0 },
  
  NvimTreeCursorLine = { bg = colors.surface0 },
  NvimTreeWindowPicker = { bg = colors.surface0, fg = colors.red, bold = true },
}

-- ══════════════════════════════════════════════════════════════════════
-- Completion (nvim-cmp)
-- ══════════════════════════════════════════════════════════════════════

M.cmp = {
  CmpItemAbbrDeprecated = { fg = colors.overlay0, strikethrough = true },
  CmpItemAbbrMatch = { fg = colors.blue, bold = true },
  CmpItemAbbrMatchFuzzy = { fg = colors.blue },
  
  CmpItemKindText = { fg = colors.text },
  CmpItemKindMethod = { fg = colors.blue },
  CmpItemKindFunction = { fg = colors.blue },
  CmpItemKindConstructor = { fg = colors.sapphire },
  CmpItemKindField = { fg = colors.text },
  CmpItemKindVariable = { fg = colors.text },
  CmpItemKindClass = { fg = colors.yellow },
  CmpItemKindInterface = { fg = colors.yellow },
  CmpItemKindModule = { fg = colors.text },
  CmpItemKindProperty = { fg = colors.text },
  CmpItemKindUnit = { fg = colors.peach },
  CmpItemKindValue = { fg = colors.peach },
  CmpItemKindEnum = { fg = colors.yellow },
  CmpItemKindKeyword = { fg = colors.mauve },
  CmpItemKindSnippet = { fg = colors.flamingo },
  CmpItemKindColor = { fg = colors.pink },
  CmpItemKindFile = { fg = colors.text },
  CmpItemKindReference = { fg = colors.text },
  CmpItemKindFolder = { fg = colors.blue },
  CmpItemKindEnumMember = { fg = colors.peach },
  CmpItemKindConstant = { fg = colors.peach },
  CmpItemKindStruct = { fg = colors.yellow },
  CmpItemKindEvent = { fg = colors.text },
  CmpItemKindOperator = { fg = colors.sky },
  CmpItemKindTypeParameter = { fg = colors.flamingo },
}

-- ══════════════════════════════════════════════════════════════════════
-- Indent Blankline
-- ══════════════════════════════════════════════════════════════════════

M.indent_blankline = {
  IblIndent = { fg = colors.surface0 },
  IblWhitespace = { fg = colors.surface0 },
  IblScope = { fg = colors.surface2 },
}

-- ══════════════════════════════════════════════════════════════════════
-- WhichKey
-- ══════════════════════════════════════════════════════════════════════

M.whichkey = {
  WhichKey = { fg = colors.red, bold = true },
  WhichKeyGroup = { fg = colors.blue },
  WhichKeyDesc = { fg = colors.text },
  WhichKeySeparator = { fg = colors.overlay0 },
  WhichKeyFloat = { bg = colors.mantle },
  WhichKeyBorder = { fg = colors.blue, bg = colors.mantle },
  WhichKeyValue = { fg = colors.overlay2 },
}

-- ══════════════════════════════════════════════════════════════════════
-- Dashboard (nvdash)
-- ══════════════════════════════════════════════════════════════════════

M.dashboard = {
  NvDashAscii = { fg = colors.blue },
  NvDashButtons = { fg = colors.text },
}

-- ══════════════════════════════════════════════════════════════════════
-- Status Line
-- ══════════════════════════════════════════════════════════════════════

M.statusline = {
  StatusLine = { bg = colors.mantle, fg = colors.text },
  StatusLineNC = { bg = colors.crust, fg = colors.overlay0 },
  
  -- Custom status line components
  StMode = { bg = colors.blue, fg = colors.mantle, bold = true },
  StGit = { bg = colors.surface0, fg = colors.text },
  StFile = { bg = colors.surface0, fg = colors.text },
  StLsp = { bg = colors.surface0, fg = colors.green },
  StPos = { bg = colors.surface0, fg = colors.text },
}

-- ══════════════════════════════════════════════════════════════════════
-- Tab Line
-- ══════════════════════════════════════════════════════════════════════

M.tabline = {
  TabLine = { bg = colors.crust, fg = colors.overlay2 },
  TabLineFill = { bg = colors.crust },
  TabLineSel = { bg = colors.surface0, fg = colors.text, bold = true },
  
  -- Custom tab line components
  TbBufOn = { bg = colors.surface0, fg = colors.text, bold = true },
  TbBufOff = { bg = colors.crust, fg = colors.overlay2 },
  TbBufOnModified = { bg = colors.surface0, fg = colors.green, bold = true },
  TbBufOffModified = { bg = colors.crust, fg = colors.green },
  TbBufOnClose = { bg = colors.surface0, fg = colors.red },
  TbBufOffClose = { bg = colors.crust, fg = colors.red },
  
  TbTabOn = { bg = colors.surface0, fg = colors.text, bold = true },
  TbTabOff = { bg = colors.crust, fg = colors.overlay2 },
  TbTabCloseBtn = { bg = colors.crust, fg = colors.red },
  TbTabNewBtn = { bg = colors.crust, fg = colors.green },
}

-- ══════════════════════════════════════════════════════════════════════
-- Apply Function
-- ══════════════════════════════════════════════════════════════════════

function M.apply()
  local highlights = {}
  
  -- Merge all highlight groups
  for _, group in pairs({
    M.core_ui,
    M.syntax,
    M.treesitter,
    M.lsp,
    M.diagnostics,
    M.git,
    M.telescope,
    M.nvimtree,
    M.cmp,
    M.indent_blankline,
    M.whichkey,
    M.dashboard,
    M.statusline,
    M.tabline,
  }) do
    highlights = vim.tbl_extend("force", highlights, group)
  end
  
  -- Apply highlights
  for group, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

-- Apply highlights after colorscheme loads
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.schedule(function()
      M.apply()
    end)
  end,
})

return M
