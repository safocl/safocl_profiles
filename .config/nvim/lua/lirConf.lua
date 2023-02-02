local actions = require("lir.actions")
local mark_actions = require("lir.mark.actions")
local clipboard_actions = require("lir.clipboard.actions")

require("lir").setup({
	float = {
		winblend = 0,
		curdir_window = {
			enable = true,
			highlight_dirname = false,
		},
	},
	mappings = {
		["l"] = actions.edit,
		["<C-s>"] = actions.split,
		["<C-v>"] = actions.vsplit,
		["<C-t>"] = actions.tabedit,

		["h"] = actions.up,
		["q"] = actions.quit,

		["K"] = actions.mkdir,
		["N"] = actions.newfile,
		["R"] = actions.rename,
		["@"] = actions.cd,
		["Y"] = actions.yank_path,
		["."] = actions.toggle_show_hidden,
		["D"] = actions.delete,

		["J"] = function()
			mark_actions.toggle_mark()
			vim.cmd("normal! j")
		end,
		["C"] = clipboard_actions.copy,
		["X"] = clipboard_actions.cut,
		["P"] = clipboard_actions.paste,
	},
})
local lirToggle = require("lir.float").toggle
vim.keymap.set("n", "<C-n>", lirToggle)

--vim.api.nvim_create_autocmd({ "FileType" }, {
--pattern = { "lir" },
--callback = function()
---- use visual mode
--vim.api.nvim_buf_set_keymap(
--0,
--"x",
--"J",
--':<C-u>lua require"lir.mark.actions".toggle_mark("v")<CR>',
--{ noremap = true, silent = true }
--)

---- echo cwd
--vim.api.nvim_echo({ { vim.fn.expand("%:p"), "Normal" } }, false, {})
--end,
--})

--custom folder icon
require("nvim-web-devicons").set_icon({
	lir_folder_icon = {
		icon = "",
		color = "#7ebae4",
		name = "LirFolderNode",
	},
})
