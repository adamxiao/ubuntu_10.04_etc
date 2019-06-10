" Intenting
setlocal noexpandtab                         " use tabs, not spaces
setlocal tabstop=4                           " tabstops of 8
setlocal shiftwidth=0                        " indents of 8
"setlocal textwidth=78                        " screen in 80 columns wide, wrap at 78

setlocal autoindent smartindent              " turn on auto/smart indenting
setlocal smarttab                            " make <tab> and <backspace> smarter
setlocal backspace=eol,start,indent          " allow backspacing over indent, eol, & start

" Highlighting
syntax on
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t sf_uint64_t sf_uint32_t sf_uint16_t sf_uint8_t sf_boolean_t sf_int64_t sf_int32_t sf_int16_t sf_int8_t sf_u_int64_t sf_u_int32_t sf_u_int16_t sf_u_int8_t
syn keyword cOperator likely unlikely

"syn match ErrorLeadSpace  /^ \+/         " highlight any leading spaces
"syn match MarkWord5   /\t/               " highlight tab
syn match ErrorTailSpace  /\s\+$/        " highlight any trailing spaces
"match ErrorMsg            /\%>80v.\+/    " highlight anything past 80 in red
"match CursorLine            /\%>80v.\+/    " highlight anything past 80 in red

hi link ErrorTailSpace	ErrorMsg
hi link ErrorLeadSpace  ErrorMsg

" C formatting
setlocal formatoptions=tcqlron
setlocal cinoptions=:0,l1,t0,g0
let &l:formatprg='astyle --mode=c --style=k/r -t'

" Folds
setlocal foldmethod=manual

" tags
"let $kernel_version=system('uname -r | tr -d "\n"')
"setlocal tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags,/lib/modules/$kernel_version/build/tags,/usr/include/tags
