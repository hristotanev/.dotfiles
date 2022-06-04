require('lspconfig').ltex.setup{}

vim.g.vimtex_compiler_method = 'tectonic'
vim.g.vimtex_view_method = 'zathura'

local group = vim.api.nvim_create_augroup("VimtexLivePreview", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufWrite"}, {
  pattern = {"*.tex"},
  command = ":VimtexCompile",
  group = group
})
