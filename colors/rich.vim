" Maintainer:	Henrique C. Alves (hcarvalhoalves@gmail.com)
" Version:      1.0
" Last Change:	September 25 2008

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine                   guibg=#2d2d2d ctermbg=236 cterm=none
  hi ColorColumn                  guibg=#2d2d2d ctermbg=236
  hi CursorColumn                 guibg=#2d2d2d ctermbg=236
  hi MatchParen    guifg=#cccccc  guibg=#A0A0A0 gui=bold ctermfg=250 ctermbg=248 cterm=bold
  hi Pmenu		   guifg=#ffffff  guibg=#444444 ctermfg=255 ctermbg=238
  hi PmenuSel		   guifg=#000000  guibg=#00bbbb ctermfg=0 ctermbg=38
endif

" General colors
hi Search       guifg=#ffffff guibg=#888888 ctermfg=255 ctermbg=238 
hi Cursor       guifg=#000000 guibg=#cccccc gui=none cterm=none ctermfg=0 ctermbg=251
hi CursorLineNr guifg=#74c4c6 guibg=#202020 gui=none cterm=none ctermfg=116 ctermbg=236
hi Normal       guifg=#e2e2e5 guibg=#202020 gui=none ctermfg=188 ctermbg=234
hi NonText      guifg=#808080 guibg=#202020 gui=none ctermfg=102 ctermbg=16
hi LineNr       guifg=#808080 guibg=#202020 gui=none ctermfg=102 ctermbg=16
hi StatusLine   guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=188 ctermbg=238 cterm=italic
hi StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=102 ctermbg=238
hi VertSplit    guifg=#444444 guibg=#444444 gui=none ctermfg=59 ctermbg=59
hi Folded       guifg=#a0a8b0 guibg=#202020 gui=none ctermbg=145 ctermfg=16
hi Title        guifg=#f6f3e8 guibg=NONE    gui=bold ctermfg=230 cterm=bold
hi Visual       guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=230 ctermbg=59
hi SpecialKey   guifg=#808080 guibg=#202020 gui=none ctermfg=102 ctermbg=16

" Syntax highlighting
hi Comment    guifg=#808080 gui=italic ctermfg=102
hi Boolean    guifg=#f97be0 gui=none ctermfg=212
hi String     guifg=#b1d631 gui=italic ctermfg=149
hi Identifier guifg=#ff9800 gui=none ctermfg=208
hi Function   guifg=#ff9980 gui=none ctermfg=208
hi Type       guifg=#f7feb6 gui=none ctermfg=229
hi Statement  guifg=#e1c708 gui=none ctermfg=184
hi Keyword    guifg=#74c4c6 gui=none ctermfg=116
hi Constant   guifg=#74c4c6 gui=none ctermfg=116
hi Number     guifg=#f97be0 gui=none ctermfg=212
hi Special    guifg=#e1c708 gui=none ctermfg=184
hi PreProc    guifg=#e1c708 gui=none ctermfg=184
hi Todo       guifg=#000000 guibg=#e6ea50 gui=italic ctermfg=0 ctermbg=185 cterm=italic

" Code-specific colors
hi pythonOperator guifg=#7e8aa2 gui=none ctermfg=103

" NERDTree colors
hi NERDTreeFile     guifg=#cdd2db ctermfg=188
hi NERDTreeDir      guifg=#a5aebe ctermfg=145
hi NERDTreeUp       guifg=#5b646d ctermfg=59

hi def link NERDTreeOpenable String
hi def link NERDTreeCloseable NERDTreeOpenable
hi def link NERDTreeCWD String
hi def link NERDTreePart String
