local M = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_buf = utils.exec_cmd_in_buf
local exec_cmd_in_term = utils.exec_cmd_in_term

local function build()
	exec_cmd_in_buf({ "cargo", "build" })
end

local function run()
	exec_cmd_in_term({ "cargo", "run" })
end

local function explain_error()
	local error_code = vim.fn.input("Rust error code: ")
	exec_cmd_in_buf({ "rustc", "--explain", error_code })
end

M.build = build
M.run = run
M.explain_error = explain_error

return M
