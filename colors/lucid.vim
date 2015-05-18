" lucid.vim - Vim color scheme
" ----------------------------------------------------------
" Author:   Kevin Lund (http://kev.lu)
" Version:  0.1
" License:  MIT
"
" ----------------------------------------------------------

" Setup ----------------------------------------------------{{{
" Reset syntax highlighting
hi clear
if exists("syntax_on")
  syntax reset
endif

" Declare theme name
let g:colors_name = "lucid"

" FlatUI Colors --------------------------------------------{{{
" Url: http://flatuicolors.com/
" Note: Cterm colors not optimized

let s:wetasphalt   = { "gui": "#34495e", "cterm": "59"  }
let s:midnightblue = { "gui": "#2c3e50", "cterm": "23"  }
let s:amethyst     = { "gui": "#9b59b6", "cterm": "133" }
let s:wisteria     = { "gui": "#8e44ad", "cterm": "97"  }
let s:peterriver   = { "gui": "#3498db", "cterm": "68"  }
let s:belizehole   = { "gui": "#2980b9", "cterm": "31"  }
let s:emerald      = { "gui": "#2ecc71", "cterm": "41"  }
let s:nephritis    = { "gui": "#27ae60", "cterm": "35"  }
let s:turquoise    = { "gui": "#1abc9c", "cterm": "37"  }
let s:greensea     = { "gui": "#16a085", "cterm": "36"  }
let s:concrete     = { "gui": "#95a5a6", "cterm": "109" }
let s:asbestos     = { "gui": "#7f8c8d", "cterm": "102" }
let s:clouds       = { "gui": "#ecf0f1", "cterm": "231" }
let s:silver       = { "gui": "#bdc3c7", "cterm": "152" }
let s:alizarin     = { "gui": "#e74c3c", "cterm": "167" }
let s:pomegranate  = { "gui": "#c0392b", "cterm": "130" }
let s:carrot       = { "gui": "#e67e22", "cterm": "172" }
let s:pumpkin      = { "gui": "#d35400", "cterm": "166" }
let s:sunflower    = { "gui": "#f1c40f", "cterm": "220" }
let s:orange       = { "gui": "#f39c12", "cterm": "214" }
" }}}
" Lucid Custom Colors --------------------------------------{{{
let s:lucid_darkGrey        = { "gui": "#1c1c1c", "cterm": "234" }
let s:lucid_orange           = { "gui": "#f07d41", "cterm": "202" }
let s:lucid_lightYellow = { "gui": "#fbf7cd", "cterm": "202" }

let s:darkSlate        = { "gui": "#1f2428", "cterm": "234" }
let s:slate            = { "gui": "#262c31", "cterm": "234" }
let s:lightSlate       = { "gui": "#383b41", "cterm": "235" }
let s:lighterSlate     = { "gui": "#404349", "cterm": "236" }
let s:lightOrange      = { "gui": "#f0c674", "cterm": "222" }
let s:cyan             = { "gui": "#8abeb7", "cterm": "109" }
let s:lucidBlue        = { "gui": "#66d9ef", "cterm": "74" }
let s:lucidPurple      = { "gui": "#bd5e8d", "cterm": "74" }
let s:brightYellow     = { "gui": "#fbf7cd", "cterm": "230" }
let s:darkPurple       = { "gui": "#a62d6a", "cterm": "230" }
let s:dGreen           = { "gui": "#27ae60", "cterm": "76" }
let s:lGreen           = { "gui": "#2ecc71", "cterm": "149" }
let s:lightRed         = { "gui": "#e74c3c", "cterm": "167" }
let s:darkRed          = { "gui": "#c0392b", "cterm": "160" }
let s:lOrange          = { "gui": "#f39c12", "cterm": "214" }

let s:white            = { "gui": "#FFFFFF", "cterm": "231" }
let s:almostWhite      = { "gui": "#c7c7c7", "cterm": "188" }
let s:almostBlack      = { "gui": "#111111", "cterm": "233" }
let s:darkerGrey       = { "gui": "#282a2e", "cterm": "235" }
let s:middleDarkGrey   = { "gui": "#777777", "cterm": "241" }
let s:middleLightGrey  = { "gui": "#999999", "cterm": "246" }
let s:lightGrey        = { "gui": "#BBBBBB", "cterm": "249" }
let s:darkGrey         = { "gui": "#444444", "cterm": "238" }

let s:darkPink         = { "gui": "#63001C", "cterm": "88"  }
let s:middleDarkPink   = { "gui": "#FF0055", "cterm": "197" }
let s:middleLightPink  = { "gui": "#D65E76", "cterm": "167" }
let s:lightPink        = { "gui": "#FFAFAF", "cterm": "217" }

let s:darkBlue         = { "gui": "#005F87", "cterm": "24"  }
let s:middleDarkBlue   = { "gui": "#538192", "cterm": "24"  }
let s:middleLightBlue  = { "gui": "#9FD3E6", "cterm": "116" }
let s:lightBlue        = { "gui": "#CBE4EE", "cterm": "195" }

let s:darkGreen        = { "gui": "#78AB46", "cterm": "58"  }
let s:middleDarkGreen  = { "gui": "#739200", "cterm": "64"  }
let s:middleLightGreen = { "gui": "#B1D631", "cterm": "149" }
let s:lightGreen       = { "gui": "#BBFFAA", "cterm": "157" }

let s:darkTan          = { "gui": "#503D15", "cterm": "52"  }
let s:lightTan         = { "gui": "#ECE1C8", "cterm": "230" }
"}}}
" Assign Colors -----------------------------------------{{{
if &background == "dark"
  " Dark theme
  let s:bg         = s:midnightblue
  let s:norm       = s:clouds
  let s:comment    = s:asbestos
  let s:dimmed     = s:concrete
  let s:subtle     = s:asbestos
  let s:faint      = s:wetasphalt
  let s:shade      = s:darkBlue
  let s:lightshade = s:amethyst
  let s:accent1    = s:middleLightBlue
  let s:accent2    = s:lightOrange
  let s:accent3    = s:norm
  let s:accent4    = s:amethyst
  let s:accent5    = s:carrot
  let s:normRed    = s:darkRed
  let s:normGreen  = s:middleLightGreen
  let s:normBlue   = s:middleLightBlue
  let s:faintRed   = s:lightRed
  let s:faintGreen = s:dGreen
  let s:faintBlue  = s:darkBlue
  let s:diffRed    = s:alizarin
  let s:diffGreen  = s:emerald
  let s:diffOrange = s:orange
else
  " Light theme
  let s:bg         = s:white
  let s:norm       = s:midnightblue
  let s:comment    = s:silver
  let s:dimmed     = s:middleDarkGrey
  let s:subtle     = s:lightGrey
  let s:faint      = s:clouds
  let s:shade      = s:lucid_lightYellow
  let s:lightshade = s:amethyst
  let s:accent1    = s:middleDarkBlue
  let s:accent2    = s:peterriver
  let s:accent3    = s:belizehole
  let s:accent4    = s:wisteria
  let s:accent5    = s:carrot
  let s:accent6    = s:pomegranate
  let s:normRed    = s:alizarin
  let s:normGreen  = s:emerald
  let s:normBlue   = s:peterriver
  let s:faintRed   = s:lightPink
  let s:faintGreen = s:lightGreen
  let s:faintBlue  = s:lightBlue
  let s:diffRed    = s:alizarin
  let s:diffGreen  = s:emerald
  let s:diffOrange = s:orange
endif
"}}}
" Utility Function -----------------------------------------{{{
function! s:h(group, style)
  execute "highlight" a:group
        \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
        \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
        \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
        \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
        \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
        \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
        \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

"}}}
" Highlights - Vim >= 7 ------------------------------------{{{
if version >= 700
  call s:h("CursorLine",    { "bg": s:faint })
  call s:h("CursorColumn",  { "bg": s:faint })
  call s:h("MatchParen",    { "fg": s:accent1, "bg": s:faint, "gui": "underline" })
  call s:h("Pmenu",         { "bg": s:faint })
  call s:h("PmenuThumb",    { "bg": s:norm })
  call s:h("PmenuSBar",     { "bg": s:subtle })
  call s:h("PmenuSel",      { "bg": s:normBlue, "fg": s:bg })
  call s:h("ColorColumn",   { "bg": s:faintRed })
  call s:h("SpellBad",      { "sp": s:normRed, "gui": "undercurl" })
  call s:h("SpellCap",      { "sp": s:accent1, "gui": "undercurl" })
  call s:h("SpellRare",     { "sp": s:normGreen, "gui": "undercurl" })
  call s:h("SpellLocal",    { "sp": s:accent4, "gui": "undercurl" })
  " hi! link CursorColumn	CursorLine

  " Use background for cterm Spell*, which does not support undercurl
  execute "hi! SpellBad   ctermbg=" s:faintRed.cterm
  execute "hi! SpellCap   ctermbg=" s:faintBlue.cterm
  execute "hi! SpellRare  ctermbg=" s:faintGreen.cterm
  execute "hi! SpellLocal ctermbg=" s:faint.cterm
endif

"}}}
" Highlights - UI ------------------------------------------{{{
call s:h("Normal",       { "fg": s:norm, "bg": s:bg })
call s:h("NonText",      { "fg": s:subtle })
call s:h("Cursor",       { "fg": s:bg, "bg": s:accent2 })
call s:h("Visual",       { "bg": s:faintBlue })
call s:h("IncSearch",    { "bg": s:faintBlue })
call s:h("Search",       { "bg": s:shade, "fg": s:norm })
call s:h("StatusLine",   { "fg": s:norm, "bg": s:faint })
call s:h("StatusLineNC", { "fg": s:dimmed, "bg": s:faint })
call s:h("SignColumn",   { "fg": s:norm, "bg": s:bg })
call s:h("VertSplit",    { "fg": s:subtle, "bg": s:bg })
call s:h("TabLine",      { "fg": s:dimmed, "bg": s:faint })
call s:h("TabLineFill",  { "fg": s:lightBlue, "bg": s:bg })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:comment, "bg": s:faint })
call s:h("Directory",    { "fg": s:accent1 })
call s:h("Title",        { "fg": s:accent2, "cterm": "bold" })
call s:h("ErrorMsg",     { "bg": s:faintRed })
call s:h("DiffAdd",      { "bg": s:faintGreen })
call s:h("DiffChange",   { "bg": s:lOrange })
call s:h("DiffDelete",   { "fg": s:normRed, "bg": s:faintRed })
call s:h("DiffText",     { "bg": s:faintRed, "cterm": "bold" })
call s:h("CursorLineNr", { "fg": s:asbestos, "bg": s:faint })
call s:h("User1",        { "fg": s:bg, "bg": s:normGreen })
call s:h("User2",        { "fg": s:bg, "bg": s:normRed })
call s:h("User3",        { "fg": s:bg, "bg": s:normBlue })
hi! link WildMenu     IncSearch
hi! link FoldColumn   SignColumn
hi! link WarningMsg   ErrorMsg
hi! link MoreMsg      Title
hi! link Question     MoreMsg
hi! link ModeMsg      MoreMsg
hi! link TabLineFill  StatusLineNC
hi! link LineNr       NonText
hi! link SpecialKey   NonText

"}}}
" Highlights - Generic Syntax ------------------------------{{{
call s:h("Delimiter",  { "fg": s:dimmed })
call s:h("Comment",    { "fg": s:comment, "gui": "italic" })
call s:h("Underlined", { "fg": s:accent1, "gui": "underline", "cterm": "underline" })
call s:h("Type",       { "fg": s:accent3 })
call s:h("String",     { "fg": s:accent5 })
call s:h("Keyword",    { "fg": s:accent6 })
call s:h("Todo",       { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "fg": s:accent3 })
call s:h("Assign",     { "fg": s:accent2 })
call s:h("Access",     { "fg": s:accent5 })
call s:h("Boolean",    { "fg": s:accent4 })
call s:h("Constant",   { "fg": s:accent4 })
call s:h("Repeat",     { "fg": s:accent6 })
hi! link Identifier  Function
hi! link Statement   Type
hi! link Number      Constant
hi! link Special     Constant
hi! link PreProc     Constant
hi! link Error       ErrorMsg

"}}}
" Highlights - HTML ----------------------------------------{{{
hi! link htmlLink    Underlined
hi! link htmlTag     Type
hi! link htmlEndTag  htmlTag

"}}}
" Highlights - CSS -----------------------------------------{{{
hi! link cssBraces      Delimiter
hi! link cssSelectorOp  cssBraces
hi! link cssClassName   Normal

"}}}
" Highlights - Markdown ------------------------------------{{{
hi! link mkdListItem  mkdDelimiter

"}}}
" Highlights - Shell ---------------------------------------{{{
hi! link shOperator  Delimiter
hi! link shCaseBar   Delimiter

"}}}
" Highlights - JavaScript ----------------------------------{{{
hi! link javaScriptValue   Constant
hi! link javaScriptNull    Constant
hi! link javaScriptBraces  Normal

"}}}
" Highlights - CoffeeScript ----------------------------------------{{{
hi! link coffeeDotAccess      Access
hi! link coffeeKeyword        Keyword
hi! link coffeeRepeat         Repeat
hi! link coffeeBoolean        Boolean
hi! link coffeeObjAssign      Assign
hi! link coffeeSpecialIndent  Repeat
hi! link coffeeStatement      Constant
hi! link coffeeConditional    Keyword

"}}}
" Highlights - Help ----------------------------------------{{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}
" Highlights - Signify -------------------------------------{{{
call s:h("SignifySignAdd",    { "bg": s:bg, "fg": s:diffGreen })
call s:h("SignifySignDelete", { "bg": s:bg, "fg": s:diffRed   })
call s:h("SignifySignChange", { "bg": s:bg, "fg": s:diffOrange    })
" }}}

" vim: fdm=marker:sw=2:sts=2:et
