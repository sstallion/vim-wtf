" wtf.vim - a variable contrast color scheme for terminal lovers
" Last Change:  2016 Sep 02
" Maintainer:   Steven Stallion <sstallion@gmail.com>
" License:      Simplified BSD License

let s:save_cpo = &cpo
set cpo&vim

" By default, GUI colors are taken from the iTerm2 Dark Tango terminal
" color scheme. If the original colors are desired instead, the
" following option should be set to a non-zero value:
let g:wtf_pedantic_guicolors = get(g:, 'wtf_pedantic_guicolors', 0)

" Butter
let wtf#cterm_yellow          = 3
if &t_Co < 16
  let wtf#cterm_brightyellow  = wtf#cterm_yellow
else
  let wtf#cterm_brightyellow  = 11
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_yellow          = '#edd400'
  let wtf#gui_brightyellow    = '#fce94f'
else
  let wtf#gui_yellow          = '#cfae00'
  let wtf#gui_brightyellow    = '#fdeb61'
endif

" Orange
if &t_Co < 256
  let wtf#cterm_orange        = wtf#cterm_yellow
  let wtf#cterm_brightorange  = wtf#cterm_brightyellow
else
  let wtf#cterm_orange        = 202
  let wtf#cterm_brightorange  = 215
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_orange          = '#f57900'
  let wtf#gui_brightorange    = '#fcaf3e'
else
  let wtf#gui_orange          = '#ff5f00'
  let wtf#gui_brightorange    = '#ffaf5f'
endif

" Chocolate
if &t_Co < 256
  let wtf#cterm_brown         = wtf#cterm_yellow
  let wtf#cterm_brightbrown   = wtf#cterm_brightyellow
else
  let wtf#cterm_brown         = 136
  let wtf#cterm_brightbrown   = 179
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_brown           = '#c17d11'
  let wtf#gui_brightbrown     = '#e9b96e'
else
  let wtf#gui_brown           = '#af8700'
  let wtf#gui_brightbrown     = '#d7af5f'
endif

" Chameleon
let wtf#cterm_green           = 2
if &t_Co < 16
  let wtf#cterm_brightgreen   = wtf#cterm_green
else
  let wtf#cterm_brightgreen   = 10
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_green           = '#4e9a06'
  let wtf#gui_brightgreen     = '#8ae234'
else
  let wtf#gui_green           = '#5ea702'
  let wtf#gui_brightgreen     = '#99e343'
endif

" Sky Blue
let wtf#cterm_blue            = 4
if &t_Co < 16
  let wtf#cterm_brightblue    = wtf#cterm_blue
else
  let wtf#cterm_brightblue    = 12
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_blue            = '#3465a4'
  let wtf#gui_brightblue      = '#729fcf'
else
  let wtf#gui_blue            = '#427ab3'
  let wtf#gui_brightblue      = '#84b0d8'
endif

" Plum
let wtf#cterm_magenta         = 5
if &t_Co < 16
  let wtf#cterm_brightmagenta = wtf#cterm_magenta
else
  let wtf#cterm_brightmagenta = 13
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_magenta         = '#75507b'
  let wtf#gui_brightmagenta   = '#ad7fa8'
else
  let wtf#gui_magenta         = '#89658e'
  let wtf#gui_brightmagenta   = '#bc94b7'
endif

" Scarlet Red
let wtf#cterm_red             = 1
if &t_Co < 16
  let wtf#cterm_brightred     = wtf#cterm_red
else
  let wtf#cterm_brightred     = 9
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_red             = '#cc0000'
  let wtf#gui_brightred       = '#ef2929'
else
  let wtf#gui_red             = '#d81e00'
  let wtf#gui_brightred       = '#f54235'
endif

" Cyan
let wtf#cterm_cyan            = 6
if &t_Co < 16
  let wtf#cterm_brightcyan    = wtf#cterm_cyan
else
  let wtf#cterm_brightcyan    = 14
endif

" Cyan is not an officially supported color, though it still defined by
" the terminal color scheme. It should be used sparingly:
let wtf#gui_cyan              = '#00a7aa'
let wtf#gui_brightcyan        = '#37e6e8'

" Aluminium
let wtf#cterm_black           = 0
let wtf#cterm_gray            = 7

if &t_Co < 16
  let wtf#cterm_darkgray      = wtf#cterm_gray
  let wtf#cterm_white         = wtf#cterm_gray
else
  let wtf#cterm_darkgray      = 8
  let wtf#cterm_white         = 15
endif

if &t_Co < 256
  let wtf#cterm_darkestgray   = wtf#cterm_black
  let wtf#cterm_darkergray    = wtf#cterm_black
  let wtf#cterm_brightgray    = wtf#cterm_white
else
  let wtf#cterm_darkestgray   = 234
  let wtf#cterm_darkergray    = 238
  let wtf#cterm_brightgray    = 254
endif

if g:wtf_pedantic_guicolors
  let wtf#gui_black           = '#000000'
  let wtf#gui_darkestgray     = '#2e3436'
  let wtf#gui_darkergray      = '#555753'
  let wtf#gui_darkgray        = '#888a85'
  let wtf#gui_gray            = '#d3d7cf'
  let wtf#gui_brightgray      = '#eeeeec'
  let wtf#gui_white           = '#ffffff'
else
  let wtf#gui_black           = '#000000'
  let wtf#gui_darkestgray     = '#1c1c1c'
  let wtf#gui_darkergray      = '#444444'
  let wtf#gui_darkgray        = '#686a66'
  let wtf#gui_gray            = '#dbded8'
  let wtf#gui_brightgray      = '#e4e4e4'
  let wtf#gui_white           = '#f1f1f0'
endif

" Supported highlight-args:
let s:keys = [
      \ 'term',
      \ 'start',
      \ 'stop',
      \ 'cterm',
      \ 'ctermfg',
      \ 'ctermbg',
      \ 'gui',
      \ 'font',
      \ 'guifg',
      \ 'guibg',
      \ 'guisp',
      \ ]

" Adds a highlight group, or changes the highlighting for an existing
" group. Unlike the :highlight command, unset args are set to 'NONE'
" rather than the defaults.
function! wtf#highlight(colors)
  for [group, args] in items(a:colors)
    for key in s:keys
      if !has_key(args, key)
        let args[key] = 'NONE'
      endif
    endfor
    let s = []
    for [key, value] in items(args)
      call add(s, printf('%s=%s', key, value))
    endfor
    execute join([':highlight', group, join(s, ' ')], ' ')
  endfor
endfunction

let &cpo = s:save_cpo
unlet s:save_cpo
