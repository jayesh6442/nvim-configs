local lspconfig = require "lspconfig"
local base = require("nvchad.configs.lspconfig")

-- Extend default NvChad capabilities/on_attach
local on_attach = base.on_attach
local capabilities = base.capabilities

------------------------------------------------------------------
-- JavaScript / TypeScript
------------------------------------------------------------------
lspconfig.ts_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
  },
}

------------------------------------------------------------------
-- JSON
------------------------------------------------------------------
lspconfig.jsonls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

------------------------------------------------------------------
-- HTML
------------------------------------------------------------------
lspconfig.html.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

------------------------------------------------------------------
-- CSS
------------------------------------------------------------------
lspconfig.cssls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

------------------------------------------------------------------
-- ESLint
------------------------------------------------------------------
lspconfig.eslint.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

------------------------------------------------------------------
-- Tailwind
------------------------------------------------------------------
lspconfig.tailwindcss.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

------------------------------------------------------------------
-- Lua (fix warning)
------------------------------------------------------------------
lspconfig.lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

