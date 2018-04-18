"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_C_ftplugin")
  finish
endif
let b:adam_did_C_ftplugin = 1

" 1. encoding options
"setlocal fileencodings=cp936,ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
"setlocal fileencoding=cp936

" 2. key mapping
nmap <buffer> <F4> :vimgrep /\<<C-R>=expand("<cword>")<CR>\>/ **/*.h **/*.c
nmap <buffer> <silent> <F5> :make<CR>

" 0. other options
setlocal nu
"setlocal mouse=a

" Intenting
setlocal cindent
setlocal expandtab                      " use spaces replace tabs
setlocal tabstop=4                      " tabstops of 4
setlocal shiftwidth=4                        " indents of 4
"setlocal textwidth=78                        " screen in 80 columns wide, wrap at 78

setlocal autoindent smartindent              " turn on auto/smart indenting
setlocal smarttab                            " make <tab> and <backspace> smarter
setlocal backspace=eol,start,indent          " allow backspacing over indent, eol, & start

" C formatting
setlocal formatoptions=tcqlron
setlocal cinoptions=:0,l1,t0,g0
let &l:formatprg='astyle --mode=c --style=k/r -t'
"let &l:equalprg='astyle --mode=c --style=k/r -t'

" Folds
setlocal foldmethod=manual

" tags
"let $kernel_version=system('uname -r | tr -d "\n"')
"setlocal tags=./tags,tags,../tags,../../tags,../../../tags,../../../../tags,/lib/modules/$kernel_version/build/tags,/usr/include/tags
setlocal tags=tags;,~/.vim/systags,~/.vim/libtags

" Highlighting
syn keyword cType uint ubyte ulong uint64_t uint32_t uint16_t uint8_t boolean_t int64_t int32_t int16_t int8_t u_int64_t u_int32_t u_int16_t u_int8_t sf_uint64_t sf_uint32_t sf_uint16_t sf_uint8_t sf_boolean_t sf_int64_t sf_int32_t sf_int16_t sf_int8_t sf_u_int64_t sf_u_int32_t sf_u_int16_t sf_u_int8_t
syn keyword cOperator likely unlikely

"syn match ErrorLeadSpace  /^ \+/         " highlight any leading spaces
"syn match MarkWord5   /\t/               " highlight tab
syn match ErrorTailSpace  /\s\+$/        " highlight any trailing spaces
"match ErrorMsg            /\%>80v.\+/    " highlight anything past 80 in red
"match CursorLine            /\%>80v.\+/    " highlight anything past 80 in red

hi link ErrorTailSpace	ErrorMsg
hi link ErrorLeadSpace  ErrorMsg

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" automate Strip trailing whitespace when save c and cpp source
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    " Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursor position
    let @/=_s
    call cursor(l, c)
endfunction
"autocmd BufWritePre *.h,*.c,*.cpp :call <SID>StripTrailingWhitespaces()

