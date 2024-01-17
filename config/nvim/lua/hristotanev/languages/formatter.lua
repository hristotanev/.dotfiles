local api = vim.api
local filetypes = require("formatter.filetypes")

require("formatter").setup({
	logging = true,
	log_level = vim.log.levels.WARN,
	filetype = {
		any = {
			filetypes.any.remove_trailing_whitespace,
		},
		c = {
			filetypes.c.clangformat,
		},
		go = {
			filetypes.go.gofmt,
			filetypes.go.goimports,
		},
		html = {
			function()
				return {
					exe = "htmlbeautifier",
				}
			end,
		},
		haskell = {
			filetypes.haskell.stylish_haskell,
		},
		java = {
			filetypes.java.clangformat,
		},
		python = {
			filetypes.python.yapf,
		},
		latex = {
			filetypes.latex.latexindent,
		},
		lua = {
			filetypes.lua.stylua,
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
		sh = {
			filetypes.sh.shfmt,
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
