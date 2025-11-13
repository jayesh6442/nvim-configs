local ls = require "luasnip"
local types = require "luasnip.util.types"

ls.config.set_config {
  history = true,
  updateevents = "TextChanged,TextChangedI",

  ext_opts = {
    [types.choiceNode] = {
      active = {
        virt_text = { { "●", "Error" } },
      },
    },
  },
}

-- Load VSCode React + React Native snippets
require("luasnip.loaders.from_vscode").lazy_load {
  paths = {
    vim.fn.stdpath("data") .. "/lazy/friendly-snippets",
  },
}

