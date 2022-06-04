require 'telescope'.setup({
  defaults = {
    prompt_prefix = ' '
  }
})

vim.keymap.set('n', '<leader>ff', "<cmd>lua require 'telescope.builtin'.find_files()<CR>", { noremap = true })
vim.keymap.set('n', '<leader>bf', "<cmd>lua require 'telescope.builtin'.buffers()<CR>", { noremap = true })
