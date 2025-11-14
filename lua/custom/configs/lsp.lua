local base = require("nvchad.configs.lsp").defaults()
local lspconfig = require("lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

