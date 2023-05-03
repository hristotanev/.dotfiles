local api = vim.api
local commands = require("hristotanev.commands")

local build = commands.build
local run = commands.run

local function get_file_name_and_ext()
	local buf_name = api.nvim_buf_get_name(0)

	local path_dict = vim.split(buf_name, "/")
	local file_name_with_ext = path_dict[#path_dict]

	local _, _, file_name, ext = string.find(file_name_with_ext, "(.*)%p(.*)$")
	return file_name, ext
end

api.nvim_create_user_command("Build", function()
	local file_name, ext = get_file_name_and_ext()
	build(file_name, ext)
end, {})

api.nvim_create_user_command("Run", function()
	local file_name, ext = get_file_name_and_ext()
	run(file_name, ext)
end, {})
