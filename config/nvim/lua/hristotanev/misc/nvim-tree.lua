local nnoremap = require("hristotanev.common.keymaps").nnoremap

require("nvim-tree").setup({})

-- local api = vim.api
-- local function open_tree_for_dir(data)
-- 	local directory = vim.fn.isdirectory(data.file) == 1

-- 	if not directory then
-- 		return
-- 	end

-- 	vim.cmd.enew()
-- 	vim.cmd.bw(data.buf)
-- 	vim.cmd.cd(data.file)

-- 	require("nvim-tree.api").tree.open()
-- end

-- local group = api.nvim_create_augroup("NvimTreeGroup", {
-- 	clear = true,
-- })

-- vim.api.nvim_create_autocmd({ "VimEnter" }, {
-- 	callback = open_tree_for_dir,
-- 	group = group,
-- })

nnoremap("<leader>t", ":NvimTreeToggle<CR>", { noremap = true })
