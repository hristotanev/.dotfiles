local C = {}
local clang_cmds = require("hristotanev.commands.filetypes.c")
local rust_cmds = require("hristotanev.commands.filetypes.rust")

local function build(file_name, ext)
	if ext == "rs" then
		rust_cmds.build()
		return
	end

	if ext == "c" then
		clang_cmds.build(file_name)
		return
	end
end

local function run(file_name, ext)
	if ext == "rs" then
		rust_cmds.run()
		return
	end

	if ext == "c" then
		clang_cmds.run(file_name)
		return
	end
end

C.build = build
C.run = run

return C
