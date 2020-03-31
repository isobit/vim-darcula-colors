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

" Black/none
let s:NONE           = ["NONE", "NONE"]
let s:BLACK          = [0,   "#000000"]

" Grey
let s:DARKER_GREY    = [233, "#121212"]
let s:DARK_GREY      = [235, "#262626"]
let s:GREY           = [238, "#444444"]
let s:LIGHT_GREY     = [240, "#585858"]
let s:LIGHTER_GREY   = [242, "#666666"]

" White
let s:WHITE          = [7,   "#c0c0c0"]
let s:DARK_WHITE     = [247, "#9e9e9e"]

" Colors
let s:BLUE           = [67,  "#5f87af"]
let s:BRIGHT_PURPLE  = [57,  "#5f00ff"]
let s:CYAN           = [44,  "#00d7d7"]
let s:DARK_ORANGE    = [130, "#af5f00"]
let s:DARK_SEA_GREEN = [65,  "#5f875f"]
let s:GREEN          = [34,  "#00af00"]
let s:LIGHT_CYAN     = [73,  "#5fafaf"]
let s:MAGENTA        = [198, "#ff0087"]
let s:ORANGE         = [172, "#d78700"]
let s:PURPLE         = [103, "#8787af"]
let s:RED            = [160, "#d70000"]
let s:RED_ORANGE     = [131, "#af5f5f"]
let s:YELLOW         = [226, "#808000"]
let s:YELLOW_ORANGE  = [178, "#d7af00"]

" Utility
" -----------------------------------------------------------------------------
"
function! s:highlight(group, fg, bg, attr)
	exec "hi " . a:group . " ctermfg=" . a:fg[0]
	exec "hi " . a:group . " ctermbg=" . a:bg[0]
	exec "hi " . a:group . " cterm=" . a:attr
	exec "hi " . a:group . " guifg=" . a:fg[1]
	exec "hi " . a:group . " guibg=" . a:bg[1]
	exec "hi " . a:group . " gui=" . a:attr
	exec "hi " . a:group . " guisp=NONE"
endfunction

" Basic Highlighting
" -----------------------------------------------------------------------------

" General
call s:highlight("Normal",        s:WHITE,           s:DARKER_GREY,   "NONE")
call s:highlight("NonText",       s:DARKER_GREY,     s:NONE,          "NONE")
call s:highlight("Conceal",       s:DARK_GREY,       s:NONE,          "NONE")
call s:highlight("Ignore",        s:NONE,            s:NONE,          "NONE")

call s:highlight("SpecialKey",    s:BRIGHT_PURPLE,   s:NONE,          "NONE")

" Cursor
call s:highlight("Cursor",        s:NONE,            s:GREY,          "REVERSE")
call s:highlight("CursorLine",    s:NONE,            s:GREY,          "NONE")
call s:highlight("ColorColumn",   s:NONE,            s:GREY,          "NONE")
call s:highlight("CursorColumn",  s:NONE,            s:GREY,          "NONE")

" Windows and tabs
call s:highlight("LineNr",        s:LIGHT_GREY,      s:DARK_GREY,     "NONE")
call s:highlight("ModeMsg",       s:LIGHT_CYAN,      s:NONE,          "NONE")
call s:highlight("MoreMsg",       s:LIGHT_CYAN,      s:NONE,          "NONE")
call s:highlight("StatusLine",    s:WHITE,           s:DARK_GREY,     "NONE")
call s:highlight("StatusLineNC",  s:WHITE,           s:DARK_GREY,     "BOLD")
call s:highlight("TabLine",       s:WHITE,           s:DARK_GREY,     "NONE")
call s:highlight("TabLineFill",   s:NONE,            s:NONE,          "NONE")
call s:highlight("TabLineSel",    s:WHITE,           s:GREY,          "BOLD")
call s:highlight("Title",         s:NONE,            s:NONE,          "NONE")
call s:highlight("VertSplit",     s:NONE,            s:LIGHT_GREY,    "NONE")

" Selections and blocks
call s:highlight("Visual",        s:NONE,            s:GREY,          "NONE")
call s:highlight("VisualNOS",     s:NONE,            s:GREY,          "NONE")
call s:highlight("MatchParen",    s:NONE,            s:GREY,          "NONE")
call s:highlight("Search",        s:WHITE,           s:BRIGHT_PURPLE, "NONE")
call s:highlight("Folded",        s:LIGHTER_GREY,    s:DARK_GREY,     "NONE")

" Menus
call s:highlight("WildMenu",      s:DARKER_GREY,     s:WHITE,         "NONE")

" Errors and warnings
call s:highlight("Error",         s:WHITE,           s:RED,           "NONE")
call s:highlight("ErrorMsg",      s:WHITE,           s:RED,           "NONE")
call s:highlight("WarningMsg",    s:BLACK,           s:YELLOW,        "NONE")
call s:highlight("SpellBad",      s:NONE,            s:NONE,          "UNDERLINE")
call s:highlight("SpellCap",      s:NONE,            s:NONE,          "UNDERLINE")
call s:highlight("SpellRare",     s:NONE,            s:NONE,          "UNDERLINE")
call s:highlight("SpellLocal",    s:NONE,            s:NONE,          "UNDERLINE")
call s:highlight("Todo",          s:WHITE,           s:MAGENTA,       "NONE")
call s:highlight("Question",      s:BLUE,            s:NONE,          "NONE")

" Popup menu
call s:highlight("Pmenu",         s:DARKER_GREY,     s:LIGHTER_GREY,  "NONE")
call s:highlight("PmenuSel",      s:DARKER_GREY,     s:WHITE,         "NONE")
call s:highlight("PmenuSbar",     s:DARKER_GREY,     s:WHITE,         "NONE")

" Syntax
call s:highlight("Comment",       s:LIGHT_GREY,      s:NONE,          "NONE")
call s:highlight("Constant",      s:CYAN,            s:NONE,          "NONE")
call s:highlight("Delimiter",     s:WHITE,           s:NONE,          "NONE")
call s:highlight("Directory",     s:BLUE,            s:NONE,          "NONE")
call s:highlight("Identifier",    s:PURPLE,          s:NONE,          "NONE")
call s:highlight("Operator",      s:WHITE,           s:NONE,          "NONE")
call s:highlight("PreCondit",     s:YELLOW_ORANGE,   s:NONE,          "NONE")
call s:highlight("PreProc",       s:ORANGE,          s:NONE,          "NONE")
call s:highlight("Special",       s:RED_ORANGE,      s:NONE,          "NONE")
call s:highlight("Statement",     s:ORANGE,          s:NONE,          "NONE")
call s:highlight("String",        s:DARK_SEA_GREEN,  s:NONE,          "NONE")
call s:highlight("Structure",     s:BLUE,            s:NONE,          "NONE")
call s:highlight("Type",          s:DARK_ORANGE,     s:NONE,          "NONE")

" Special Highlighting
" -----------------------------------------------------------------------------

" NERDTree
call s:highlight("NERDTreeExecFile",    s:RED,             s:DARKER_GREY,     "NONE")
call s:highlight("NERDTreeClosable",    s:WHITE,           s:DARKER_GREY,     "NONE")
call s:highlight("NERDTreeOpenable",    s:WHITE,           s:DARKER_GREY,     "NONE")
call s:highlight("NERDTreeLinkFile",    s:PURPLE,          s:DARKER_GREY,     "NONE")
call s:highlight("NERDTreeLinkTarget",  s:CYAN,            s:NONE,            "NONE")

" OverLength
call s:highlight("OverLength", s:NONE, s:GREY, "NONE")

" TrailingWhitespace
call s:highlight("TrailingWhitespace", s:NONE, s:BRIGHT_PURPLE, "NONE")

" Neovim listchars
call s:highlight("Whitespace", s:BRIGHT_PURPLE, s:NONE, "NONE")

" git commit
call s:highlight("gitcommitSummary",  s:WHITE,   s:DARKER_GREY,  "NONE")

" git diff
call s:highlight("diffAdded",         s:GREEN,   s:NONE,         "NONE")
call s:highlight("diffRemoved",       s:RED,     s:NONE,         "NONE")

" diff
call s:highlight("DiffAdd",           s:GREEN,   s:NONE,         "NONE")
call s:highlight("DiffDelete",        s:RED,     s:NONE,         "NONE")
call s:highlight("DiffChange",        s:ORANGE,  s:NONE,         "NONE")
call s:highlight("DiffText",          s:WHITE,   s:DARKER_GREY,  "NONE")

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
call s:highlight("mkdURL",            s:CYAN,    s:NONE,         "NONE")
call s:highlight("mkdLink",           s:NONE,    s:NONE,         "BOLD")

" PHP
call s:highlight("phpDocTags",        s:DARK_SEA_GREEN,  s:NONE,          "BOLD")
hi link phpType Statement
hi link phpFunction PreCondit
hi link phpMethod PreCondit
hi link phpVarSelector Identifier
hi link phpMethodsVar Identifier
hi link phpParent None
hi link phpDocIdentifier Identifier
hi link phpDocNamespaceSeparator None
hi link phpDocParam None
hi link phpDocComment String
hi link phpCommentTitle String
hi link phpCommentStar String 
