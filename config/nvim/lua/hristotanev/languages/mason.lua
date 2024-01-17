require("mason").setup()

local lsp = require("hristotanev.common.lsp")
local mason_lsp = require("mason-lspconfig")
local mason_null_ls = require("mason-null-ls")

mason_null_ls.setup({
	ensure_installed = {
		"clang-format",
		"latexindent",
		"stylua",
		"shfmt",
		"yapf",
	},
	automatic_installation = true,
})

mason_lsp.setup({
	ensure_installed = {
		"bashls",
		"clangd",
		"dockerls",
		"html",
		"hls",
		"ltex",
		"lua_ls",
		"pylyzer",
		"rust_analyzer",
		"svelte",
		"sqlls",
		"vimls",
	},
	automatic_installation = true,
})

mason_lsp.setup_handlers({
	function(server_name)
		require("lspconfig")[server_name].setup({
			capabilities = lsp.capabilities,
			on_attach = lsp.on_attach,
		})
	end,
	["lua_ls"] = function()
		require("lspconfig").lua_ls.setup({
			capabilities = lsp.capabilities,
			on_attach = lsp.on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim" },
					},
				},
			},
		})
	end,
	["rust_analyzer"] = function()
		require("lspconfig").rust_analyzer.setup({
			capabilities = lsp.capabilities,
			on_attach = function()
				lsp.on_attach()

				local nnoremap = require("hristotanev.common.keymaps").nnoremap
				local cmds = require("hristotanev.commands.filetypes.rust")

				nnoremap("<leader>zz", function()
					cmds.explain_error()
				end, { silent = true, buffer = 0 })
			end,
		})
	end,
})
