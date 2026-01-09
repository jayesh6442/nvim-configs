local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  -- load default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- ❌ REMOVE Ctrl+n mapping from NvimTree
  vim.keymap.del("n", "<C-n>", { buffer = bufnr })
end

local options = {
  view = {
    side = "right",
    width = 30,
  },

  on_attach = on_attach,
}

return options

