local nnoremap = require("hristotanev.common.keymaps").nnoremap

require("telescope").setup({
	defaults = {
		prompt_prefix = " ",
		file_ignore_patterns = { ".*/node_modules/.*" },
	},
	pickers = {
		man_pages = {
			sections = { "ALL" },
		},
		cd_history = {},
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = false,
		},
	},
})

nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>bf", "<cmd>lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>mn", "<cmd>lua require('telescope.builtin').man_pages()<CR>")
nnoremap("<leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<CR>")
nnoremap("<leader>hi", "<cmd>lua require('telescope.builtin').command_history()<CR>")
nnoremap("<leader><leader>df", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>")
nnoremap("<leader><leader>rf", "<cmd>lua require('telescope.builtin').lsp_references()<CR>")
nnoremap("<leader>ht", "<cmd>lua require('telescope.builtin').help_tags()<CR>")

local function get_cd_directories()
	local pwd = vim.api.nvim_exec2("pwd", { output = true })["output"]
	local file = assert(io.open(os.getenv("HOME") .. "/.zsh_history", "r"), ".zsh_history file does not exists.")

	local commands = {}
	while true do
		local line = file:read()
		if line == nil then
			break
		end

		local _, _, _, command = string.find(line, "(.*);(.*)")
		if command ~= nil then
			if string.find(command, "^cd%s+.*") ~= nil then
				local _, _, directory = string.find(command, "^cd%s+(.*)")
				if commands[directory] == nil and vim.fn.isdirectory(pwd .. "/" .. directory) ~= 0 then
					commands[directory] = directory
				end
			end
		end
	end

	file:close()

	local result = {}
	for directory in pairs(commands) do
		table.insert(result, directory)
	end

	return result
end

nnoremap("<leader>cd", function()
	local actions = require("telescope.actions")

	require("telescope.pickers")
		.new({}, {
			prompt_title = "'cd' commands",
			finder = require("telescope.finders").new_table({
				results = get_cd_directories(),
			}),
			sorter = require("telescope.sorters").get_generic_fuzzy_sorter(),
			attach_mappings = function(prompt_bufnr)
				actions.select_default:replace(function()
					actions.close(prompt_bufnr)

					local selection = require("telescope.actions.state").get_selected_entry()
					vim.cmd("cd " .. selection[1])

					require("hristotanev.common.utils").nuke()
					require("nvim-tree.api").tree.open()
				end)

				return true
			end,
		})
		:find()
end, { silent = true })
