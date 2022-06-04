vim.keymap.set('', '<Up>', '<Nop>', {})
vim.keymap.set('', '<Down>', '<Nop>', {})
vim.keymap.set('', '<Right>', '<Nop>', {})
vim.keymap.set('', '<Left>', '<Nop>', {})

vim.g.mapleader = ' '
vim.keymap.set('n', 'pi', ':PlugInstall<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'pc', ':PlugClean<CR>', { noremap = true, silent = true })
vim.keymap.set('n', 'pu', ':PlugUpdate<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>h', ':wincmd h<CR>', { noremap = true })
vim.keymap.set('n', '<leader>l', ':wincmd l<CR>', { noremap = true })
vim.keymap.set('n', '<leader>k', ':wincmd k<CR>', { noremap = true })
vim.keymap.set('n', '<leader>j', ':wincmd j<CR>', { noremap = true })

vim.keymap.set('n', '<leader>u', ':UndotreeShow<CR>', { noremap = true })
vim.keymap.set('n', '<leader>d', ':NERDTreeToggle<CR>', { noremap = true })

vim.keymap.set('n', '<leader>rr', ':so %<CR>', { noremap = true })
vim.keymap.set('n', '<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })

vim.keymap.set('n', '<leader>mm', "<cmd>lua require 'memento'.toggle()<CR>", { noremap = true })

