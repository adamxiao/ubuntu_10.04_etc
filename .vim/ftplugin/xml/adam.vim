"
" Only do this when not done yet for this buffer
"
if exists("b:adam_did_xml_ftplugin")
  finish
endif
let b:adam_did_xml_ftplugin = 1

"let &l:equalprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
let &l:equalprg='tidy --input-xml true -indent --indent-spaces 2 -wrap 0 -raw -q'
nmap <buffer> <silent> <F5> :%!crm_call_xml_svc.py -<CR>
vmap <buffer> <silent> <F5> !crm_call_xml_svc.py<CR>
nmap <buffer> <silent> <F5><F5> :%!crm_call_xml_test.py -<CR>
vmap <buffer> <silent> <F5><F5> !crm_call_xml_test.py<CR>
