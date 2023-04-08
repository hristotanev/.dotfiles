require('mason').setup()

local lsp = require('hristotanev.common.lsp')
local mason_lsp = require('mason-lspconfig')

mason_lsp.setup({
  ensure_installed = {
    'clangd',
    'gopls',
    'tsserver',
    'svelte',
    'ltex',
    'vimls',
    'lua_ls',
    'html',
    'cssls',
    'rust_analyzer'
  },
  automatic_installation = true
})

mason_lsp.setup_handlers({
  function (server_name)
    require('lspconfig')[server_name].setup({
      capabilities = lsp.capabilities,
      on_attach = lsp.on_attach
    })
  end,
  ['lua_ls'] = function ()
    require('lspconfig').lua_ls.setup({
      capabilities = lsp.capabilities,
      on_attach = lsp.on_attach,
      settings = {
        Lua = {
          diagnostics = {
            globals = {'vim'}
          }
        }
      }
    })
  end
})
