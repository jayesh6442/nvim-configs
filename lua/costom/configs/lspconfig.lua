local lspconfig = require "lspconfig"

-- TS, JS, React, React Native

-- HTML
lspconfig.html.setup {}

-- CSS
lspconfig.cssls.setup {}

-- TailwindCSS
lspconfig.tailwindcss.setup {}

-- JSON
lspconfig.jsonls.setup {}

-- Node backend
lspconfig.eslint.setup {}

-- YAML
lspconfig.yamlls.setup {}

-- Docker
lspconfig.dockerls.setup {}

-- GraphQL
lspconfig.graphql.setup {}

-- Bash
lspconfig.bashls.setup {}

-- Astro
lspconfig.astro.setup {}
lspconfig.tsserver.setup {
  filetypes = {
    javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json"
  }
}
