local M = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_term = utils.exec_cmd_in_term

local function build()
	vim.cmd("!cargo build")
end

local function run()
	exec_cmd_in_term({ "cargo", "run" })
end

local function explain_error()
	local error_code = vim.fn.input("Rust error code: ")
	local command = { "rustc", "--explain", string.upper(error_code) }
	vim.cmd("!" .. vim.fn.join(command, " "))
end

M.build = build
M.run = run
M.explain_error = explain_error

return M
