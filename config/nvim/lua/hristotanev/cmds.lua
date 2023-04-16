local api = vim.api
local commands = require("hristotanev.commands")

local build = commands.build
local run = commands.run

local function get_file_name_with_ext()
	local buf_name = api.nvim_buf_get_name(0)

	local path_dict = vim.split(buf_name, "/")
	return path_dict[#path_dict]
end

api.nvim_create_user_command("Build", function()
	build(get_file_name_with_ext())
end, {})

api.nvim_create_user_command("Run", function()
	run(get_file_name_with_ext())
end, {})
