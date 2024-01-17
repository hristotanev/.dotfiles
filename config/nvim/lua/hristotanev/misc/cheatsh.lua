local utils = require("hristotanev.common.utils")
local nnoremap = require("hristotanev.common.keymaps").nnoremap

local function cheatsh()
	local lang = vim.fn.input("Enter language: ")
	local keywords = vim.fn.input("Search: ")

	local search = vim.fn.join(vim.fn.split(keywords, " "), "+")
	utils.exec_cmd_in_term({ "curl", "cht.sh/" .. lang .. "/" .. search })
end

nnoremap("<leader>ch", cheatsh)
