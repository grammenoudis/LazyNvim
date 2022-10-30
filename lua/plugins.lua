-- auto :PackerSync on save
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

return require('packer').startup(function(use)
	use { 'stevearc/overseer.nvim' }
	use { 'stevearc/dressing.nvim' }
	use { 'wbthomason/packer.nvim' }
	use({ "glepnir/lspsaga.nvim", branch = "main" })
	use {
		'norcalli/nvim-colorizer.lua',
		config = function()
			require 'colorizer'.setup({ '*' }, {
				RGB = true, -- #RGB hex codes
				RRGGBB = true, -- #RRGGBB hex codes
				names = true, -- "Name" codes like Blue
				RRGGBBAA = true, -- #RRGGBBAA hex codes
				rgb_fn = true, -- CSS rgb() and rgba() functions
				hsl_fn = true, -- CSS hsl() and hsla() functions
				css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
				css_fn = true -- Enable all CSS *functions*: rgb_fn, hsl_fn
			})

		end
	}
	use({
		"ziontee113/color-picker.nvim",
		config = function()
			require("color-picker")
		end
	})
	use { 'kdheepak/lazygit.nvim' }
	use { 'rcarriga/nvim-notify' }
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
		event = 'BufWinEnter',
		config = function()
			require('nvim-autopairs').setup {}
		end
	}
	use { "nvim-telescope/telescope-file-browser.nvim" }
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate',
		event = 'BufWinEnter',
		config = function()
			require 'nvim-treesitter.configs'.setup {
				autotag = { enable = true },
				sync_install = true,
				auto_install = true,
				highlight = {
					enable = true,
					disable = { "c", "rust" },

					additional_vim_regex_highlighting = { 'org' }
				}
			}
		end
	}
	use { 'folke/tokyonight.nvim' }
	use { 'jose-elias-alvarez/null-ls.nvim' }
	use {
		'terrortylor/nvim-comment',
		event = 'BufWinEnter',
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
	use { "lukas-reineke/indent-blankline.nvim", event = "BufRead", config = "require'indent'" }
	use { "tpope/vim-vinegar" }
	use {
		'akinsho/bufferline.nvim',
		tag = "v2.*",
		requires = 'kyazdani42/nvim-web-devicons',
		event = 'BufRead',
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
	use { 'windwp/nvim-ts-autotag', event = "BufWinEnter" }

	---LSP-----------------------------------------------
	use { 'hrsh7th/nvim-cmp' }
	use { 'hrsh7th/cmp-nvim-lsp' }

	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }
	use { "neovim/nvim-lspconfig" }

	use {
		"L3MON4D3/LuaSnip",
		after = "nvim-cmp",
		config = function()

			require("luasnip.loaders.from_vscode").lazy_load()
		end
	}
	use { 'saadparwaiz1/cmp_luasnip', after = "nvim-cmp" }
	use { 'hrsh7th/cmp-buffer', after = "nvim-cmp" }
	use { 'hrsh7th/cmp-path', after = "nvim-cmp" }
	use { 'hrsh7th/cmp-cmdline', after = "nvim-cmp" }
	use { 'onsails/lspkind.nvim' }
	use {
		'lewis6991/gitsigns.nvim',
		event = "BufWinEnter",
		config = function()
			require('gitsigns').setup()
		end
	}
end)
