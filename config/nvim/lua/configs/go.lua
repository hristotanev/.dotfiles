local group = vim.api.nvim_create_augroup("GoGroup", {
  clear = true
})

vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.go"},
  callback = function ()
    vim.cmd([[
      :GoFmt
      :GoImports
    ]])
  end,
  group = group
})
