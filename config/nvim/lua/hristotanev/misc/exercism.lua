local utils = require("hristotanev.common.utils")
local nnoremap = require("hristotanev.common.keymaps").nnoremap

local function exercism_open(track, exercise)
	utils.nuke()
	vim.cmd("cd $HOME/exercism/" .. track .. "/" .. exercise)
	vim.cmd("edit README.md")
	vim.cmd("tabnew")
	require("nvim-tree.api").tree.open()
end

local function exercism()
	local track = vim.fn.input("Enter track: ")

	local exercises = {}
	for name, type in vim.fs.dir("$HOME/exercism/" .. track) do
		if type == "directory" then
			table.insert(exercises, name)
		end
	end

	vim.ui.select(exercises, { prompt = "Select exercise:" }, function(choice)
		exercism_open(track, choice)
	end)
end

local function exercism_download()
	local track = vim.fn.input("Enter track: ")
	local exercise = vim.fn.input("Enter exercise: ")

	vim.cmd("!" .. vim.fn.join({ "exercism download", "-t", track, "-e", exercise }, " "))
	exercism_open(track, exercise)
end

local function exercism_test()
	utils.exec_cmd_in_term({ "exercism test" })
end

nnoremap("<leader>ex", exercism)
nnoremap("<leader>exd", exercism_download)
nnoremap("<leader>ext", exercism_test)
nnoremap("<leader>exs", ":!exercism submit %<CR>")
