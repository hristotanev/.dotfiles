-- Set-up lsp
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)

require('lspconfig').gopls.setup {
  on_attach = function()
    vim.keymap.set("n", "P", vim.lsp.buf.hover, { buffer = 0 })
    vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_prev, { buffer = 0 })
    vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_next, { buffer = 0 })
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, { buffer = 0 })
  end,
  capabilities = capabilities,
}

-- Set-up go debugger
require('dap-go').setup()
vim.keymap.set('n', '<C-b>', "<cmd>lua require 'dap'.toggle_breakpoint()<CR>", { noremap = true })
vim.keymap.set('n', '<C-j>', "<cmd>lua require 'dap'.step_over()<CR>", { noremap = true })
vim.keymap.set('n', '<C-r>', "<cmd>lua require 'dap'.repl.open()<CR>", { noremap = true })
vim.keymap.set('n', '<C-s>', "<cmd>lua require 'dap'.continue()<CR>", { noremap = true })

-- Set-up autocmd on save
local group = vim.api.nvim_create_augroup("GoGroup", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.go"},
  callback = function ()
    vim.cmd([[
      :silent GoFmt
      :silent GoImports
      :silent LspRestart
    ]])
  end,
  group = group
})
