local nnoremap = require('hristotanev.common.keymaps').nnoremap

require('telescope').setup({
  defaults = {
    prompt_prefix = ' ',
    file_ignore_patterns = {'.*/node_modules/.*'}
  },
  extensions = {
    file_browser = {
      theme = 'ivy',
      hijack_netrw = true
    }
  }
})

require('telescope').load_extension('file_browser')
nnoremap('<leader>ff', "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap('<leader>bf', "<cmd>lua require('telescope.builtin').buffers()<CR>")
