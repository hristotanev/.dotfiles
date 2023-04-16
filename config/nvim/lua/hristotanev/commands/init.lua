local C = {}
local clang_cmds = require("hristotanev.commands.filetypes.c")
local rust_cmds = require("hristotanev.commands.filetypes.rust")

local function is_file_ext(file_name_with_ext, ext)
	return string.find(file_name_with_ext, "." .. ext .. "$")
end

local function build(file_name_with_ext)
	if is_file_ext(file_name_with_ext, "rs") then
		rust_cmds.build()
		return
	end

	if is_file_ext(file_name_with_ext, "c") then
		clang_cmds.build(file_name_with_ext)
		return
	end
end

local function run(file_name_with_ext)
	if is_file_ext(file_name_with_ext, "rs") then
		rust_cmds.run()
		return
	end

	if is_file_ext(file_name_with_ext, "c") then
		clang_cmds.run(file_name_with_ext)
		return
	end
end

C.build = build
C.run = run

return C
