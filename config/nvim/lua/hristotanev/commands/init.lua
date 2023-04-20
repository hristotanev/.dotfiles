local C = {}
local clang_cmds = require("hristotanev.commands.filetypes.c")
local rust_cmds = require("hristotanev.commands.filetypes.rust")

local buildTable = {
	["c"] = function(file_name)
		clang_cmds.build(file_name)
	end,
	["rs"] = function(file_name)
		rust_cmds.build()
	end,
}

local function build(file_name, ext)
	buildTable[ext](file_name)
end

local runTable = {
	["c"] = function(file_name)
		clang_cmds.run(file_name)
	end,
	["rs"] = function(file_name)
		rust_cmds.run()
	end,
}

local function run(file_name, ext)
	runTable[ext](file_name)
end

C.build = build
C.run = run

return C
