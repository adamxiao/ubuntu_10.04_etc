""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. basic config
set nocp
syn on
" Nuts and Bolts config
set langmenu=zh_CN.UTF-8
set encoding=UTF-8
set termencoding=UTF-8
language message zh_CN.UTF-8
"set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencodings=cp936,ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=cp936
" encoding config
set tabstop=4
set shiftwidth=4
" indent config
set hlsearch
" search config
set dir=~/tmp
" swap file dir config
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P>
" status bar config
"set backup
"set patchmode=.org~
" set backup options
set foldmethod=manual
source $HOME/.vim/etc/abbreviations.vim
set diffopt=filler,vertical
set display=lastline
"set expandtab
"set cindent
"set smartindent
"set ignorecase
"set smartcase
"set wrapscan
"set noincsearch
"set nocul
"set nocuc
"set nonu


" 1.1 file type options
autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2 smarttab softtabstop=2
au! BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufNewFile 2012_*_*.log setlocal ft=crm_log
au BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/etc/c.vim
au FileType c,cpp setlocal nu
"autocmd FileType c setlocal expandtab shiftwidth=2 tabstop=2 smarttab softtabstop=2
au BufEnter *.c,*.h,*.cpp,*.hpp,*.cc set expandtab
"autocmd FileType c source ~/.vim/etc/c.vim

" Strip trailing whitespace
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
autocmd BufWritePre *.h,*.c,*.cpp :call <SID>StripTrailingWhitespaces()


" 1.5. formating options
"autocmd FileType c,cpp let &l:formatprg='astyle --mode=c --style=k/r -t'
"autocmd FileType cpp,c let &l:equalprg='astyle --mode=c --style=k/r -t'
autocmd FileType html let &l:equalprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
""autocmd FileType html let &l:formatprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
"autocmd FileType html let &l:formatprg='tidy --indent yes -q'
"autocmd FileType xml let &l:equalprg='xmllint --format --encode UTF-8 --recover - 2>/dev/null'
autocmd FileType xml let &l:equalprg='tidy --input-xml true -indent --indent-spaces 2 -wrap 0 -raw -q'
autocmd FileType sql let &l:equalprg='sql_format.py -'
autocmd FileType sql set encoding=cp936
"autocmd FileType json let &l:equalprg='python -mjson.tool'
""autocmd FileType json let &l:formatprg='json_format.py'
autocmd FileType json let &l:equalprg='/opt/js-beautify/python/js-beautify -i -'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ shortcut command 
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis
"command Svndiff vert new | set bt=nofile | r!svn cat # | 0d_ | diffthis
	 	"\ | wincmd p | diffthis

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ key mapping
"  plugin key mapping:
"  F9 compile, \sf format sql

map <F2> :A<cr>
map <F3> :NERDTreeToggle<cr>
""map <F3><F3> :TlistToggle<cr>
"map <F4> :call Search_Word()<CR>:copen<CR>
nmap <F4> :vimgrep /\<<C-R>=expand("<cword>")<CR>\>/ **/*.h **/*.c
nmap <F5> :make<CR>
"nmap <F5><F5> :make clean all<CR>
autocmd FileType xml nmap <F5> :%!crm_call_xml_svc.py -<CR>
autocmd FileType xml vmap <F5> !crm_call_xml_svc.py<CR>
autocmd FileType xml nmap <F5><F5> :%!crm_call_xml_test.py -<CR>
autocmd FileType xml vmap <F5><F5> !crm_call_xml_test.py<CR>
autocmd FileType json nmap <F5> :%!crm_call_json_svc.py -<CR>
autocmd FileType json vmap <F5> !crm_call_json_svc.py<CR>
autocmd FileType json nmap <F5><F5> :%!crm_call_json_svc_test.py -<CR>
autocmd FileType json vmap <F5><F5> !crm_call_json_svc_test.py<CR>
map <F6> :cw<CR>
map <F6><F6> :ccl<CR>
map <F7> :cn<CR>
map <F7><F7> :cp<CR>
nmap <F8> :TlistToggle<CR>
map <F12> :call Do_CsTag()<CR>
map <F12><F2> :call Add_CsTag()<CR>
" basic key mapping

vnoremap <silent> * y/<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
vnoremap <silent> # y?<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
nmap <C-H> :%s/\<<C-R>=expand("<cword>")<CR>\>/
vmap <C-H> y:%s/<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR>/
nmap ,a ggVG
map <S-q><S-q> :qa!<CR>
"map <C-S-F> :call FormartSrc()<CR>
nmap <Up> gk
nmap <Down> gj
autocmd FileType sql vmap <leader>sp  !sql_parse.sh<CR>


nmap <S-t> :tabnew <CR>
" tab navigation config


nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   
"nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" cscope key map


set path+=./**
set path+=/home/crm20/tuxedo11gR1/include
set path+=/home/crm20/oracle/product/10.2.0/db_1/**
set path+=/crm20c_background/tools
set path+=/crm20c_background/tools/inc
set path+=/crm20c_background/tools/db
set path+=/crm20c_background/tools/rdb
set path+=/crm20c_background/dev/mpw.tydic.src/include
set path+=/crm20c_background/dev/src/include/**
set path+=/crm20c_background/dev/src/service/**
" ����tuxedo��oracle��tools��ͷ�ļ�Ŀ¼
set tags=tags;,~/.vim/systags,~/.vim/libtags
" ��ϵͳ�Ѿ����ɵ�tags����
" taglist config

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ plugin config

filetype plugin on
filetype plugin indent on
" set plugin on

let g:dbext_default_profile_1_crm20_c = 'type=ORA:user=crm20_c:passwd=crm20c:srvname=gz_crm'
let g:dbext_default_profile_2_dic_551 = 'type=ORA:user=dic_551:passwd=dic_551:srvname=gz_crm'
let g:dbext_default_profile_3_45_conf = 'type=ORA:user=crm20_pub:passwd=pub2011:srvname=CRMTEST_18'
let g:dbext_default_profile_4_45_inst = 'type=ORA:user=crm20_ins:passwd=ins2011:srvname=CRMTEST_18'
let g:dbext_default_profile_4_45_test = 'type=ORA:user=gj_ins:passwd=gj_ins:srvname=CRMTEST_18'
let g:dbext_default_profile_5_ora_me = 'type=ORA:user=adam:passwd=iefcu6251965:host=localhost:srvname=orcl'
" database connection profile
let g:dbext_default_ORA_cmd_header = "" .
                        \ "col * format a4\n" .
                        \ "set num 12\n" .
                        \ "set pagesize 50000\n" .
                        \ "set sqlprompt \"\"\n" .
                        \ "set linesize 10000\n" .
                        \ "set flush off\n" .
                        \ "set colsep \"   \"\n" .
                        \ "set tab off\n\n"
"let g:dbext_default_display_cmd_line = 1
"����ִ�������ʱ�򣬾�֪��dbext���������õ���
"let  g:dbext_default_DBI_orientation = 'vertical' " useless
"let g:dbext_default_buffer_lines = 50
"���ؽ����
"let g:dbext_default_window_use_right = 1
"let g:dbext_default_window_use_horiz = 0
" ���ó��ұߴ�����ʾ
" dbext plugin

let g:pydiction_location = '~/.vim/after/ftplugin/pydiction-1.2/complete-dict'
let g:pydiction_menu_height = 20 
" python dict plugin

set completeopt=longest,menu
" onmi plugin config


let g:SuperTabDefaultCompletionType = "context"
" supertab plugin config

let g:completekey = "<C-b>"
" code_complete plugin config

let g:C_Ctrl_j   = 'off'
" c support plugin

let g:BASH_Ctrl_j   = 'off'
" bash support plugin


let g:sqlutil_keyword_case = '\U'
let g:sqlutil_align_first_word = 1
let g:sqlutil_align_comma = 1
let g:sqlutil_align_keyword_right = 1
let g:sqlutil_align_where = 0
" SQLUtilities config


let Tlist_Inc_Winwidth=0
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
" TagList plugin config


let g:alternateNoDefaultAlternate = 1
let g:alternateSearchPath = 'reg:#src/\([^/]*\)#src/include/\1##,reg:#include/\([^/]*\)#\1##,reg:#crmframe/\([^/]*\)#include/\1##,reg:#include/\([^/]*\)#crmframe/\1##'
" a.vim plugin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ function definition

function Do_CsTag()
"    silent! execute "!ctags -R '.'"
    silent! execute "!ctags -R --c-kinds=+p --c++-kinds=+px --fields=+iaS --extra=+q --languages=c,c++ '.'"
    if(executable('cscope') && has("cscope") )
        silent! execute "!find -L `pwd` -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' -o     -name '*.cxx' -o -name '*.hxx'> cscope.files -o -name '*.hpp' -o -name '*.py'"   
endif
    silent! execute "!cscope -bq"
    silent! execute "call Add_CsTag()"
endf

function Add_CsTag()
    if filereadable("cscope.out")
        execute "cs add cscope.out"
        execute "set tags+=./tags"
    endif
endf

silent! execute "call Add_CsTag()"
" ------��������tags��cscope����

function Search_Word()
	let w = expand("<cword>") " �ڵ�ǰ���λ��ץ��
	execute "vimgrep /\<" w "\>/ **/*.h **/*.cpp"
endfunction
" ------ ����ȫ����������

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" reference options, current useless ...

"autocmd BufNewFile,BufRead *.json set ft=javascript
"augroup json_autocmd
"  autocmd!
"  autocmd FileType json set autoindent
"  autocmd FileType json set formatoptions=tcq2l
"  autocmd FileType json set textwidth=78 shiftwidth=2
"  autocmd FileType json set softtabstop=2 tabstop=8
"  autocmd FileType json set expandtab
"  autocmd FileType json set foldmethod=syntax
"augroup END 
"set cin
" ʵ��C���������
