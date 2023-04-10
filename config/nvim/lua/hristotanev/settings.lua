vim.cmd([[
  syntax on
  filetype plugin indent on 
  colorscheme OceanicNext
  highlight WinSeparator guibg=None
]])
vim.g.rust_recommended_style = 0
vim.o.laststatus = 3
vim.bo.tw = 120
vim.wo.cursorline = true
vim.wo.wrap = false
vim.o.swapfile = false
vim.o.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.bo.undofile = true
vim.wo.nu = true
vim.wo.rnu = true
vim.o.showmatch = true
vim.o.encoding = "utf8"
vim.o.showtabline = 2
vim.o.lazyredraw = true
vim.bo.synmaxcol = 300
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.o.termguicolors = true
vim.opt.completeopt = "menu,menuone,noselect"
