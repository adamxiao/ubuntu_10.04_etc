"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_json_ftplugin")
  finish
endif
let b:adam_did_json_ftplugin = 1

"let &l:equalprg='python -mjson.tool'
let &l:equalprg='jq "."'
"let &l:formatprg='json_format.py'
"let &l:equalprg='js-beautify -i -'

" key mapping
nmap <buffer> <silent> <F5> :%!crm_call_json_svc.py -<CR>
vmap <buffer> <silent> <F5> !crm_call_json_svc.py<CR>
nmap <buffer> <silent> <F5><F5> :%!crm_call_json_svc_test.py -<CR>
vmap <buffer> <silent> <F5><F5> !crm_call_json_svc_test.py<CR>

