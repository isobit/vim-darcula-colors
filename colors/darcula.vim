" Darcula color scheme
" Josh Glendenning

set background=dark
hi clear

if exists("syntax_on")
	syntax reset
endif

let colors_name = "darcula"

" Colors
" -----------------------------------------------------------------------------

" Standard
let s:NONE           = ["NONE", "NONE"]
let s:BLACK          = [0,   "#000000"]
let s:RED            = [160, "#d70000"]
let s:GREEN          = [34,  "#00af00"]
let s:YELLOW         = [3,   "#808000"]
let s:BLUE           = [4,   "#000080"]
let s:MAGENTA        = [5,   "#800080"]
let s:CYAN           = [6,   "#008080"]
let s:WHITE          = [7,   "#c0c0c0"]
let s:BRIGHT_BLACK   = [244, "#808080"]
let s:BRIGHT_RED     = [9,   "#ff0000"]
let s:BRIGHT_GREEN   = [10,  "#00ff00"]
let s:BRIGHT_YELLOW  = [11,  "#ffff00"]
let s:BRIGHT_BLUE    = [12,  "#0000ff"]
let s:BRIGHT_MAGENTA = [13,  "#ff00ff"]
let s:BRIGHT_CYAN    = [14,  "#00ffff"]
let s:BRIGHT_WHITE   = [15,  "#ffffff"]

" Grey
let s:DARKER_GREY  = [233, "#121212"]
let s:DARK_GREY    = [235, "#262626"]
let s:GREY         = [238, "#444444"]
let s:LIGHT_GREY   = [240, "#585858"]
let s:LIGHTER_GREY = [242, "#666666"]

" White
let s:DARK_WHITE     = [247, "#9e9e9e"]

" Additional
let s:ORANGE         = [172, "#d78700"]
let s:DARK_ORANGE    = [130, "#af5f00"]
let s:RED_ORANGE     = [131, "#af5f5f"]
let s:DARK_SEA_GREEN = [65,  "#5f875f"]
let s:PURPLE         = [103, "#8787af"]
let s:LIGHT_BLUE     = [67,  "#5f87af"]

" Highlight
" -----------------------------------------------------------------------------

function! s:highlight(group, fg, bg, attr)
	exec "hi " . a:group . " ctermfg=" . a:fg[0]
	exec "hi " . a:group . " ctermbg=" . a:bg[0]
	exec "hi " . a:group . " cterm=" . a:attr
	exec "hi " . a:group . " guifg=" . a:fg[1]
	exec "hi " . a:group . " guibg=" . a:bg[1]
	exec "hi " . a:group . " gui=" . a:attr
endfunction

" General
call s:highlight("Normal",   s:WHITE,       s:DARKER_GREY,  "NONE")
call s:highlight("NonText",  s:DARKER_GREY,        s:NONE,  "NONE")
call s:highlight("Conceal",  s:DARK_GREY,  s:NONE,  "NONE")

" Cursor
call s:highlight("Cursor",        s:BRIGHT_WHITE,  s:BRIGHT_BLACK,  "REVERSE")
call s:highlight("CursorLine",    s:BRIGHT_WHITE,  s:BRIGHT_BLACK,  "NONE")
call s:highlight("ColorColumn",   s:BRIGHT_WHITE,  s:BRIGHT_BLACK,  "NONE")
call s:highlight("CursorColumn",  s:NONE,          s:NONE,          "NONE")

" Windows and tabs
call s:highlight("ModeMsg",       s:CYAN,          s:NONE,          "NONE")
call s:highlight("LineNr",        s:GREY,  s:DARK_GREY,    "NONE")
call s:highlight("VertSplit",     s:NONE,          s:GREY,  "NONE")
call s:highlight("Ignore",        s:NONE,          s:NONE,          "NONE")
call s:highlight("Title",         s:NONE,          s:NONE,          "NONE")
call s:highlight("StatusLineNC",  s:WHITE,         s:DARK_GREY,    "BOLD")
call s:highlight("StatusLine",    s:WHITE,         s:GREY,  "NONE")
call s:highlight("TabLine",       s:WHITE,         s:DARK_GREY,    "NONE")
call s:highlight("TabLineSel",    s:WHITE,         s:GREY,  "BOLD")
call s:highlight("TabLineFill",   s:NONE,          s:NONE,          "NONE")

" Selections and blocks
call s:highlight("Visual",      s:NONE,          s:BRIGHT_BLACK,    "NONE")
call s:highlight("VisualNOS",   s:NONE,          s:BRIGHT_BLACK,    "NONE")
call s:highlight("MatchParen",  s:NONE,          s:BRIGHT_BLACK,    "NONE")
call s:highlight("Search",      s:NONE,          s:DARK_SEA_GREEN,  "NONE")
call s:highlight("Folded",      s:BRIGHT_BLACK,  s:NONE,            "NONE")

" Menus
call s:highlight("WildMenu",  s:DARKER_GREY,  s:WHITE,  "NONE")

" Errors and warnings
call s:highlight("Error",       s:WHITE,  s:RED,      "NONE")
call s:highlight("ErrorMsg",    s:WHITE,  s:RED,      "NONE")
call s:highlight("WarningMsg",  s:BLACK,  s:YELLOW,   "NONE")
call s:highlight("SpellBad",    s:NONE,  s:NONE,     "UNDERLINE")
call s:highlight("Todo",        s:WHITE,  s:MAGENTA,  "NONE")

" Popup menu
call s:highlight("Pmenu",      s:DARKER_GREY,  s:BRIGHT_BLACK,  "NONE")
call s:highlight("PmenuSel",   s:DARKER_GREY,  s:WHITE,         "NONE")
call s:highlight("PmenuSbar",  s:DARKER_GREY,  s:WHITE,         "NONE")

" NERDTree
call s:highlight("Directory",           s:LIGHT_BLUE,  s:NONE,  "NONE")
call s:highlight("NERDTreeExecFile",    s:RED,         s:DARKER_GREY,  "NONE")
call s:highlight("NERDTreeClosable",    s:WHITE,       s:DARKER_GREY,  "NONE")
call s:highlight("NERDTreeOpenable",    s:WHITE,       s:DARKER_GREY,  "NONE")
call s:highlight("NERDTreeLinkFile",    s:PURPLE,      s:DARKER_GREY,  "NONE")
call s:highlight("NERDTreeLinkTarget",  s:CYAN,        s:NONE,  "NONE")

" Syntax
call s:highlight("Comment",     s:LIGHT_GREY,    s:NONE,  "NONE")

call s:highlight("Constant",    s:CYAN,            s:NONE,  "NONE")
call s:highlight("String",      s:DARK_SEA_GREEN,  s:NONE,  "NONE")

call s:highlight("Identifier",  s:PURPLE,          s:NONE,  "NONE")

call s:highlight("Statement",   s:ORANGE,          s:NONE,  "NONE")
call s:highlight("Operator",    s:WHITE,           s:NONE,  "NONE")

call s:highlight("PreProc",     s:ORANGE,          s:NONE,  "NONE")
call s:highlight("PreCondit",   s:BRIGHT_YELLOW,   s:NONE,  "NONE")

call s:highlight("Type",        s:DARK_ORANGE,     s:NONE,  "NONE")
call s:highlight("Structure",   s:LIGHT_BLUE,      s:NONE,  "NONE")

call s:highlight("Special",     s:RED_ORANGE,      s:NONE,  "NONE")
call s:highlight("Delimiter",   s:WHITE,           s:NONE,  "NONE")

" Special syntax
" -----------------------------------------------------------------------------

" OverLength
" Use something like the following in vimrc to highlight overlength characters
" match OverLength /\%81v.\+/
call s:highlight("OverLength", s:NONE, s:GREY, "NONE")

" git commit
call s:highlight("gitcommitSummary", s:WHITE, s:DARKER_GREY, "NONE")

" git diff
call s:highlight("diffAdded",    s:GREEN,  s:NONE,  "NONE")
call s:highlight("diffRemoved",  s:RED,    s:NONE,  "NONE")

" HTML
hi link htmltagname Keyword
hi link htmlstring String
hi link htmlH1 Statement
hi link htmlH2 Statement
hi link htmlH3 Statement
hi link htmlH4 Statement
hi link htmlH5 Statement
hi link htmlH6 Statement

" Markdown
call s:highlight("mkdURL",   s:CYAN,  s:NONE,  "NONE")
call s:highlight("mkdLink",  s:NONE,  s:NONE,  "BOLD")
