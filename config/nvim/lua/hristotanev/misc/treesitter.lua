require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'cpp',
    'go',
    'svelte',
    'vim',
    'lua',
    'latex',
    'typescript'
  },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  }
})
