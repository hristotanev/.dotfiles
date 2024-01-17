local C = {}
local clang_cmds = require("hristotanev.commands.filetypes.c")
local rust_cmds = require("hristotanev.commands.filetypes.rust")
local haskell_cmds = require("hristotanev.commands.filetypes.haskell")

local runTable = {
	["c"] = function(file_name)
		clang_cmds.run(file_name)
	end,
	["hs"] = function(file_name)
		haskell_cmds.run(file_name)
	end,
	["rs"] = function(file_name)
		rust_cmds.run()
	end,
}

local function run(file_name, ext)
	runTable[ext](file_name)
end

C.run = run

return C
