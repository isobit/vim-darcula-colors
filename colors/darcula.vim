" darcula color scheme
set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "darcula"

" colors ========================================================

let s:colors = {}
function! s:set_color(name, num, hex)
	let s:colors[a:name] = [a:num, a:hex]
endfunction

" standard
call s:set_color("NONE",            "NONE",  "NONE")
call s:set_color("BLACK",           0,       "#000000")
call s:set_color("RED",             1,       "#800000")
call s:set_color("GREEN",           2,       "#008000")
call s:set_color("YELLOW",          3,       "#808000")
call s:set_color("BLUE",            4,       "#000080")
call s:set_color("MAGENTA",         5,       "#800080")
call s:set_color("CYAN",            6,       "#008080")
call s:set_color("WHITE",           7,       "#c0c0c0")
call s:set_color("BRIGHT_BLACK",    8,       "#808080")
call s:set_color("BRIGHT_RED",      9,       "#ff0000")
call s:set_color("BRIGHT_GREEN",    10,      "#00ff00")
call s:set_color("BRIGHT_YELLOW",   11,      "#ffff00")
call s:set_color("BRIGHT_BLUE",     12,      "#0000ff")
call s:set_color("BRIGHT_MAGENTA",  13,      "#ff00ff")
call s:set_color("BRIGHT_CYAN",     14,      "#00ffff")
call s:set_color("BRIGHT_WHITE",    15,      "#ffffff")

" greys
call s:set_color("GREY",            234,     "#1c1c1c")
call s:set_color("DARK_GREY",       233,     "#121212")
call s:set_color("DARKER_GREY",     232,     "#080808")
call s:set_color("LIGHT_GREY",      236,     "#303030")
call s:set_color("LIGHTER_GREY",    238,     "#444444")

"additonal
call s:set_color("ORANGE",          172,     "#d78700")
call s:set_color("DARK_ORANGE",     130,     "#af5f00")
call s:set_color("RED_ORANGE",      131,     "#af5f5f")
call s:set_color("DARK_SEA_GREEN",  65,      "#5f875f")
call s:set_color("DARK_MAGENTA",    103,     "#8787af")
call s:set_color("LIGHT_BLUE",      67,      "#5f87af")

" highlight ========================================================

function! s:highlight(group, fg, bg, attr, ...)
	if a:0 >= 1
		if version < a:1
			return
		endif
	endif
	let fg = s:colors[a:fg]
	let bg = s:colors[a:bg]
	exec "hi " . a:group . " guifg=" . fg[1]
	exec "hi " . a:group . " ctermfg=" . fg[0]
	exec "hi " . a:group . " guibg=" . bg[1]
	exec "hi " . a:group . " ctermbg=" . bg[0]
	exec "hi " . a:group . " gui=" . a:attr
	exec "hi " . a:group . " cterm=" . a:attr
endfunction

" general text
call s:highlight("Normal",              "WHITE",           "GREY",            "NONE")
call s:highlight("NonText",             "GREY",            "NONE",            "NONE")

" cursor
call s:highlight("Cursor",              "GREY",            "WHITE",           "reverse")
call s:highlight("CursorLine",          "BRIGHT_WHITE",    "BRIGHT_BLACK",    "NONE",     700)
call s:highlight("ColorColumn",         "BRIGHT_WHITE",    "BRIGHT_BLACK",    "NONE",     700)
call s:highlight("CursorColumn",        "NONE",            "NONE",            "NONE",     700)

" windows and tabs
call s:highlight("ModeMsg",             "CYAN",            "NONE",            "NONE")
call s:highlight("LineNr",              "BRIGHT_BLACK",    "LIGHT_GREY",      "NONE")
call s:highlight("VertSplit",           "NONE",            "BRIGHT_BLACK",    "NONE")
call s:highlight("Ignore",              "NONE",            "NONE",            "NONE")
call s:highlight("Title",               "NONE",            "NONE",            "NONE")
call s:highlight("StatusLine",          "WHITE",           "BRIGHT_BLACK",    "NONE")
call s:highlight("StatusLineNC",        "WHITE",           "BRIGHT_BLACK",    "NONE")
call s:highlight("TabLine",             "WHITE",           "LIGHT_GREY",      "NONE",     700)
call s:highlight("TabLineSel",          "WHITE",           "BRIGHT_BLACK",    "BOLD",     700)
call s:highlight("TabLineFill",         "NONE",            "NONE",            "NONE",     700)

" selections and blocks
call s:highlight("Visual",              "NONE",            "LIGHTER_GREY",    "NONE")
call s:highlight("VisualNOS",           "NONE",            "BRIGHT_BLACK",    "NONE")
call s:highlight("MatchParen",          "NONE",            "BRIGHT_BLACK",    "NONE",     700)
call s:highlight("Search",              "NONE",            "DARK_SEA_GREEN",  "NONE",     700)
call s:highlight("Folded",              "BRIGHT_BLACK",    "NONE",            "NONE")

" menus
call s:highlight("WildMenu",            "GREY",            "WHITE",           "NONE")

" errors and warnings
call s:highlight("Error",               "NONE",            "RED",             "NONE")
call s:highlight("ErrorMsg",            "NONE",            "RED",             "NONE")
call s:highlight("WarningMsg",          "NONE",            "YELLOW",          "NONE")
call s:highlight("SpellBad",            "NONE",            "YELLOW",          "NONE")
call s:highlight("Todo",                "NONE",            "MAGENTA",         "NONE")

" popup menu
call s:highlight("Pmenu",               "GREY",            "BRIGHT_BLACK",    "NONE",     700)
call s:highlight("PmenuSel",            "GREY",            "WHITE",           "NONE",     700)
call s:highlight("PmenuSbar",           "GREY",            "WHITE",           "NONE",     700)

" NERDTree
call s:highlight("Directory",           "BLUE",            "NONE",            "NONE",     700)
call s:highlight("NERDTreeExecFile",    "WHITE",           "GREY",            "NONE",     700)
call s:highlight("NERDTreeClosable",    "WHITE",           "GREY",            "NONE",     700)
call s:highlight("NERDTreeOpenable",    "WHITE",           "GREY",            "NONE",     700)
call s:highlight("NERDTreeLinkFile",    "WHITE",           "GREY",            "NONE",     700)
call s:highlight("NERDTreeLinkTarget",  "CYAN",            "NONE",            "NONE",     700)

" syntax
call s:highlight("Comment",             "BRIGHT_BLACK",    "NONE",            "NONE")
call s:highlight("String",              "DARK_SEA_GREEN",  "NONE",            "NONE")
call s:highlight("Number",              "CYAN",            "NONE",            "NONE")
call s:highlight("Constant",            "CYAN",            "NONE",            "NONE")

call s:highlight("Keyword",             "ORANGE",          "NONE",            "NONE")
call s:highlight("Statement",           "ORANGE",          "NONE",            "NONE")
call s:highlight("PreProc",             "ORANGE",          "NONE",            "NONE")
call s:highlight("PreCondit",           "BRIGHT_YELLOW",   "NONE",            "NONE")
call s:highlight("Structure",           "LIGHT_BLUE",      "NONE",            "NONE")

call s:highlight("Identifier",          "DARK_MAGENTA",    "NONE",            "NONE")
call s:highlight("Function",            "DARK_MAGENTA",    "NONE",            "NONE")
call s:highlight("Class",               "DARK_MAGENTA",    "NONE",            "NONE")
call s:highlight("Type",                "DARK_ORANGE",     "NONE",            "NONE")

call s:highlight("Special",             "RED_ORANGE",      "NONE",            "NONE")
call s:highlight("Delimiter",           "WHITE",           "NONE",            "NONE")
call s:highlight("Operator",            "WHITE",           "NONE",            "NONE")

" special syntax =============================================================================================

" indentation lines
let g:indentLine_setColors = 0
call s:highlight("Conceal", "LIGHT_GREY", "NONE", "NONE")

" git commit
call s:highlight("gitcommitSummary", "WHITE", "GREY", "NONE")

" diff
call s:highlight("diffAdded", "GREEN", "NONE", "NONE")
call s:highlight("diffRemoved", "RED", "NONE", "NONE")

" html
hi link htmltagname Keyword
hi link htmlstring String
hi link htmlH1 Statement
hi link htmlH2 Statement
hi link htmlH3 Statement
hi link htmlH4 Statement
hi link htmlH5 Statement
hi link htmlH6 Statement

" markdown
call s:highlight("mkdURL", "CYAN", "NONE", "UNDERLINE")
call s:highlight("mkdLink", "NONE", "NONE", "BOLD")
