local map = vim.keymap.set
local ls = require "luasnip"

map({ "i", "s" }, "<Tab>", function()
  if ls.expand_or_jumpable() then
    ls.expand_or_jump()
  else
    return "<Tab>"
  end
end, { expr = true })

map({ "i", "s" }, "<S-Tab>", function()
  if ls.jumpable(-1) then
    ls.jump(-1)
  else
    return "<S-Tab>"
  end
end, { expr = true })

