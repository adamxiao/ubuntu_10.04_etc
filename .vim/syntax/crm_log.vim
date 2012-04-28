" Vim syntax file
" FileType:     crm_log
" Author:       adam <iefcuxy@gmail.com>

"syntax clear
"syntax case ignore

syn match crm_log_time		/^2012\d*/
syn match crm_log_pid		/|\d*|/
syn region crm_log_bind_sql start=+Bind Sql is+ end=+^2012\d*+
syn match crm_log_error		/ERROR/
syn match crm_log_error_msg /ERROR:.*$/


hi link crm_log_time		Function
hi link crm_log_pid			Function
hi link crm_log_bind_sql	Title
hi link crm_log_error		Search
hi link crm_log_error_msg	ErrorMsg

let b:current_syntax = "crm_log"
