local lspconfig = require "lspconfig"

-- TypeScript / JavaScript / TSX / JSX
lspconfig.tsserver.setup {
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json"
  },
}

-- HTML (for web RN)
lspconfig.html.setup {}

-- CSS (for RN Web + Tailwind)
lspconfig.cssls.setup {}

-- JSON
lspconfig.jsonls.setup {}

-- ESLint
lspconfig.eslint.setup {}

