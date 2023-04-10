vim.g.vimtex_compiler_method = "tectonic"
vim.g.vimtex_view_method = "zathura"

local api = vim.api
local group = api.nvim_create_augroup("VimtexLivePreview", {
	clear = true,
})

api.nvim_create_autocmd({ "BufWrite" }, {
	pattern = { "*.tex" },
	command = ":VimtexCompile",
	group = group,
})
