"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_sql_ftplugin")
  finish
endif
let b:adam_did_sql_ftplugin = 1

let &l:equalprg='sql_format.py -'
setlocal encoding=cp936
vmap <buffer> <silent> <leader>sp  !sql_parse.sh<CR>
