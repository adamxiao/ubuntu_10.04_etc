""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. basic config
set nocp
syn on
" Nuts and Bolts config
set langmenu=zh_CN.UTF-8
set encoding=UTF-8
set termencoding=UTF-8
language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
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
set foldmethod=manual
set diffopt=filler,vertical
set display=lastline


" 1.1 file type options
au BufNewFile *.c,*.h set fileencoding=cp936
"au BufRead *c,*.h setlocal fileencodings=cp936,ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
autocmd FileType c setlocal fileencodings=cp936,ucs-bom,utf-8,gb18030,big5,euc-jp,euc-kr,latin1
autocmd FileType python setlocal expandtab shiftwidth=2 tabstop=2 smarttab softtabstop=2
au! BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.txt setlocal ft=txt
au BufRead,BufNewFile 2012_*_*.log setlocal ft=crm_log
au BufEnter *.c,*.h,*.cpp,*.hpp,*.cc source ~/.vim/etc/c.vim
au FileType c,cpp setlocal nu
"autocmd FileType c setlocal expandtab shiftwidth=2 tabstop=2 smarttab softtabstop=2
au BufEnter *.c,*.h,*.cpp,*.hpp,*.cc set expandtab
"autocmd FileType c source ~/.vim/etc/c.vim
" TODO : optimize the setting

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
nmap <F4> :vimgrep /\<<C-R>=expand("<cword>")<CR>\>/ **/*.h **/*.c
nmap <F5> :make<CR>
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


set path+=**/**
" 设置tuxedo，oracle，tools等头文件目录
set tags=tags;,~/.vim/systags,~/.vim/libtags
" 将系统已经生成的tags导入
" taglist config

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ plugin config

filetype plugin on
filetype plugin indent on
" set plugin on


let g:pydiction_location = '~/.vim/after/ftplugin/pydiction-1.2/complete-dict'
let g:pydiction_menu_height = 20 
" python dict plugin

set completeopt=longest,menu
" onmi plugin config


let g:SuperTabDefaultCompletionType = "context"
" supertab plugin config


let Tlist_Inc_Winwidth=0
let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
" TagList plugin config


let g:alternateNoDefaultAlternate = 1
let g:alternateRelativeFiles = 1
"let g:alternateSearchPath = 'reg:#src/\([^/]*\)#src/include/\1##,reg:#include/\([^/]*\)#\1##,reg:#crmframe/\([^/]*\)#include/\1##,reg:#include/\([^/]*\)#crmframe/\1##'
"let g:alternateSearchPath = 'reg:#./#./include##,reg:reg:#./include#./##,reg'
let g:alternateSearchPath = 'wdr:include,sfr:../src,sfr:../include,sfr:..'
" a.vim plugin

nmap <leader>ff :FufFile **/<CR>
nmap <leader>fb :FufBuffer<CR>
" fuzzfind plugin

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPTag'
let g:ctrlp_working_path_mode = ''
set wildignore+=*.o,*.so,*.svn,*.git
let g:ctrlp_max_files = 20000
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ }
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_max_height = 35
let g:ctrlp_switch_buffer = 'Et'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_mruf_relative = 1
" ctrlp plugin

let g:snips_author = 'Adam Xiao'
let g:snips_authorref = 'iefcu'
let g:snips_email = 'iefcuxy@gmail.com'
" snippet plugin

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ function definition

function Do_CsTag()
"    silent! execute "!ctags -R '.'"
    silent! execute "!ctags -R --c-kinds=+p --c++-kinds=+px --fields=+iaS --extra=+q --languages=c,c++ --extra=+f '.'"
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
" ------定义增加tags和cscope函数

" Find file in current directory and edit it.
function! Find(name)
  let l:list=system("find . -name '".a:name."' | perl -ne 'print \"$.\\t$_\"'")
  let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
  if l:num < 1
    echo "'".a:name."' not found"
    return
  endif
  if l:num != 1
    echo l:list
    let l:input=input("Which ? (CR=nothing)\n")
    if strlen(l:input)==0
      return
    endif
    if strlen(substitute(l:input, "[0-9]", "", "g"))>0
      echo "Not a number"
      return
    endif
    if l:input<1 || l:input>l:num
      echo "Out of range"
      return
    endif
    let l:line=matchstr("\n".l:list, "\n".l:input."\t[^\n]*")
  else
    let l:line=l:list
  endif
  let l:line=substitute(l:line, "^[^\t]*\t./", "", "")
  execute ":e ".l:line
endfunction
command! -nargs=1 Find :call Find("<args>")

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
" 实现C程序的缩进


"set backup
"set patchmode=.org~
"set backup options
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
