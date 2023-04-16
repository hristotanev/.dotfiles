local M = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_buf = utils.exec_cmd_in_buf
local exec_cmd_in_term = utils.exec_cmd_in_term

local function build(file_name_with_ext)
	local _, _, file_name = string.find(file_name_with_ext, "(.*).c")
	exec_cmd_in_buf({ "gcc", file_name_with_ext, "-o", file_name })
end

local function run(file_name_with_ext)
	local _, _, file_name = string.find(file_name_with_ext, "(.*).c")
	exec_cmd_in_term({ "gcc", file_name_with_ext, "-o", file_name, "&&", "./" .. file_name })
end

M.build = build
M.run = run

return M
