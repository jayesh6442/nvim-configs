local null_ls = require "null-ls"

null_ls.setup({
  on_attach = function(client, bufnr)
    -- let null-ls handle formatting
    client.server_capabilities.documentFormattingProvider = true
  end,
  sources = {
    null_ls.builtins.formatting.prettierd,
    null_ls.builtins.diagnostics.eslint_d,
    null_ls.builtins.code_actions.eslint_d,
  },
})

