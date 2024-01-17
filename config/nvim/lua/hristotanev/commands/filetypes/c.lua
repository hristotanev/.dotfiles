local C = {}
local make_run = false
local utils = require("hristotanev.common.utils")

local exec_cmd_in_term = utils.exec_cmd_in_term

local function run(file_name)
	local command
	local file = vim.fs.find("Makefile", {
		upward = true,
	})[1]

	if file ~= nil then
		command = { "make" }
		make_run = true
	else
		command = {
			"cc",
			file_name .. ".c",
			"-o",
			file_name,
			"&&",
			"./" .. file_name,
		}
	end

	exec_cmd_in_term(command)
end

local group = vim.api.nvim_create_augroup("CRunGroup", {
	clear = true,
})

vim.api.nvim_create_autocmd({ "BufWipeout" }, {
	callback = function()
		if make_run == true then
			vim.cmd(":silent !make clean")
			make_run = false
		end
	end,
	group = group,
})

C.run = run
C.test = function()
	local file = vim.fs.find("Makefile", {
		upward = true,
	})[1]

	if file ~= nil then
		make_run = true
		exec_cmd_in_term({ "make", "test" })
		vim.cmd(":silent !make clean")
	end
end

return C
