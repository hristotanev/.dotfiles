local M = {}
local nnoremap = require("hristotanev.common.keymaps").nnoremap

local function capabilities()
	local caps = vim.lsp.protocol.make_client_capabilities()
	return require("cmp_nvim_lsp").default_capabilities(caps)
end

local function on_attach()
	return function()
		nnoremap("<leader>i", vim.lsp.buf.hover, { buffer = 0 })
		nnoremap("<leader>dj", vim.diagnostic.goto_prev, { buffer = 0 })
		nnoremap("<leader>dk", vim.diagnostic.goto_next, { buffer = 0 })
		nnoremap("<leader>r", vim.lsp.buf.rename, { buffer = 0 })
		nnoremap("<leader>rn", ":Run<CR>", { silent = true, buffer = 0 })
		nnoremap("<leader>id", function()
			local opts = {
				focusable = false,
				close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
				border = "rounded",
				source = "always",
				prefix = " ",
				scope = "cursor",
			}

			vim.diagnostic.open_float(nil, opts)
		end, { silent = true, buffer = 0 })
	end
end

M.capabilities = capabilities()
M.on_attach = on_attach()

return M
