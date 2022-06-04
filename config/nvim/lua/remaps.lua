local map = vim.api.nvim_set_keymap

map('', '<Up>', '<Nop>', {})
map('', '<Down>', '<Nop>', {})
map('', '<Right>', '<Nop>', {})
map('', '<Left>', '<Nop>', {})

vim.g.mapleader = ' '
map('n', 'pi', ':PlugInstall<CR>', { noremap = true, silent = true })
map('n', 'pc', ':PlugClean<CR>', { noremap = true, silent = true })
map('n', 'pu', ':PlugUpdate<CR>', { noremap = true, silent = true })

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

map('n', '<leader>gi', ':GoInstallBinaries<CR>', { noremap = true })
map('n', '<leader>gu', ':GoUpdateBinaries<CR>', { noremap = true })

map('n', '<leader>mm', "<cmd>lua require 'memento'.toggle()<CR>", { noremap = true })

map('n', '<C-b>', "<cmd>lua require 'dap'.toggle_breakpoint()<CR>", { noremap = true })
map('n', '<C-j>', "<cmd>lua require 'dap'.step_over()<CR>", { noremap = true })
map('n', '<C-r>', "<cmd>lua require 'dap'.repl.open()<CR>", { noremap = true })
map('n', '<C-s>', "<cmd>lua require 'dap'.continue()<CR>", { noremap = true })
