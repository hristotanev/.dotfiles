local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd("packadd packer.nvim")
end

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	use("mhartington/oceanic-next")
	use("nvim-lualine/lualine.nvim", { branch = "main" })

	-- Language specific
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jay-babu/mason-null-ls.nvim")
	use("mhartington/formatter.nvim")
	use("lervag/vimtex")
	use("L3MON4D3/LuaSnip", { tag = "v<CurrentMajor>.*", run = "make install_jsregexp" })
	use("saadparwaiz1/cmp_luasnip")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- Misc
	use("folke/zen-mode.nvim")
	use("fedepujol/move.nvim")
	use("vimwiki/vimwiki")
	use("mbbill/undotree")
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")
	use("tpope/vim-surround")
	use("gelguy/wilder.nvim")
	use("editorconfig/editorconfig-vim")
	use("nvim-lua/plenary.nvim")
	use("nvim-telescope/telescope.nvim")
	use("nvim-telescope/telescope-file-browser.nvim")
	use("nvim-treesitter/playground")
	use("nvim-tree/nvim-tree.lua")
	use("nvim-tree/nvim-web-devicons")
end)
