" Vim color file
" Maintainer:   Mingbai <mbbill AT gmail DOT com>
" Last Change:  2006-12-24 20:09:09

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif
let g:colors_name="desertEx"

hi Normal	guifg=#d0d0d0 guibg=#1c1c1c gui=none

" AlignCtrl default
" AlignCtrl =P0 guifg guibg gui
" Align

" highlight groups
hi Cursor       guifg=black              guibg=#eee689  gui=none
hi ErrorMsg     guifg=#ffff00            guibg=#5f0000  gui=none
hi VertSplit    guifg=gray10             guibg=gray40   gui=none
hi CursorLine   guifg=NONE               guibg=#282828  gui=none
hi ColorColumn  guifg=grey10             guibg=#1e1e1e   gui=none
"hi CursorColumn guifg=NONE               guibg=#242424  gui=none
hi Folded       guifg=#f2eaae            guibg=grey20   gui=none
hi FoldColumn   guifg=#ebead2            guibg=gray20   gui=none
hi IncSearch    guifg=#ffff00            guibg=NONE     gui=underline
hi LineNr       guifg=#506271            gui=none
hi ModeMsg      guifg=SkyBlue            gui=none
hi MoreMsg      guifg=SeaGreen           gui=none
hi NonText      guifg=gray40             gui=none
"hi Question     guifg=springgreen        gui=none
hi Search       guifg=grey50            guibg=NONE     gui=underline
hi SpecialKey   guifg=grey30             gui=none
hi StatusLine   guifg=gray5              guibg=#c2bfa5  gui=bold
hi StatusLineNC guifg=grey10             guibg=gray40   gui=none
hi Title        guifg=indianred          gui=none
hi Visual       guifg=gray10             guibg=#c2bfa5  gui=none
"hi WarningMsg   guifg=salmon             gui=none
hi Pmenu        guifg=#eeeeee            guibg=#303030  gui=none
hi PmenuSel     guifg=#000000            guibg=#5fafd7
hi PmenuSBar    guifg=NONE               guibg=#767676
hi PmenuThumb   guifg=NONE               guibg=#d0d0d0
hi WildMenu     guifg=gray               guibg=gray17   gui=none
hi MatchParen	guifg=cyan               guibg=NONE     gui=bold
hi DiffAdd      guifg=black              guibg=wheat1
hi DiffChange   guifg=black              guibg=skyblue1
hi DiffText     guifg=black              guibg=hotpink1 gui=none
hi DiffDelete   guibg=gray45             guifg=black    gui=none



" syntax highlighting groups
hi Comment      guifg=#506271
hi String       guifg=#d06265
hi Constant     guifg=#ffffaa
hi Identifier   guifg=#79c67d
hi Function     guifg=#fcc83e
hi Statement    guifg=#bea66f
hi PreProc      guifg=Skyblue
hi Type         guifg=#e59b54
hi Special      guifg=lightgoldenrod2
hi Ignore       guifg=grey40
hi Todo         guifg=#af1e21            guibg=#202020
hi Error        guifg=#ffff00            guibg=#5f0000
"hi Underlined   guifg=NONE

" #############
"hi String       guifg=red        gui=none
hi Number       guifg=Skyblue
"hi Character	a character constant: 'c', '\n'
"hi Boolean      guifg=#b2c20d            gui=none
"hi Float		a floating point constant: 2.3e10

"hi Identifier	any variable name
"hi Function	function name (also: methods for classes)

"hi Statement	any statement
hi Conditional	guifg=#5fafd7
hi Repeat		guifg=#5fafd7
hi Label		guifg=lightgoldenrod " case, default, etc.
"hi Operator	    guifg=lightgoldenrod2
"hi Keyword	    guifg=Skyblue
"hi Exception	guifg=#ccb0a0 " try, catch, throw

"hi PreProc	generic Preprocessor
"hi Include      guifg=#8494ac " preprocessor #include
"hi Define		preprocessor #define
"hi Macro		same as Define
"hi PreCondit	guifg=#cfd17c " preprocessor #if, #else, #endif, etc.

"hi Type		int, long, char, etc.
"hi StorageClass	guifg=#5fafd7
"hi Structure	struct, union, enum, etc.
"hi Typedef	A typedef

"hi Special	any special symbol
"hi SpecialChar	guifg=#FFFFFF
hi Tag          guifg=Skyblue " you can use CTRL-] on this
"hi Delimiter	character that needs attention
"hi SpecialComment	special things inside a comment
"hi Debug		debugging statements

"hi Underlined	text that stands out, HTML links

"hi Ignore		left blank, hidden

"hi Error		any erroneous construct
" #####################


" color terminal definitions
hi SpecialKey   ctermfg=darkgreen
hi NonText      cterm=bold           ctermfg=darkblue
hi Directory    ctermfg=darkgreen
hi ErrorMsg     cterm=bold           ctermfg=7        ctermbg=1
hi IncSearch    cterm=NONE           ctermfg=yellow   ctermbg=green
hi Search       cterm=NONE           ctermfg=grey     ctermbg=blue
hi MoreMsg      ctermfg=darkgreen
hi ModeMsg      cterm=NONE           ctermfg=brown
hi LineNr       ctermfg=3
hi Question     ctermfg=green
hi StatusLine   cterm=bold,reverse
hi StatusLineNC cterm=reverse
hi VertSplit    cterm=reverse
hi Title        ctermfg=5
hi Visual       cterm=reverse
hi VisualNOS    cterm=bold,underline
hi WarningMsg   ctermfg=1
hi WildMenu     ctermfg=0            ctermbg=3
hi Folded       ctermfg=darkgrey     ctermbg=NONE
hi FoldColumn   ctermfg=darkgrey     ctermbg=NONE
hi DiffAdd      ctermbg=4
hi DiffChange   ctermbg=5
hi DiffDelete   cterm=bold           ctermfg=4        ctermbg=6
hi DiffText     cterm=bold           ctermbg=1
hi Comment      ctermfg=0
hi Constant     ctermfg=brown
hi Special      ctermfg=5
hi Identifier   ctermfg=6
hi Statement    ctermfg=3
hi PreProc      ctermfg=5
hi Type         ctermfg=2
hi Underlined   cterm=underline      ctermfg=5
hi Ignore       ctermfg=darkgrey
hi Error        cterm=bold           ctermfg=7        ctermbg=1
