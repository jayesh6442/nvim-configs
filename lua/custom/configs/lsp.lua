local base = require("nvchad.configs.lsp").defaults()
local lspconfig = require("lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

---------------------------------------------------------
-- TypeScript / JavaScript
---------------------------------------------------------
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- JSON
---------------------------------------------------------
lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- HTML
---------------------------------------------------------
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- CSS
---------------------------------------------------------
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- ESLint
---------------------------------------------------------
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- Tailwind CSS
---------------------------------------------------------
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

---------------------------------------------------------
-- Lua
---------------------------------------------------------
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

