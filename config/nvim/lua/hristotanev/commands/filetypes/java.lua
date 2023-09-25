local C = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_term = utils.exec_cmd_in_term

local function build(file_name)
	local command = { "javac", file_name .. ".java" }
	vim.cmd("!" .. vim.fn.join(command, " "))
end

local function run(file_name)
	local command = { "java", file_name }
	exec_cmd_in_term(command)
end

C.build = build
C.run = run

return C
