local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  api.config.mappings.default_on_attach(bufnr)

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

