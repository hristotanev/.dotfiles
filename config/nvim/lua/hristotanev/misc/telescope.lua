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
	},
	extensions = {
		file_browser = {
			theme = "ivy",
			hijack_netrw = false,
		},
	},
})

require("telescope").load_extension("file_browser")
nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
nnoremap("<leader>bf", "<cmd>lua require('telescope.builtin').buffers()<CR>")
nnoremap("<leader>lg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
nnoremap("<leader>mn", "<cmd>lua require('telescope.builtin').man_pages()<CR>")
nnoremap("<leader>gc", "<cmd>lua require('telescope.builtin').git_commits()<CR>")
nnoremap("<leader>hi", "<cmd>lua require('telescope.builtin').command_history()<CR>")
nnoremap("<leader><leader>df", "<cmd>lua require('telescope.builtin').lsp_definitions()<CR>")
nnoremap("<leader><leader>rf", "<cmd>lua require('telescope.builtin').lsp_references()<CR>")
nnoremap("<leader>ht", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
