local api = vim.api

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		lua = {
			require("formatter.filetypes.lua").stylua,
		},
		go = {
			require("formatter.filetypes.go").gofmt,
			require("formatter.filetypes.go").goimports,
		},
		c = {
			require("formatter.filetypes.c").clangformat,
		},
		rust = {
			function()
				return {
					exe = "rustfmt",
					args = {
						"--edition",
						"2021",
						"--config",
						"tab_spaces=2",
					},
				}
			end,
		},
		any = {
			require("formatter.filetypes.any").remove_trailing_whitespace,
		},
	},
})

local formatGroup = api.nvim_create_augroup("FormatGroup", {
	clear = true,
})

api.nvim_create_autocmd({ "BufEnter", "BufWritePost" }, {
	command = ":FormatWrite",
	group = formatGroup,
})
