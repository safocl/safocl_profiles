return require("packer").startup(function(use)
	use("p00f/clangd_extensions.nvim")
	use("mhartington/formatter.nvim")

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

	--use({
	--"nvim-tree/nvim-tree.lua",
	--requires = {
	--"nvim-tree/nvim-web-devicons", -- optional, for file icons
	--},
	--tag = "nightly", -- optional, updated every week. (see issue #1193)
	--})
end)
