local M = {}

M.ui = {
  theme = "catppuccin",
}

-- THIS MUST EXIST OTHERWISE NOTHING IN custom/ LOADS
M.plugins = "custom.plugins"

M.mappings = require "custom.configs.mappings"

return M

