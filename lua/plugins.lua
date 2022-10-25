-- auto :PackerSync on save
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim' }
	use {
		"akinsho/toggleterm.nvim",
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	}
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			'nvim-tree/nvim-web-devicons' -- optional, for file icons
		},
		tag = 'nightly' -- optional, updated every week. (see issue #1193)
	}
	use {
		'windwp/nvim-autopairs',
		config = function()
			require('nvim-autopairs').setup {}
		end
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use { 'folke/tokyonight.nvim' }
	use { 'jose-elias-alvarez/null-ls.nvim' }
	use {
		'terrortylor/nvim-comment',
		config = function()
			require('nvim_comment').setup()
		end
	}
	use {
		"folke/which-key.nvim",
		config = function()
			require("which-key").setup {}
		end
	}
	use { 'mattn/emmet-vim' }
	use { 'nvim-telescope/telescope.nvim', tag = '0.1.0', requires = { { 'nvim-lua/plenary.nvim' } } }
	use { "lukas-reineke/indent-blankline.nvim" }
	use { 'p00f/nvim-ts-rainbow' }
	use { "tpope/vim-vinegar" }
	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons',
		config = function()
			require("bufferline").setup {}
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true },
		config = function()
			require('lualine').setup()
		end
	}
	use { 'glepnir/dashboard-nvim' }
	use { 'windwp/nvim-ts-autotag' }

	---LSP-----------------------------------------------
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "neovim/nvim-lspconfig" }
	use { "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" }
	use { 'saadparwaiz1/cmp_luasnip' }
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'onsails/lspkind.nvim' }
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}
end)
