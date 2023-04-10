local opts = { silent = true }
local nnoremap = require("hristotanev.common.keymaps").nnoremap
local vnoremap = require("hristotanev.common.keymaps").vnoremap

nnoremap("<C-j>", ":MoveLine(1)<CR>", opts)
nnoremap("<C-k>", ":MoveLine(-1)<CR>", opts)
nnoremap("<C-h>", ":MoveHChar(-1)<CR>", opts)
nnoremap("<C-l>", ":MoveHChar(1)<CR>", opts)

vnoremap("<C-j>", ":MoveBlock(1)<CR>", opts)
vnoremap("<C-k>", ":MoveBlock(-1)<CR>", opts)
vnoremap("<C-h>", ":MoveHBlock(-1)<CR>", opts)
vnoremap("<C-l>", ":MoveHBlock(1)<CR>", opts)
