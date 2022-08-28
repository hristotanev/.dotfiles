local unmap = require('hristotanev.keymaps').unmap
local nnoremap = require('hristotanev.keymaps').nnoremap

vim.g.mapleader = ' '

unmap('<Up>', '<Nop>', {})
unmap('<Down>', '<Nop>', {})
unmap('<Right>', '<Nop>', {})
unmap('<Left>', '<Nop>', {})
nnoremap('pi', ':PackerInstall<CR>', { noremap=true, silent=true })
nnoremap('pc', ':PackerClean<CR>', { noremap=true, silent=true })
nnoremap('pu', ':PackerUpdate<CR>', { noremap = true, silent = true })
nnoremap('<leader>h', ':wincmd h<CR>', { noremap = true })
nnoremap('<leader>l', ':wincmd l<CR>', { noremap = true })
nnoremap('<leader>k', ':wincmd k<CR>', { noremap = true })
nnoremap('<leader>j', ':wincmd j<CR>', { noremap = true })
nnoremap('<leader>u', ':UndotreeShow<CR>', { noremap = true })
nnoremap('<leader>d', ':NERDTreeToggle<CR>', { noremap = true })
nnoremap('<leader>rr', ':so %<CR>', { noremap = true })
nnoremap('<leader><CR>', ':so ~/.config/nvim/init.lua<CR>', { noremap = true })
nnoremap('<leader>mm', "<cmd>lua require 'memento'.toggle()<CR>", { noremap = true })

