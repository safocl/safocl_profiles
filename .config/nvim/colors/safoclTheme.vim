" Base16 Vim original template by Chris Kempson (https://github.com/chriskempson/base16-vim)
" Scheme: safoclTheme_Atelier_Sulphurpool by Bram de Haan (http://atelierbram.github.io/syntax-highlighting/atelier-schemes/sulphurpool)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
"if !has('gui_running')
"  if exists("g:base16_shell_path")
"    execute "silent !/bin/sh ".g:base16_shell_path."/Atelier_SulphurpoolDark.".&background.".sh"
"  endif
"endif

" GUI color definitions
let s:gui00 = "#101010"
let s:gui01 = "#202020"
let s:gui02 = "#626262"
let s:gui03 = "#5b6384"
let s:gui04 = "#898ea4"
let s:gui05 = "#979db4"
let s:gui06 = "#dfe2f1"
let s:gui07 = "#f5f7ff"
let s:gui08 = "#c94922"
let s:gui09 = "#c76b29"
let s:gui0A = "#c08b30"
let s:gui0B = "#ac9739"
let s:gui0C = "#1592a3"
let s:gui0D = "#3d8fd1"
let s:gui0E = "#6679cc"
let s:gui0F = "#9c637a"
let s:guiGD = "#899f6c"
let s:guiYe = "#E5BD3F"
let s:guiBlD= "#0577b7"
let s:guiBlL= "#afd7ff"
let s:guiMa = "#b487cf"
let s:guiCi = "#af875f"
let s:guiOr = "#d75f00"
let s:guiMember = "#7e7e7e"






" Terminal color definitions
let s:ctermGD = "107   "
let s:ctermYe = "186   "
let s:ctermBlD= "32    "
let s:ctermBlL= "153   "
let s:ctermMa = "177   "
let s:ctermCi = "137   "
let s:ctermOr = "166   "
let s:cterm00 = "235   "
let s:cterm03 = "243   "
let s:cterm05 = "247   "
let s:cterm07 = "231   "
let s:cterm08 = "131   "
let s:cterm0A = "137   "
let s:cterm0B = "136   "
let s:cterm0C = "68    "
let s:cterm0D = "67    "
let s:cterm0E = "69    "
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01 = "236   "
  let s:cterm02 = "241   "
  let s:cterm04 = "246   "
  let s:cterm06 = "254   "
  let s:cterm09 = "166   "
  let s:cterm0F = "133   "
else
  let s:cterm01 = "236   "
  let s:cterm02 = "241   "
  let s:cterm04 = "246   "
  let s:cterm06 = "254   "
  let s:cterm09 = "166   "
  let s:cterm0F = "133   "
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "safoclTheme"

" Highlighting function
fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  if a:guifg != ""
    exec "hi " . a:group . " guifg=" . s:gui(a:guifg)
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=" . s:gui(a:guibg)
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . s:cterm(a:ctermfg)
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . s:cterm(a:ctermbg)
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=" . a:guisp
  endif
endfun

" Return GUI color for light/dark variants
fun s:gui(color)
  if &background == "dark"
    return a:color
  endif

  if a:color == s:gui00
    return s:gui07
  elseif a:color == s:gui01
    return s:gui06
  elseif a:color == s:gui02
    return s:gui05
  elseif a:color == s:gui03
    return s:gui04
  elseif a:color == s:gui04
    return s:gui03
  elseif a:color == s:gui05
    return s:gui02
  elseif a:color == s:gui06
    return s:gui01
  elseif a:color == s:gui07
    return s:gui00
  endif

  return a:color
endfun

" Return terminal color for light/dark variants
fun s:cterm(color)
  if &background == "dark"
    return a:color
  endif

"  if a:color == s:cterm00
"    return s:cterm07
"  elseif a:color == s:cterm01
"    return s:cterm06
"  elseif a:color == s:cterm02
"    return s:cterm05
"  elseif a:color == s:cterm03
"    return s:cterm04
"  elseif a:color == s:cterm04
"    return s:cterm03
"  elseif a:color == s:cterm05
"    return s:cterm02
"  elseif a:color == s:cterm06
"    return s:cterm01
"  elseif a:color == s:cterm07
"    return s:cterm00
"  endif

  return a:color
endfun

" Vim editor colors
call <sid>hi("Bold",          "", "", "", "", "bold", "")
call <sid>hi("Debug",         s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Directory",     s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Error",         s:gui00, s:gui08, s:cterm00, s:cterm08, "", "")
call <sid>hi("ErrorMsg",      s:gui08, s:gui00, s:cterm08, s:cterm00, "", "")
call <sid>hi("Exception",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("FoldColumn",    s:gui0C, s:gui01, s:cterm0C, s:cterm01, "", "")
call <sid>hi("Folded",        s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("IncSearch",     s:gui01, s:gui09, s:cterm01, s:cterm09, "none", "")
call <sid>hi("Italic",        "", "", "", "", "none", "")
call <sid>hi("Macro",         s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("MatchParen",    s:gui00, s:gui03, s:cterm00, s:cterm03,  "", "")
call <sid>hi("ModeMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("MoreMsg",       s:gui0B, "", s:cterm0B, "", "", "")
call <sid>hi("Question",      s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Search",        s:gui06, s:gui0A, s:cterm06, s:cterm0A,  "", "")
call <sid>hi("SpecialKey",    s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("TooLong",       s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Underlined",    s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("Visual",        "", s:gui02, "", s:cterm02, "", "")
call <sid>hi("VisualNOS",     s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("WarningMsg",    s:gui08, "", s:cterm08, "", "", "")
call <sid>hi("WildMenu",      s:gui08, s:gui0A, s:cterm08, "", "", "")
call <sid>hi("Title",         s:gui0D, "", s:cterm0D, "", "none", "")
call <sid>hi("Conceal",       s:gui0D, s:gui00, s:cterm0D, s:cterm00, "", "")
call <sid>hi("Cursor",        s:gui00, s:gui05, s:cterm00, s:cterm05, "", "")
call <sid>hi("NonText",       s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("Normal",        s:gui05, s:gui00, s:cterm05, s:cterm00, "", "")
call <sid>hi("LineNr",        s:gui02, s:gui01, s:cterm02, s:cterm01, "", "")
call <sid>hi("SignColumn",    s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("StatusLine",    s:gui04, s:gui02, s:cterm04, s:cterm02, "none", "")
call <sid>hi("StatusLineNC",  s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("VertSplit",     s:gui00, s:gui00, s:cterm00, s:cterm00, "none", "")
call <sid>hi("ColorColumn",   "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorColumn",  "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLine",    "", s:gui01, "", s:cterm01, "none", "")
call <sid>hi("CursorLineNr",  s:gui03, s:gui01, s:cterm03, s:cterm01, "", "")
call <sid>hi("PMenu",         s:gui04, s:gui01, s:cterm04, s:cterm01, "none", "")
call <sid>hi("PMenuSel",      s:gui01, s:gui04, s:cterm01, s:cterm04, "", "")
call <sid>hi("TabLine",       s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineFill",   s:gui03, s:gui01, s:cterm03, s:cterm01, "none", "")
call <sid>hi("TabLineSel",    s:gui0B, s:gui01, s:cterm0B, s:cterm01, "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:guiOr, "", s:ctermOr, "", "", "")
call <sid>hi("Character",    s:guiYe, "", s:ctermYe, "", "", "")
call <sid>hi("Comment",      s:gui03, "", s:cterm03, "", "", "")
call <sid>hi("Conditional",  s:guiMa, "", s:ctermMa, "", "", "")
call <sid>hi("Constant",     s:guiMa, "", s:ctermMa, "", "", "")
call <sid>hi("Define",       s:gui0E, "", s:cterm0E, "", "none", "")
"call <sid>hi("Delimiter",    s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("Float",        s:gui09, "", s:cterm09, "", "", "")
call <sid>hi("Function",     s:guiCi, "", s:ctermCi, "", "", "")
call <sid>hi("Identifier",   s:guiMember, "", s:cterm08, "", "none", "")
call <sid>hi("Include",      s:gui0D, "", s:cterm0D, "", "", "")
call <sid>hi("Keyword",      s:guiMa, "", s:ctermMa, "", "", "")
call <sid>hi("Label",        s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Number",       s:guiOr, "", s:ctermOr, "", "", "")
call <sid>hi("PreProc",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Repeat",       s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Special",      s:gui0C, "", s:cterm0C, "", "", "")
"call <sid>hi("SpecialChar",  s:gui0F, "", s:cterm0F, "", "", "")
call <sid>hi("Statement",    s:guiMa, "", s:ctermMa, "", "", "")
call <sid>hi("String",       s:guiGD, "", s:ctermGD, "", "", "")
call <sid>hi("Structure",    s:guiMa, "", s:ctermMa, "", "", "")
call <sid>hi("Tag",          s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Todo",         s:gui0A, s:gui01, s:cterm0A, s:cterm01, "", "")
call <sid>hi("Type",         s:guiBlD, "", s:ctermBlD, "", "none", "")
call <sid>hi("Typedef",      s:gui0A, "", s:cterm0A, "", "", "")
call <sid>hi("Noise",        s:gui02, "", s:cterm02, "", "", "")
hi link Operator SpecialChar
hi link StorageClass Structure
hi link Delimiter Normal
hi link SpecialChar Normal

"hi link TSConstructor Function
"hi link TSNamespace Tag
"hi link TSKeywordOperator TSKeyword
"hi link TSException TSKeyword
"call <sid>hi("TSField",        s:guiMember, "", s:cterm05, "", "italic", "")
"hi link TSProperty TSField
"hi link TSConstant Macro

"" Diff highlighting
"call <sid>hi("DiffAdd",      s:gui0B, s:gui01,  s:cterm0B, s:cterm01, "", "")
"call <sid>hi("DiffChange",   s:gui03, s:gui01,  s:cterm03, s:cterm01, "", "")
"call <sid>hi("DiffDelete",   s:gui08, s:gui01,  s:cterm08, s:cterm01, "", "")
"call <sid>hi("DiffText",     s:gui0D, s:gui01,  s:cterm0D, s:cterm01, "", "")
"call <sid>hi("DiffAdded",    s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
"call <sid>hi("DiffFile",     s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")
"call <sid>hi("DiffNewFile",  s:gui0B, s:gui00,  s:cterm0B, s:cterm00, "", "")
"call <sid>hi("DiffLine",     s:gui0D, s:gui00,  s:cterm0D, s:cterm00, "", "")
"call <sid>hi("DiffRemoved",  s:gui08, s:gui00,  s:cterm08, s:cterm00, "", "")

"" Git highlighting
"call <sid>hi("gitCommitOverflow",  s:gui08, "", s:cterm08, "", "", "")
"" call <sid>hi("gitCommitSummary",   s:gui0B, "", s:cterm0B, "", "", "")
"call <sid>hi("gitCommitSummary",   s:gui05, "", s:cterm05, "none", "none", "")

"" GitGutter highlighting
"call <sid>hi("GitGutterAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
"call <sid>hi("GitGutterChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
"call <sid>hi("GitGutterDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")
"call <sid>hi("GitGutterChangeDelete",  s:gui0E, s:gui01, s:cterm0E, s:cterm01, "", "")

"" HTML highlighting
"call <sid>hi("htmlBold",    s:gui0A, "", s:cterm0A, "", "", "")
"call <sid>hi("htmlItalic",  s:gui0E, "", s:cterm0E, "", "", "")
"call <sid>hi("htmlEndTag",  s:gui02, "", s:cterm02, "", "", "")
"call <sid>hi("htmlTag",     s:gui02, "", s:cterm02, "", "", "")

"" Signify highlighting
"call <sid>hi("SignifySignAdd",     s:gui0B, s:gui01, s:cterm0B, s:cterm01, "", "")
"call <sid>hi("SignifySignChange",  s:gui0D, s:gui01, s:cterm0D, s:cterm01, "", "")
"call <sid>hi("SignifySignDelete",  s:gui08, s:gui01, s:cterm08, s:cterm01, "", "")

"" Spelling highlighting
"call <sid>hi("SpellBad",     "", s:gui00, "", s:cterm00, "undercurl", s:gui08)
"call <sid>hi("SpellLocal",   "", s:gui00, "", s:cterm00, "undercurl", s:gui0C)
"call <sid>hi("SpellCap",     "", s:gui00, "", s:cterm00, "undercurl", s:gui0D)
"call <sid>hi("SpellRare",    "", s:gui00, "", s:cterm00, "undercurl", s:gui0E)


" Remove functions
delf <sid>hi
delf <sid>gui
delf <sid>cterm

" Remove color variables
unlet s:gui00 s:gui01 s:gui02 s:gui03  s:gui04  s:gui05  s:gui06  s:gui07  s:gui08  s:gui09 s:gui0A  s:gui0B  s:gui0C  s:gui0D  s:gui0E  s:gui0F
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F

unlet s:ctermGD 
unlet s:ctermYe 
unlet s:ctermBlD
unlet s:ctermBlL
unlet s:ctermMa 
unlet s:ctermCi 
unlet s:ctermOr 
unlet s:guiMember
unlet s:guiYe 
unlet s:guiBlD
unlet s:guiBlL
unlet s:guiMa 
unlet s:guiCi 
unlet s:guiOr 


