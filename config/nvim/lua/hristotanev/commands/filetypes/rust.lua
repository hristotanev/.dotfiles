local C = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_term = utils.exec_cmd_in_term

local function run()
	exec_cmd_in_term({ "cargo", "run" })
end

local function explain_error()
	local error_code = vim.fn.input("Rust error code: ")
	local command = { "rustc", "--explain", string.upper(error_code) }
	vim.cmd("!" .. vim.fn.join(command, " "))
end

C.run = run
C.explain_error = explain_error

return C
