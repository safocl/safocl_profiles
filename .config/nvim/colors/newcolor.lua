vim.cmd.hi("clear")
vim.cmd.syntax("reset")
vim.g.colors_name = "safcolor"

local function setStile(group, guifg, guibg, bold, italic, underline)
	local stile = {}

	stile.fg = guifg
	stile.bg = guibg
	stile.bold = bold
	stile.italic = italic
	stile.underline = underline

	vim.api.nvim_set_hl(0, group, stile)
end

--" GUI color definitions
local gui00 = "#222222"
local gui01 = "#333333"
local gui02 = "#444444"
local gui03 = "#555555"
local gui04 = "#666666"
local gui05 = "#777777"
local gui06 = "#888888"
local gui07 = "#999999"
local gui08 = "#aaaaaa"
local gui09 = "#bbbbbb"
local gui0A = "#cccccc"
local gui0B = "#dddddd"
local gui0C = "#dddddd"
local gui0D = "#ffffff"
local gui0E = "#ffffff"
local gui0F = "#ffffff"
local guiGD = "#4b7a4b"
local guiYe = "#d1c490"
local guiBlD = "#637a8f"
local guiBlL = "#1b86b3"
local guiMa = "#9a93ab"
local guiCian = "#7dc4e4"
local guiOr = "#867a6c"
local guiMember = "#5b88bc"
local guiSpecial = "#d08770"
local guiCurcor = "#93c184"
local guiComment = "#664444"
-- local guiComment = "#612f2f"

--" Vim editor colors
vim.api.nvim_set_hl(0, "Bold", { bold = true })
vim.api.nvim_set_hl(0, "Debug", { fg = gui08 })
vim.api.nvim_set_hl(0, "Directory", { fg = gui0D })
vim.api.nvim_set_hl(0, "Error", { fg = gui00, bg = gui08 })
vim.api.nvim_set_hl(0, "ErrorMsg", { fg = gui08, bg = gui00 })
vim.api.nvim_set_hl(0, "Exception", { fg = gui08 })
vim.api.nvim_set_hl(0, "FoldColumn", { fg = gui0C, bg = gui01 })
vim.api.nvim_set_hl(0, "Folded", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "IncSearch", { fg = gui01, bg = gui09 })
vim.api.nvim_set_hl(0, "Italic", { italic = true })
vim.api.nvim_set_hl(0, "Macro", { fg = guiGD })
vim.api.nvim_set_hl(0, "MatchParen", { fg = gui00, bg = gui03 })
vim.api.nvim_set_hl(0, "ModeMsg", { fg = gui0B })
vim.api.nvim_set_hl(0, "MoreMsg", { fg = gui0B })
vim.api.nvim_set_hl(0, "Question", { fg = gui0D })
vim.api.nvim_set_hl(0, "Search", { fg = gui06, bg = gui0A })
vim.api.nvim_set_hl(0, "SpecialKey", { fg = gui03 })
vim.api.nvim_set_hl(0, "TooLong", { fg = gui08 })
vim.api.nvim_set_hl(0, "Underlined", { fg = gui08 })
vim.api.nvim_set_hl(0, "Visual", { bg = gui02 })
vim.api.nvim_set_hl(0, "VisualNOS", { fg = gui08 })
vim.api.nvim_set_hl(0, "WarningMsg", { fg = gui08 })
vim.api.nvim_set_hl(0, "WildMenu", { fg = gui08, bg = gui0A })
vim.api.nvim_set_hl(0, "Title", { fg = gui0D })
vim.api.nvim_set_hl(0, "Conceal", { fg = gui0D, bg = gui00 })
vim.api.nvim_set_hl(0, "Cursor", { fg = gui00, bg = gui05 })
vim.api.nvim_set_hl(0, "NonText", { fg = gui03 })
vim.api.nvim_set_hl(0, "Normal", { fg = gui0C, bg = gui00 })
vim.api.nvim_set_hl(0, "LineNr", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "StatusLine", { fg = gui04, bg = gui02 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = gui00, bg = gui00 })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = gui01 })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = gui01 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = gui01 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = gui03, bg = gui02 })
vim.api.nvim_set_hl(0, "PMenu", { fg = gui04, bg = gui01 })
vim.api.nvim_set_hl(0, "PMenuSel", { fg = gui01, bg = gui04 })
vim.api.nvim_set_hl(0, "TabLine", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = gui0B, bg = gui01 })

--" Standard syntax highlighting
vim.api.nvim_set_hl(0, "Boolean", { fg = gui06 })
vim.api.nvim_set_hl(0, "Character", { fg = gui08 })
vim.api.nvim_set_hl(0, "Comment", { fg = guiComment, bg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "Conditional", { fg = guiMa })
vim.api.nvim_set_hl(0, "Constant", { link = "Number" })
vim.api.nvim_set_hl(0, "Define", { fg = gui08 })
vim.api.nvim_set_hl(0, "Float", { link = "Number" })
vim.api.nvim_set_hl(0, "Function", { fg = guiBlL })
vim.api.nvim_set_hl(0, "Identifier", { fg = gui08 })
vim.api.nvim_set_hl(0, "Include", { fg = gui05 })
vim.api.nvim_set_hl(0, "Keyword", { fg = guiMa })
vim.api.nvim_set_hl(0, "Label", { fg = gui0A })
vim.api.nvim_set_hl(0, "Number", { fg = guiSpecial })
vim.api.nvim_set_hl(0, "PreProc", { fg = gui08 })
vim.api.nvim_set_hl(0, "Repeat", { fg = gui08 })
vim.api.nvim_set_hl(0, "Special", { fg = gui08 })
vim.api.nvim_set_hl(0, "Statement", { fg = gui08 })
vim.api.nvim_set_hl(0, "String", { fg = gui06 })
vim.api.nvim_set_hl(0, "Structure", { fg = guiBlD })
vim.api.nvim_set_hl(0, "Tag", { fg = guiYe })
vim.api.nvim_set_hl(0, "Todo", { fg = gui04, bg = gui01 })
vim.api.nvim_set_hl(0, "Type", { fg = guiBlD })
vim.api.nvim_set_hl(0, "Typedef", { fg = gui0A })
vim.api.nvim_set_hl(0, "Noise", { fg = gui02 })

--vim.api.nvim_set_hl(0, "Operator", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Special", { link = "Keyword" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = gui0F })
vim.api.nvim_set_hl(0, "Operator", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Normal" })

vim.api.nvim_set_hl(0, "@namespace", { link = "Tag" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace", { link = "Tag" })
vim.api.nvim_set_hl(0, "@type.qualifier", { link = "Keyword" })
-- vim.api.nvim_set_hl(0, "@lsp.type.type", { link = "Keyword" })
-- vim.api.nvim_set_hl(0, "@storageclass", { link = "Keyword" })
