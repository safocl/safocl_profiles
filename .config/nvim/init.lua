require("plugins")

vim.o.background = "dark"
vim.cmd.colorscheme("newcolor")
vim.notify("background is " .. vim.o.background, nil, nil)
vim.o.cursorline = true

vim.o.number = true
vim.o.selectmode = "mouse"

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.g.noswapfile = true

if vim.env.COLORTERM == "truecolor" then
	vim.o.termguicolors = true
end

require("lspConfigs")
require("lspSignature")
require("autopairs")
require("format")
require("lualineConfig")
require("lirConf")

require("Comment").setup()

--require("telescope").load_extension("file_browser")
--vim.api.nvim_set_keymap("n", "<C-n>", ":Telescope file_browser<CR>", { noremap = true })

require("nvim-treesitter.configs").setup({
	parser_install_dir = "~/.local/share/nvim/treesitter/parsers",

	-- A list of parser names, or "all"
	ensure_installed = {},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = false,

	-- List of parsers to ignore installing (for "all")
	ignore_install = { "javascript" },

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		-- `false` will disable the whole extension
		enable = true,

		-- NOTE: these are the names of the parsers and not the filetype. (for example if you want to
		-- disable highlighting for the `tex` filetype, you need to include `latex` in this list as this is
		-- the name of the parser)
		-- list of language that will be disabled
		disable = {},
		-- Or use a function for more flexibility, e.g. to disable slow treesitter highlight for large files
		--		disable = function(lang, buf)
		--			local max_filesize = 1024 * 1024 -- 100 KB
		--			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
		--			if ok and stats and stats.size > max_filesize then
		--				return true
		--			end
		--		end,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})

vim.opt.runtimepath:append("~/.local/share/nvim/treesitter/parsers")

local tBuiltin = require("telescope.builtin")
vim.keymap.set("n", "<F5>", tBuiltin.find_files, {})
vim.keymap.set("n", "<F6>", tBuiltin.live_grep, {})
vim.keymap.set("n", "<F7>", tBuiltin.buffers, {})
vim.keymap.set("n", "<F8>", tBuiltin.help_tags, {})

vim.keymap.set("n", "<F4>", ":ClangdSwitchSourceHeader<CR>", {})
vim.keymap.set("n", "<F1>", ":ClangAST<CR>", {})
vim.keymap.set("n", "<F2>", ":ClangdTypeHierarchy<CR>", {})

--require("nvim-tree").setup()
--vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

require("clangd_extensions").setup({
	server = {

		-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
		require("lspconfig")["clangd"].setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
		}),

		-- options to pass to nvim-lspconfig
		-- i.e. the arguments to require("lspconfig").clangd.setup({})
	},
	extensions = {
		-- defaults:
		-- Automatically set inlay hints (type hints)
		autoSetHints = true,
		-- These apply to the default ClangdSetInlayHints command
		inlay_hints = {
			-- Only show inlay hints for the current line
			only_current_line = false,
			-- Event which triggers a refersh of the inlay hints.
			-- You can make this "CursorMoved" or "CursorMoved,CursorMovedI" but
			-- not that this may cause  higher CPU usage.
			-- This option is only respected when only_current_line and
			-- autoSetHints both are true.
			only_current_line_autocmd = "CursorHold",
			-- whether to show parameter hints with the inlay hints or not
			show_parameter_hints = true,
			-- prefix for parameter hints
			parameter_hints_prefix = "<- ",
			-- prefix for all the other hints (type, chaining)
			other_hints_prefix = "=> ",
			-- whether to align to the length of the longest line in the file
			max_len_align = false,
			-- padding from the left if max_len_align is true
			max_len_align_padding = 1,
			-- whether to align to the extreme right or not
			right_align = false,
			-- padding from the right if right_align is true
			right_align_padding = 7,
			-- The color of the hints
			highlight = "Comment",
			-- The highlight group priority for extmark
			priority = 100,
		},
		ast = {
			-- These are unicode, should be available in any font
			role_icons = {
				type = "🄣",
				declaration = "🄓",
				expression = "🄔",
				statement = ";",
				specifier = "🄢",
				["template argument"] = "🆃",
			},
			kind_icons = {
				Compound = "🄲",
				Recovery = "🅁",
				TranslationUnit = "🅄",
				PackExpansion = "🄿",
				TemplateTypeParm = "🅃",
				TemplateTemplateParm = "🅃",
				TemplateParamObject = "🅃",
			},
			--[[ These require codicons (https://github.com/microsoft/vscode-codicons)
            role_icons = {
                type = "",
                declaration = "",
                expression = "",
                specifier = "",
                statement = "",
                ["template argument"] = "",
            },

            kind_icons = {
                Compound = "",
                Recovery = "",
                TranslationUnit = "",
                PackExpansion = "",
                TemplateTypeParm = "",
                TemplateTemplateParm = "",
                TemplateParamObject = "",
            }, ]]

			highlights = {
				detail = "Comment",
			},
		},
		memory_usage = {
			border = "none",
		},

		symbol_info = {
			border = "none",
		},
	},
})
