"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_python_ftplugin")
  finish
endif
let b:adam_did_python_ftplugin = 1

setlocal expandtab shiftwidth=2 tabstop=2 smarttab softtabstop=2
