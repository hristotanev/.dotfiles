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

M.build = build
M.run = run

return M
