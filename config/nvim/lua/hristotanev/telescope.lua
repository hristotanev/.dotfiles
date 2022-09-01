local nnoremap = require('hristotanev.keymaps').nnoremap

require 'telescope'.setup({
  defaults = {
    prompt_prefix = ' '
  }
})

nnoremap('<leader>ff', "<cmd>lua require 'telescope.builtin'.find_files()<CR>")
nnoremap('<leader>bf', "<cmd>lua require 'telescope.builtin'.buffers()<CR>")
