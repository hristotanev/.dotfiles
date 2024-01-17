local C = {}
local utils = require("hristotanev.common.utils")

local exec_cmd_in_term = utils.exec_cmd_in_term

local function run(file_name)
	local command
	local file = vim.fs.find(function(name, _)
		return name:match(".*.cabal")
	end, {
		upward = true,
		type = "file",
	})[1]

	if file ~= nil then
		command = { "cbl", "run" }
	else
		command = {
			"ghc",
			file_name .. ".hs",
			"&&",
			"./" .. file_name,
		}
	end

	exec_cmd_in_term(command)
end

C.run = run

return C
