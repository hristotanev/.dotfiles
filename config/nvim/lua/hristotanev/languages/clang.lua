local lsp = require('hristotanev.languages.lsp')

require('lspconfig').clangd.setup({
  capabilities = lsp.capabilities,
  on_attach = lsp.on_attach
})
