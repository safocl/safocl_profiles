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
local gui00 = "#181923"
local gui01 = "#BA2A2A"
local gui02 = "#008542"
local gui03 = "#F07D30"
local gui04 = "#0088CC"
local gui05 = "#8D4888"
local gui06 = "#006596"
local gui07 = "#53586F"
local gui08 = "#354151"
local gui09 = "#C95F5F"
local gui0A = "#73BA25"
local gui0B = "#EAC06E"
local gui0C = "#81A3CF"
local gui0D = "#B589C2"
local gui0E = "#25B8A5"
local gui0F = "#F6F9FC"
local guiGD = "#899f6c"
local guiYe = "#E5BD3F"
local guiBlD = "#137cad"
local guiBlL = "#afd7ff"
local guiMa = "#907a9e"
local guiCian = "#af875f"
local guiOr = "#d75f00"
local guiMember = "#7e7e7e"
local guiSpecial = "#bbbbbb"
local guiCurcor = "#385000"

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
vim.api.nvim_set_hl(0, "Macro", { fg = gui08 })
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
vim.api.nvim_set_hl(0, "Normal", { fg = gui05, bg = gui00 })
vim.api.nvim_set_hl(0, "LineNr", { fg = gui02, bg = gui08 })
vim.api.nvim_set_hl(0, "SignColumn", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "StatusLine", { fg = gui04, bg = gui02 })
vim.api.nvim_set_hl(0, "StatusLineNC", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "VertSplit", { fg = gui00, bg = gui00 })
vim.api.nvim_set_hl(0, "ColorColumn", { bg = gui01 })
vim.api.nvim_set_hl(0, "CursorColumn", { bg = gui01 })
vim.api.nvim_set_hl(0, "CursorLine", { bg = gui08 })
vim.api.nvim_set_hl(0, "CursorLineNr", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "PMenu", { fg = gui04, bg = gui01 })
vim.api.nvim_set_hl(0, "PMenuSel", { fg = gui01, bg = gui04 })
vim.api.nvim_set_hl(0, "TabLine", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "TabLineFill", { fg = gui03, bg = gui01 })
vim.api.nvim_set_hl(0, "TabLineSel", { fg = gui0B, bg = gui01 })

--" Standard syntax highlighting
vim.api.nvim_set_hl(0, "Boolean", { fg = guiOr })
vim.api.nvim_set_hl(0, "Character", { fg = guiYe })
vim.api.nvim_set_hl(0, "Comment", { fg = gui03 })
vim.api.nvim_set_hl(0, "Conditional", { fg = guiMa })
vim.api.nvim_set_hl(0, "Constant", { link = "Number" })
vim.api.nvim_set_hl(0, "Define", { fg = gui0E })
vim.api.nvim_set_hl(0, "Float", { fg = gui09 })
vim.api.nvim_set_hl(0, "Function", { fg = guiCian })
vim.api.nvim_set_hl(0, "Identifier", { fg = guiMember })
vim.api.nvim_set_hl(0, "Include", { fg = gui0D })
vim.api.nvim_set_hl(0, "Keyword", { fg = guiMa })
vim.api.nvim_set_hl(0, "Label", { fg = gui0A })
vim.api.nvim_set_hl(0, "Number", { fg = guiOr })
vim.api.nvim_set_hl(0, "PreProc", { fg = gui0A })
vim.api.nvim_set_hl(0, "Repeat", { fg = gui0A })
vim.api.nvim_set_hl(0, "Special", { fg = gui0C })
vim.api.nvim_set_hl(0, "Statement", { fg = guiMa })
vim.api.nvim_set_hl(0, "String", { fg = guiGD })
vim.api.nvim_set_hl(0, "Structure", { fg = guiMa })
vim.api.nvim_set_hl(0, "Tag", { fg = gui0A })
vim.api.nvim_set_hl(0, "Todo", { fg = gui0A, bg = gui01 })
vim.api.nvim_set_hl(0, "Type", { fg = guiBlD })
vim.api.nvim_set_hl(0, "Typedef", { fg = gui0A })
vim.api.nvim_set_hl(0, "Noise", { fg = gui02 })

--vim.api.nvim_set_hl(0, "Operator", { link = "SpecialChar" })
vim.api.nvim_set_hl(0, "StorageClass", { link = "Structure" })
vim.api.nvim_set_hl(0, "Delimiter", { fg = guiSpecial })
vim.api.nvim_set_hl(0, "Operator", { link = "Delimiter" })
vim.api.nvim_set_hl(0, "SpecialChar", { link = "Normal" })

vim.api.nvim_set_hl(0, "@namespace", { link = "Tag" })
vim.api.nvim_set_hl(0, "@type.definition", { link = "Keyword" })
