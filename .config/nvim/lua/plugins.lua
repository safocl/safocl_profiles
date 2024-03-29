local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
		vim.cmd([[packadd packer.nvim]])
		return true
	end
	return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
	use("neovim/nvim-lspconfig")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-nvim-lsp-signature-help")
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin

	use("p00f/clangd_extensions.nvim")
	use("mhartington/formatter.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
			ts_update()
		end,
	})

	use({
		"paopaol/cmp-doxygen",
		requires = {
			"nvim-treesitter/nvim-treesitter",
			"nvim-treesitter/nvim-treesitter-textobjects",
		},
	})

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use({
		"ray-x/lsp_signature.nvim",
	})

	use({
		"kyazdani42/nvim-web-devicons",
	})

	use({
		"nvim-lualine/lualine.nvim",
		--requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"tamago324/lir.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			--{ "kyazdani42/nvim-web-devicons" },
		},
	})

	--use({ "nvim-telescope/telescope-file-browser.nvim" })

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.2",
		-- or
		-- branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use({
		"folke/trouble.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		config = {},
	})

	use({
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
	})

	-- use({
	-- 	"regen100/cmake-language-server",
	-- })
end)

-- local function bootstrap_pckr()
--   local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"
--
--   if not vim.loop.fs_stat(pckr_path) then
--     vim.fn.system({
--       'git',
--       'clone',
--       "--filter=blob:none",
--       'https://github.com/lewis6991/pckr.nvim',
--       pckr_path
--     })
--   end
--
--   vim.opt.rtp:prepend(pckr_path)
-- end
--
-- bootstrap_pckr()
--
-- require('pckr').add{
-- 	'neovim/nvim-lspconfig',
-- --	"hrsh7th/cmp-nvim-lsp",
-- --	"hrsh7th/cmp-nvim-lua",
-- --	"hrsh7th/cmp-buffer",
-- --	"hrsh7th/cmp-path",
-- --	"hrsh7th/cmp-cmdline",
-- --	"hrsh7th/nvim-cmp",
-- --	"hrsh7th/cmp-nvim-lsp-signature-help",
-- --	"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
-- --	"L3MON4D3/LuaSnip", -- Snippets plugin
-- --
-- --	"p00f/clangd_extensions.nvim",
-- --	"mhartington/formatter.nvim",
-- --
-- --	{
-- --		"nvim-treesitter/nvim-treesitter",
-- --		run = function()
-- --			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
-- --			ts_update()
-- --		end,
-- --	},
-- --
-- --	{
-- --		"paopaol/cmp-doxygen",
-- --		requires = {
-- --			"nvim-treesitter/nvim-treesitter",
-- --			"nvim-treesitter/nvim-treesitter-textobjects",
-- --		},
-- --	},
-- --
-- --	{
-- --		"windwp/nvim-autopairs",
-- --		config = function()
-- --			require("nvim-autopairs").setup({})
-- --		end,
-- --	},
-- --
-- --	"ray-x/lsp_signature.nvim",
-- --
-- --	"kyazdani42/nvim-web-devicons",
-- --
-- --	{
-- --		"nvim-lualine/lualine.nvim",
-- --		--requires = { "kyazdani42/nvim-web-devicons", opt = true },
-- --	},
-- --
-- --	{
-- --		"lewis6991/gitsigns.nvim",
-- --		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
-- --		config = function()
-- --			require("gitsigns").setup()
-- --		end,
-- --	},
-- --
-- --	{
-- --		"tamago324/lir.nvim",
-- --		requires = {
-- --			{ "nvim-lua/plenary.nvim" },
-- --			--{ "kyazdani42/nvim-web-devicons" },
-- --		},
-- --	},
-- --
-- --	--{ "nvim-telescope/telescope-file-browser.nvim" },
-- --
-- --	{
-- --		"nvim-telescope/telescope.nvim",
-- --		tag = "0.1.2",
-- --		-- or
-- --		-- branch = '0.1.x',
-- --		requires = { { "nvim-lua/plenary.nvim" } },
-- --	},
-- --
-- --	{
-- --		"numToStr/Comment.nvim",
-- --		config = function()
-- --			require("Comment").setup()
-- --		end,
-- --	},
-- --
-- --	{
-- --		"folke/trouble.nvim",
-- --		requires = { "nvim-tree/nvim-web-devicons" },
-- --		config = {},
-- --	},
--
-- 	-- 	"regen100/cmake-language-server",
-- }
