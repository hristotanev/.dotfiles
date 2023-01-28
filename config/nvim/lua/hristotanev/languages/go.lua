local api = vim.api
local nnoremap = require('hristotanev.common.keymaps').nnoremap

-- Set-up go debugger
require('dap-go').setup()
nnoremap('<C-b>', "<cmd>lua require 'dap'.toggle_breakpoint()<CR>", { noremap = true })
nnoremap('<C-j>', "<cmd>lua require 'dap'.step_over()<CR>", { noremap = true })
nnoremap('<C-r>', "<cmd>lua require 'dap'.repl.open()<CR>", { noremap = true })
nnoremap('<C-s>', "<cmd>lua require 'dap'.continue()<CR>", { noremap = true })

-- Set-up autocmd on save
local group = api.nvim_create_augroup("GoGroup", {
  clear = true
})

api.nvim_create_autocmd({"BufWritePre"}, {
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
