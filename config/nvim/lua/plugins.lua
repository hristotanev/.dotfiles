local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.nvim/plugged')

Plug ('glepnir/galaxyline.nvim' , {branch = 'main'})
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'mhartington/oceanic-next'
Plug 'mhinz/vim-startify'
Plug 'dense-analysis/ale'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mbbill/undotree'
Plug 'tpope/vim-commentary'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug ('neoclide/coc.nvim', {branch = 'release'})
Plug 'lervag/vimtex'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'nvim-treesitter/playground'
Plug 'gelguy/wilder.nvim'
Plug 'gaborvecsei/memento.nvim'
Plug ('darrikonn/vim-gofmt', { ['do'] = ':GoUpdateBinaries' })

vim.call('plug#end')
