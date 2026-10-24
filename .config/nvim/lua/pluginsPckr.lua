local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

	if not (vim.uv or vim.loop).fs_stat(pckr_path) then
		vim.fn.system({
			"git",
			"clone",
			"--filter=blob:none",
			"https://github.com/lewis6991/pckr.nvim",
			pckr_path,
		})
	end

	vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require("pckr").add({
	-- TODO: use("nvim surround")
	"neovim/nvim-lspconfig",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-cmdline",
	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-nvim-lsp-signature-help",
	"saadparwaiz1/cmp_luasnip", -- Snippets source for nvim-cmp
	"L3MON4D3/LuaSnip", -- Snippets plugin


	"p00f/clangd_extensions.nvim",
	"mhartington/formatter.nvim",

	{
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	},

	-- {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		run = function()
	-- 			local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
	-- 			ts_update()
	-- 		end,
	-- 	},

	-- {
	-- 	"paopaol/cmp-doxygen",
	-- 	requires = {
	-- 		"nvim-treesitter/nvim-treesitter",
	-- 		"nvim-treesitter/nvim-treesitter-textobjects",
	-- 	},
	-- },

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},

	{
		"ray-x/lsp_signature.nvim",
	},

	{
		"kyazdani42/nvim-web-devicons",
	},

	{
		"nvim-lualine/lualine.nvim",
		--requires = { "kyazdani42/nvim-web-devicons", opt = true },
	},

	{
		"lewis6991/gitsigns.nvim",
		-- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
		config = function()
			require("gitsigns").setup()
		end,
	},

	{
		"tamago324/lir.nvim",
		requires = {
			{ "nvim-lua/plenary.nvim" },
			--{ "kyazdani42/nvim-web-devicons" },
		},
	},

	--{ "nvim-telescope/telescope-file-browser.nvim" };

	{
		"nvim-telescope/telescope.nvim",
		-- tag = "0.1.2",
		-- or
		-- branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	},

	{
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	},

	{
		"folke/trouble.nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
		-- config = {},
	},

	{
		"akinsho/flutter-tools.nvim",
		requires = {
			"nvim-lua/plenary.nvim",
			"stevearc/dressing.nvim", -- optional for vim.ui.select
		},
	},

	-- use({
	-- 	"regen100/cmake-language-server",
	-- };

	"Mofiqul/vscode.nvim",
	
	"folke/tokyonight.nvim",
})
