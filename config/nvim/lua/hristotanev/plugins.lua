local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd('packadd packer.nvim')
end

return require('packer').startup(function (use)
  use('wbthomason/packer.nvim')
  use('startup-nvim/startup.nvim')
  use('mhartington/oceanic-next')
  use('glepnir/galaxyline.nvim' , { branch = 'main' })

  -- Language specific
  use('lervag/vimtex')
  use('darrikonn/vim-gofmt', { run = ':GoUpdateBinaries' })
  use('L3MON4D3/LuaSnip', {tag = 'v<CurrentMajor>.*', run = 'make install_jsregexp'})
  use('saadparwaiz1/cmp_luasnip')
  use('mfussenegger/nvim-dap')
  use('leoluz/nvim-dap-go')
  use('neovim/nvim-lspconfig')
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')
  use('nvim-treesitter/nvim-treesitter')

  -- Misc
  use('vimwiki/vimwiki')
  use('mbbill/undotree')
  use('tpope/vim-commentary')
  use('preservim/nerdtree')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('gelguy/wilder.nvim')
  use('gaborvecsei/memento.nvim')
  use('ThePrimeagen/vim-be-good')
  use('editorconfig/editorconfig-vim')
  use('folke/twilight.nvim')
  use('folke/zen-mode.nvim')
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')
  use('nvim-telescope/telescope-file-browser.nvim')
  use('nvim-treesitter/playground')
  use('kyazdani42/nvim-web-devicons')
end)
