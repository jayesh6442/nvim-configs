local null_ls = require "null-ls"

local b = null_ls.builtins

local sources = {
  b.formatting.prettierd,
  b.diagnostics.eslint,
}

null_ls.setup {
  sources = sources,
}

