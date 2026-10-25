require("pluginsPckr")

if vim.env.COLORTERM == "truecolor" then
	vim.o.termguicolors = true
end

-- vim.o.background = "light"
vim.o.background = "dark"

--     vim.cmd('packadd vscode.nvim')
vim.cmd.colorscheme("vscode")
-- vim.cmd.colorscheme("tokyonight-day")
-- vim.cmd.colorscheme("shine")
-- vim.cmd.colorscheme("saf_003")

vim.notify("background is " .. vim.o.background, nil, nil)
vim.o.cursorline = true

vim.o.clipboard = "unnamedplus"
-- vim.keymap.set("v", "<C-S-c>", "_dP", {})

vim.o.number = true
-- vim.o.selectmode = "mouse"

vim.o.autoindent = true
vim.o.smartindent = true
vim.o.smarttab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.g.noswapfile = true

require("lspConfigs")
require("lspSignature")
require("autopairs")
require("format")
require("lualineConfig")
require("lirConf")

require("Comment").setup()

--require("telescope").load_extension("file_browser")
--vim.api.nvim_set_keymap("n", "<C-n>", ":Telescope file_browser<CR>", { noremap = true })

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "cpp", "c", "cmake", "bash" },
	callback = function()
		vim.treesitter.start()
	end,
})

vim.opt.runtimepath:append("~/.local/share/nvim/treesitter/parsers")

local tBuiltin = require("telescope.builtin")
vim.keymap.set("n", "<F5>", tBuiltin.find_files, {})
vim.keymap.set("n", "<F6>", tBuiltin.live_grep, {})
vim.keymap.set("n", "<F7>", tBuiltin.buffers, {})
vim.keymap.set("n", "<F8>", tBuiltin.help_tags, {})

vim.keymap.set("n", "<F4>", ":ClangdSwitchSourceHeader<CR>", {})
vim.keymap.set("n", "<F1>", ":ClangdAST<CR>", {})
vim.keymap.set("n", "<F2>", ":ClangdTypeHierarchy<CR>", {})

--require("nvim-tree").setup()
--vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", {})

local is_esp_project = function(root_dir)
	local esp_config_file = root_dir .. "/sdkconfig"

	if vim.fn.filereadable(esp_config_file) == 1 then
		-- vim.notify("This is esp project, esp config file is " .. esp_config_file)
		return true
	else
		-- vim.notify("This is not esp project")
		return false
	end
end

local get_clang_cmd = function(new_root_dir)
	local default_cmd = {
		"clangd",
		"--experimental-modules-support",
		"--pch-storage=memory",
	}

	if not new_root_dir then
		return default_cmd
	end

	if is_esp_project(new_root_dir) then
		return {
			os.getenv("HOME") .. "/.espressif/tools/esp-clangd/esp-21.1.3_20260408/esp-clangd/bin/clangd",
			"--query-driver=**",
			"--resource-dir="
				.. os.getenv("HOME")
				.. "/.espressif/tools/esp-clang/esp-21.1.3_20260408/esp-clang/lib/clang/21",
			"--header-insertion=never",
		}
	else
		table.insert(default_cmd, "--compile-commands-dir=" .. new_root_dir .. "/build")
		return default_cmd
	end
end

vim.lsp.config.clangd = {
	capabilities = (function()
		local caps = require("cmp_nvim_lsp").default_capabilities()
		caps.offsetEncoding = { "utf-16" }
		return caps
	end)(),
	cmd = get_clang_cmd(vim.fn.getcwd()),
	before_init = function(params, config)
		local new_root_dir = params.rootPath or (params.rootUri and vim.uri_to_fname(params.rootUri))
		config.cmd = get_clang_cmd(new_root_dir)
	end,
}

vim.lsp.enable("clangd")

require("clangd_extensions").setup({
	extensions = {
		-- defaults:
		-- Automatically set inlay hints (type hints)
		autoSetHints = false,
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

require("flutter-tools").setup({ fvm = true })
