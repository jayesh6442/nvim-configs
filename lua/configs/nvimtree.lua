local function on_attach(bufnr)
  local api = require "nvim-tree.api"

  -- load default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- ❌ remove Ctrl+n at the source
  vim.keymap.del("n", "<C-n>", { buffer = bufnr })
end

return {
  view = {
    side = "right",
    width = 30,
    preserve_window_proportions = false,
  },
  on_attach = on_attach,
}

