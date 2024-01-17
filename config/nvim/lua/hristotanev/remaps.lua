local unmap = require("hristotanev.common.keymaps").unmap
local nnoremap = require("hristotanev.common.keymaps").nnoremap

vim.g.mapleader = " "

unmap("<Esc>", "<Nop>", {})
unmap("<Up>", "<Nop>", {})
unmap("<Down>", "<Nop>", {})
unmap("<Right>", "<Nop>", {})
unmap("<Left>", "<Nop>", {})
nnoremap("pi", ":PackerInstall<CR>", { silent = true })
nnoremap("pc", ":PackerClean<CR>", { silent = true })
nnoremap("pu", ":PackerUpdate<CR>", { silent = true })
nnoremap("<leader>h", ":wincmd h<CR>")
nnoremap("<leader>l", ":wincmd l<CR>")
nnoremap("<leader>k", ":wincmd k<CR>")
nnoremap("<leader>j", ":wincmd j<CR>")
nnoremap("<leader>u", ":UndotreeToggle<CR>")
nnoremap("<leader>1", "1gt<CR>")
nnoremap("<leader>2", "2gt<CR>")
nnoremap("<leader>rr", ":so %<CR>")
nnoremap("<leader><CR>", ":so ~/.config/nvim/init.lua<CR>")
nnoremap("<leader>z", ":ZenMode<CR>", { silent = true })
