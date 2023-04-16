local M = {}

local function capabilities()
	local caps = vim.lsp.protocol.make_client_capabilities()
	return require("cmp_nvim_lsp").default_capabilities(caps)
end

local function on_attach()
	local nnoremap = require("hristotanev.common.keymaps").nnoremap

	return function()
		nnoremap("<leader>dj", vim.diagnostic.goto_prev, { buffer = 0 })
		nnoremap("<leader>dk", vim.diagnostic.goto_next, { buffer = 0 })
		nnoremap("<leader>r", vim.lsp.buf.rename, { buffer = 0 })
		nnoremap("<leader>b", ":Build<CR>", { silent = true, buffer = 0 })
		nnoremap("<leader>rn", ":Run<CR>", { silent = true, buffer = 0 })
	end
end

M.capabilities = capabilities()
M.on_attach = on_attach()

return M
