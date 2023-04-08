local api = vim.api

require("formatter").setup({
  logging = true,
  log_level = vim.log.levels.WARN,
  filetype = {
    go = {
      require("formatter.filetypes.go").gofmt,
      require("formatter.filetypes.go").goimports,
    },
    rust = {
      require("formatter.filetypes.rust").rustfmt,
    },
    any = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
  }
})

local formatGroup = api.nvim_create_augroup("FormatGroup", {
  clear = true
})

api.nvim_create_autocmd({"BufWritePost"}, {
  command = ':FormatWrite',
  group = formatGroup
})
