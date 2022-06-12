local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

-- Theme
Plug 'mhinz/vim-startify'
Plug 'mhartington/oceanic-next'
Plug ('glepnir/galaxyline.nvim' , {branch = 'main'})

-- Better fuzzy search
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

-- Parser generation for NeoVim
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'

-- Language specific
Plug 'lervag/vimtex'
Plug ('darrikonn/vim-gofmt', { ['do'] = ':GoUpdateBinaries' })

-- LSP
Plug 'neovim/nvim-lspconfig'

-- Auto completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'

-- Snippets
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'

-- Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'leoluz/nvim-dap-go'

-- Misc
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'gelguy/wilder.nvim'
Plug 'gaborvecsei/memento.nvim'

Plug 'ThePrimeagen/vim-be-good'

-- Devicons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

vim.call('plug#end')
