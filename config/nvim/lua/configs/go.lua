local group = vim.api.nvim_create_augroup("GoOrganiseImports", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.go"},
  command = ":silent call CocAction('runCommand', 'editor.action.organizeImport')",
  group = group
})
