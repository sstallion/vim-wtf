" wtf.vim - a variable contrast color scheme for terminal lovers
" Last Change:  2016 Sep 02
" Maintainer:   Steven Stallion <sstallion@gmail.com>
" License:      Simplified BSD License

let s:save_cpo = &cpo
set cpo&vim

set background=dark
highlight clear
if has('syntax')
  syntax reset
endif
let g:colors_name = 'wtf'

" Text Groups
call wtf#highlight({
      \ 'Conceal': {
      \   'ctermfg': wtf#cterm_brightgray, 'ctermbg': wtf#cterm_darkergray,
      \   'guifg'  : wtf#gui_brightgray,   'guibg'  : wtf#gui_darkergray,
      \ },
      \ 'ModeMsg': {
      \   'cterm': 'bold', 'ctermfg': wtf#cterm_gray,
      \   'gui'  : 'bold', 'guifg'  : wtf#gui_gray,
      \ },
      \ 'NonText': {
      \   'ctermfg': wtf#cterm_brightblue,
      \   'guifg'  : wtf#gui_brightblue,
      \ },
      \ 'Normal': {
      \   'ctermfg': wtf#cterm_gray, 'ctermbg': wtf#cterm_black,
      \   'guifg'  : wtf#gui_gray,   'guibg'  : wtf#gui_black,
      \ },
      \ 'ErrorMsg': {
      \   'term' : 'standout',
      \   'cterm': 'bold', 'ctermfg': wtf#cterm_white, 'ctermbg': wtf#cterm_red,
      \   'gui'  : 'bold', 'guifg'  : wtf#gui_white,   'guibg'  : wtf#gui_red,
      \ },
      \ 'ExtraWhitespace': {
      \   'term'   : 'reverse',
      \   'ctermfg': wtf#cterm_gray, 'ctermbg': wtf#cterm_red,
      \   'guifg'  : wtf#gui_gray,   'guibg'  : wtf#gui_red,
      \ },
      \ })

highlight! link MoreMsg Normal
highlight! link Question Normal
highlight! link WarningMsg Normal
highlight! link SpecialKey NonText
highlight! link Title Normal

" Search/Match Groups
call wtf#highlight({
      \ 'Search': {
      \   'term'   : 'standout',
      \   'ctermfg': wtf#cterm_orange,
      \   'guifg'  : wtf#gui_orange,
      \ },
      \ 'IncSearch': {
      \   'term' : 'reverse',
      \   'cterm': 'reverse', 'ctermfg': wtf#cterm_orange,
      \   'gui'  : 'reverse', 'guifg'  : wtf#gui_orange,
      \ },
      \ })

highlight! link MatchParen Search

" Cursor Groups
call wtf#highlight({
      \ 'Cursor': {
      \   'term' : 'reverse',
      \   'cterm': 'reverse',
      \   'gui'  : 'reverse',
      \ },
      \ 'CursorLine': {
      \   'term'   : 'reverse',
      \   'ctermbg': wtf#cterm_darkestgray,
      \   'guibg'  : wtf#gui_darkestgray,
      \ },
      \ 'CursorLineNr': {
      \   'ctermfg': wtf#cterm_gray,
      \   'guifg'  : wtf#gui_gray,
      \ },
      \ 'Visual': {
      \   'ctermfg': wtf#cterm_black, 'ctermbg': wtf#cterm_brightblue,
      \   'guifg'  : wtf#gui_black,   'guibg'  : wtf#gui_brightblue,
      \ },
      \ 'VisualNOS': {
      \   'ctermfg': wtf#cterm_black, 'ctermbg': wtf#cterm_gray,
      \   'guifg'  : wtf#gui_black,   'guibg'  : wtf#gui_gray,
      \ },
      \ })

highlight! link CursorColumn CursorLine

" Editor Groups
call wtf#highlight({
      \ 'ColorColumn': {
      \   'ctermfg': wtf#cterm_darkestgray,
      \   'guifg'  : wtf#gui_darkestgray,
      \ },
      \ 'Folded': {
      \   'ctermfg': wtf#cterm_brightgray, 'ctermbg': wtf#cterm_darkestgray,
      \   'guifg'  : wtf#gui_brightgray,   'guibg'  : wtf#gui_darkestgray,
      \ },
      \ 'LineNr': {
      \   'ctermfg': wtf#cterm_darkgray,
      \   'guifg'  : wtf#gui_darkgray,
      \ },
      \ 'StatusLine': {
      \   'term' : 'reverse',
      \   'cterm': 'bold', 'ctermfg': wtf#cterm_white, 'ctermbg': wtf#cterm_blue,
      \   'gui'  : 'bold', 'guifg'  : wtf#gui_white,   'guibg'  : wtf#gui_blue,
      \ },
      \ 'StatusLineNC': {
      \   'ctermfg': wtf#cterm_brightgray, 'ctermbg': wtf#cterm_darkergray,
      \   'guifg'  : wtf#gui_brightgray,   'guibg'  : wtf#gui_darkergray,
      \ },
      \ 'VertSplit': {
      \   'ctermfg': wtf#cterm_darkestgray, 'ctermbg': wtf#cterm_darkestgray,
      \   'guifg'  : wtf#gui_darkestgray,   'guibg'  : wtf#gui_darkestgray,
      \ },
      \ 'WildMenu': {
      \   'ctermfg': wtf#cterm_darkestgray, 'ctermbg': wtf#cterm_brightgray,
      \   'guifg'  : wtf#gui_darkestgray,   'guibg'  : wtf#gui_brightgray,
      \ },
      \ })

highlight! link FoldColumn Folded
highlight! link SignColumn LineNr
highlight! link TabLine StatusLineNC
highlight! link TabLineFill VertSplit
highlight! link TabLineSel StatusLine

" Popup Menu Groups
call wtf#highlight({
      \ 'Pmenu': {
      \   'ctermfg': wtf#cterm_brightgray, 'ctermbg': wtf#cterm_magenta,
      \   'guifg'  : wtf#gui_brightgray,   'guibg'  : wtf#gui_magenta,
      \ },
      \ 'PmenuSel': {
      \   'ctermfg': wtf#cterm_darkergray, 'ctermbg': wtf#cterm_brightmagenta,
      \   'guifg'  : wtf#gui_darkergray,   'guibg'  : wtf#gui_brightmagenta,
      \ },
      \ 'PmenuSbar': {
      \   'ctermbg': wtf#cterm_darkergray,
      \   'guibg'  : wtf#gui_darkergray,
      \ },
      \ 'PmenuThumb': {
      \   'ctermbg': wtf#cterm_brightgray,
      \   'guibg'  : wtf#gui_brightgray,
      \ },
      \ })

" Netrw Groups
call wtf#highlight({
      \ 'Directory': {
      \   'ctermfg': wtf#cterm_brightblue,
      \   'guifg'  : wtf#gui_brightblue,
      \ },
      \ 'netrwExe': {
      \   'ctermfg': wtf#cterm_brightgreen,
      \   'guifg'  : wtf#gui_brightgreen,
      \ },
      \ 'netrwSymLink': {
      \   'ctermfg': wtf#cterm_brightcyan,
      \   'guifg'  : wtf#gui_brightcyan,
      \ },
      \ })

" Diff Groups
call wtf#highlight({
      \ 'DiffAdd': {
      \   'ctermfg': wtf#cterm_green,
      \   'guifg'  : wtf#gui_green,
      \ },
      \ 'DiffChange': {
      \   'ctermfg': wtf#cterm_yellow,
      \   'guifg'  : wtf#gui_yellow,
      \ },
      \ 'DiffDelete': {
      \   'ctermfg': wtf#cterm_red,
      \   'guifg'  : wtf#gui_red,
      \ },
      \ 'DiffText': {
      \   'cterm': 'reverse', 'ctermfg': wtf#cterm_yellow, 'ctermbg': wtf#cterm_black,
      \   'gui'  : 'reverse', 'guifg'  : wtf#gui_yellow,   'guibg'  : wtf#gui_black,
      \ },
      \ })

" Spelling Groups
call wtf#highlight({
      \ 'SpellBad': {
      \   'cterm': 'underline', 'ctermfg': wtf#cterm_brightred,
      \   'gui'  : 'undercurl', 'guisp'  : wtf#gui_brightred,
      \ },
      \ 'SpellCap': {
      \   'cterm': 'underline', 'ctermfg': wtf#cterm_brightgreen,
      \   'gui'  : 'undercurl', 'guisp'  : wtf#gui_brightgreen,
      \ },
      \ 'SpellLocal': {
      \   'cterm': 'underline', 'ctermfg': wtf#cterm_brightgreen,
      \   'gui'  : 'undercurl', 'guisp'  : wtf#gui_brightgreen,
      \ },
      \ 'SpellRare': {
      \   'cterm': 'underline', 'ctermfg': wtf#cterm_brightgreen,
      \   'gui'  : 'undercurl', 'guisp'  : wtf#gui_brightgreen,
      \ },
      \ })

" Syntax Groups
call wtf#highlight({
      \ 'Comment': {
      \   'ctermfg': wtf#cterm_darkgray,
      \   'guifg'  : wtf#gui_darkgray,
      \ },
      \ 'String': {
      \   'ctermfg': wtf#cterm_brightblue,
      \   'guifg'  : wtf#gui_brightblue,
      \ },
      \ 'Statement': {
      \   'ctermfg': wtf#cterm_brightyellow,
      \   'guifg'  : wtf#gui_brightyellow,
      \ },
      \ 'PreProc': {
      \   'ctermfg': wtf#cterm_blue,
      \   'guifg'  : wtf#gui_blue,
      \ },
      \ 'Special': {
      \   'ctermfg': wtf#cterm_brightcyan,
      \   'guifg'  : wtf#gui_brightcyan,
      \ },
      \ 'Type': {
      \   'ctermfg': wtf#cterm_brightgreen,
      \   'guifg'  : wtf#gui_brightgreen,
      \ },
      \ 'Underlined': {
      \   'cterm': 'underline', 'ctermfg': wtf#cterm_brightblue,
      \   'gui'  : 'underline', 'guifg'  : wtf#gui_brightblue,
      \ },
      \ 'Error': {
      \   'cterm': 'bold', 'ctermfg': wtf#cterm_red,
      \   'gui'  : 'bold', 'guifg'  : wtf#gui_red,
      \ },
      \ })

highlight! link Boolean Statement
highlight! link Constant Normal
highlight! link Identifier Normal
highlight! link Special String
highlight! link Todo Normal

let &cpo = s:save_cpo
unlet s:save_cpo
