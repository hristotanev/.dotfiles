local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd('packadd packer.nvim')
end

return require('packer').startup(function (use)
  use('wbthomason/packer.nvim')

  use {
    "startup-nvim/startup.nvim",
    requires = {"nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim"},
    config = function()
      require"startup".setup({ theme = "dashboard" })
    end
  }

  use('editorconfig/editorconfig-vim')

  use('mhartington/oceanic-next')
  use('glepnir/galaxyline.nvim' , { branch = 'main' })

  -- Better fuzzy search)
  use('nvim-lua/plenary.nvim')
  use('nvim-telescope/telescope.nvim')

  -- Parser generation for NeoVim)
  use('nvim-treesitter/nvim-treesitter')
  use('nvim-treesitter/playground')

  -- Language specific)
  use('lervag/vimtex')
  use('darrikonn/vim-gofmt', { run = ':GoUpdateBinaries' })

  -- LSP)
  use('neovim/nvim-lspconfig')

  -- Auto completion)
  use('hrsh7th/cmp-nvim-lsp')
  use('hrsh7th/cmp-buffer')
  use('hrsh7th/cmp-path')
  use('hrsh7th/cmp-cmdline')
  use('hrsh7th/nvim-cmp')

  -- Snippets)
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')

  -- Debugging)
  use('mfussenegger/nvim-dap')
  use('leoluz/nvim-dap-go')

  -- Misc)
  use('mbbill/undotree')
  use('tpope/vim-commentary')
  use('preservim/nerdtree')
  use('tpope/vim-fugitive')
  use('tpope/vim-surround')
  use('gelguy/wilder.nvim')
  use('gaborvecsei/memento.nvim')
  use('ThePrimeagen/vim-be-good')

  -- Devicons)
  use('kyazdani42/nvim-web-devicons')
end)
