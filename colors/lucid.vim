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

" The Colors -----------------------------------------------
" Define reusable colors
let s:darkSlate        = { "gui": "#1f2428", "cterm": "234" }
let s:slate            = { "gui": "#262c31", "cterm": "234" }
let s:lightSlate       = { "gui": "#383b41", "cterm": "235" }
let s:lighterSlate     = { "gui": "#404349", "cterm": "236" }
let s:lightOrange      = { "gui": "#f0c674", "cterm": "236" }
let s:orange           = { "gui": "#de935f", "cterm": "236" }
let s:cyan             = { "gui": "#8abeb7", "cterm": "222" }

let s:white            = { "gui": "#FFFFFF", "cterm": "231" }
let s:almostWhite      = { "gui": "#c5c5c5", "cterm": "255" }
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

let s:darkGreen        = { "gui": "#5F5F00", "cterm": "58"  }
let s:middleDarkGreen  = { "gui": "#739200", "cterm": "64"  }
let s:middleLightGreen = { "gui": "#B1D631", "cterm": "149" }
let s:lightGreen       = { "gui": "#BBFFAA", "cterm": "157" }

let s:darkTan          = { "gui": "#503D15", "cterm": "52"  }
let s:lightTan         = { "gui": "#ECE1C8", "cterm": "230" }

" Assign to semantic categories based on background color
if &background == "dark"
  " Dark theme
  let s:bg         = s:slate
  let s:norm       = s:almostWhite
  let s:comment    = s:middleDarkGrey
  let s:dimmed     = s:middleLightGrey
  let s:subtle     = s:darkGrey
  let s:faint      = s:lightSlate
  let s:shade      = s:lighterSlate
  let s:accent1    = s:middleLightBlue
  let s:accent2    = s:lightOrange
  let s:accent3    = s:norm
  let s:accent4    = s:lightTan
  let s:accent5    = s:orange
  let s:normRed    = s:middleLightPink
  let s:normGreen  = s:middleLightGreen
  let s:normBlue   = s:middleLightBlue
  let s:faintRed   = s:darkPink
  let s:faintGreen = s:darkGreen
  let s:faintBlue  = s:darkBlue
else
  " Light theme
  let s:bg         = s:white
  let s:norm       = s:almostBlack
  let s:comment    = s:middleLightGrey
  let s:dimmed     = s:middleDarkGrey
  let s:subtle     = s:lightGrey
  let s:faint      = s:almostWhite
  let s:accent1    = s:middleDarkBlue
  let s:accent2    = s:middleDarkGreen
  let s:accent3    = s:middleDarkPink
  let s:accent4    = s:darkTan
  let s:normRed    = s:middleDarkPink
  let s:normGreen  = s:middleDarkGreen
  let s:normBlue   = s:middleDarkBlue
  let s:faintRed   = s:lightPink
  let s:faintGreen = s:lightGreen
  let s:faintBlue  = s:lightBlue
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
  call s:h("CursorLine",  { "bg": s:faint })
  call s:h("CursorColumn",  { "bg": s:faint })
  call s:h("MatchParen",  { "fg": s:accent1, "bg": s:faint, "gui": "underline" })
  call s:h("Pmenu",       { "bg": s:faint })
  call s:h("PmenuThumb",  { "bg": s:norm })
  call s:h("PmenuSBar",   { "bg": s:subtle })
  call s:h("PmenuSel",    { "bg": s:faintBlue })
  call s:h("ColorColumn", { "bg": s:faintRed })
  call s:h("SpellBad",    { "sp": s:normRed, "gui": "undercurl" })
  call s:h("SpellCap",    { "sp": s:accent1, "gui": "undercurl" })
  call s:h("SpellRare",   { "sp": s:normGreen, "gui": "undercurl" })
  call s:h("SpellLocal",  { "sp": s:accent4, "gui": "undercurl" })
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
call s:h("Cursor",       { "fg": s:bg, "bg": s:accent3 })
call s:h("Visual",       { "bg": s:faintBlue })
call s:h("IncSearch",    { "bg": s:faintBlue })
call s:h("Search",       { "bg": s:faintGreen })
call s:h("StatusLine",   { "fg": s:norm, "bg": s:faint, "gui": "bold", "cterm": "bold" })
call s:h("StatusLineNC", { "fg": s:dimmed, "bg": s:faint })
call s:h("SignColumn",   { "fg": s:norm, "bg": s:bg })
call s:h("VertSplit",    { "fg": s:subtle, "bg": s:faint })
call s:h("TabLine",      { "fg": s:dimmed, "bg": s:faint })
call s:h("TabLineFill",  { "fg": s:darkSlate, "bg": s:darkSlate })
call s:h("TabLineSel",   { "gui": "bold", "cterm": "bold" })
call s:h("Folded",       { "fg": s:comment, "bg": s:faint })
call s:h("Directory",    { "fg": s:accent1 })
call s:h("Title",        { "fg": s:accent4, "gui": "bold", "cterm": "bold" })
call s:h("ErrorMsg",     { "bg": s:faintRed })
call s:h("DiffAdd",      { "bg": s:faintGreen })
call s:h("DiffChange",   { "bg": s:faintRed })
call s:h("DiffDelete",   { "fg": s:normRed, "bg": s:faintRed })
call s:h("DiffText",     { "bg": s:faintRed, "gui": "bold", "cterm": "bold" })
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
call s:h("String",     { "fg": s:accent2 })
call s:h("Keyword",    { "fg": s:accent2, "gui": "bold", "cterm": "bold" })
call s:h("Todo",       { "fg": s:normRed, "gui": "bold", "cterm": "bold" })
call s:h("Function",   { "fg": s:accent2, "gui": "bold", "cterm": "bold" })
call s:h("Repeat",     { "fg": s:accent5, "gui": "bold", "cterm": "bold" })
call s:h("Access",     { "fg": s:accent5 })
call s:h("Boolean",    { "fg": s:accent1 })
call s:h("Constant",    { "fg": s:cyan })
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

" Highlights - CoffeeScript ----------------------------------------{{{
hi! link coffeeDotAccess  Access
hi! link coffeeKeyword    Keyword
hi! link coffeeRepeat     Repeat
hi! link coffeeBoolean    Boolean
"}}}
" Highlights - Help ----------------------------------------{{{
hi! link helpExample         String
hi! link helpHeadline        Title
hi! link helpSectionDelim    Comment
hi! link helpHyperTextEntry  Statement
hi! link helpHyperTextJump   Underlined
hi! link helpURL             Underlined

"}}}

" vim: fdm=marker:sw=2:sts=2:et