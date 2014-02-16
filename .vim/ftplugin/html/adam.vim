"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_html_ftplugin")
  finish
endif
let b:adam_did_html_ftplugin = 1

let &l:equalprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
"let &l:formatprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
"let &l:formatprg='tidy --indent yes -q'
