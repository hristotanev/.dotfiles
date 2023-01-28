local M = {}

local function capabilities()
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  return require('cmp_nvim_lsp').default_capabilities(capabilities)
end

local function on_attach()
  local nnoremap = require('hristotanev.keymaps').nnoremap

  return function()
    nnoremap("P", vim.lsp.buf.hover, { buffer = 0 })
    nnoremap("<leader>dj", vim.diagnostic.goto_prev, { buffer = 0 })
    nnoremap("<leader>dk", vim.diagnostic.goto_next, { buffer = 0 })
    nnoremap("<leader>r", vim.lsp.buf.rename, { buffer = 0 })
  end
end

M.capabilities = capabilities()
M.on_attach = on_attach()

return M
