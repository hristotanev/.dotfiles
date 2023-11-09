local utils = require("hristotanev.common.utils")
local nnoremap = require("hristotanev.common.keymaps").nnoremap

local function exercism_download()
	local track = vim.fn.input("Enter track: ")
	local exercise = vim.fn.input("Enter exercise: ")

	vim.cmd("!" .. vim.fn.join({ "exercism download", "-t", track, "-e", exercise }, " "))
	vim.cmd("cd $HOME/exercism/" .. track .. "/" .. exercise)
	vim.defer_fn(function()
		vim.cmd("edit README.md")
		vim.cmd("tabnew")
		require("nvim-tree.api").tree.open()
	end, 1000)
end

local function exercism_test()
	utils.exec_cmd_in_term({ "exercism test" })
end

nnoremap("<leader>exd", exercism_download)
nnoremap("<leader>ext", exercism_test)
nnoremap("<leader>exs", ":!exercism submit %<CR>")
