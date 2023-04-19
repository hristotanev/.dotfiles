local M = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_buf = utils.exec_cmd_in_buf
local exec_cmd_in_term = utils.exec_cmd_in_term

local function build(file_name)
	local command = { "gcc", file_name .. ".c", "-o", file_name }
	exec_cmd_in_buf(command)
end

local function run(file_name)
	local command = { "gcc", file_name .. ".c", "-o", file_name, "&&", "./" .. file_name }
	exec_cmd_in_term(command)
end

M.build = build
M.run = run

return M
