local map = vim.api.nvim_set_keymap

map('', '<Up>', '<Nop>', {})
map('', '<Down>', '<Nop>', {})
map('', '<Right>', '<Nop>', {})
map('', '<Left>', '<Nop>', {})

vim.g.mapleader = ' '
map('n', 'pi', ':PlugInstall<CR>', { noremap = true, silent = true })
map('n', 'pc', ':PlugClean<CR>', { noremap = true, silent = true })
map('n', 'pu', ':PlugUpdate<CR>', { noremap = true, silent = true })

map('n', '<leader>1', '1gt', { noremap = true })
map('n', '<leader>2', '2gt', { noremap = true })
map('n', '<leader>3', '3gt', { noremap = true })
map('n', '<leader>4', '4gt', { noremap = true })
map('n', '<leader>5', '5gt', { noremap = true })
map('n', '<leader>6', '6gt', { noremap = true })
map('n', '<leader>7', '7gt', { noremap = true })
map('n', '<leader>8', '8gt', { noremap = true })
map('n', '<leader>9', '9gt', { noremap = true })

map('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
map('n', '<leader>l', ':wincmd l<CR>', { noremap = true })
map('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
map('n', '<leader>j', ':wincmd j<CR>', { noremap = true })

map('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })
map('n', '<leader>d', ':NERDTreeToggle<CR>', { noremap = true })

map('n', '<leader>rf', 'gggqG<CR>', { noremap = true })
map('n', '<leader>rr', ':so %<CR>', { noremap = true })
map('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })

map('n', '<leader>ff', "<cmd>lua require 'telescope.builtin'.find_files()<CR>", { noremap = true })
map('n', '<leader>bf', "<cmd>lua require 'telescope.builtin'.buffers()<CR>", { noremap = true })
