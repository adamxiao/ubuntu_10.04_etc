let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
imap <S-Tab> <Plug>SuperTabBackward
inoremap <C-Tab> 	
nmap  ggVG
vmap  ggVG
omap  ggVG
nnoremap <silent>  :call CommentLine()
vnoremap <silent>  :call RangeCommentLine()
onoremap <silent>  :call CommentLine()
nmap  :%s/\<=expand("<cword>")\>/
vmap  :%s/\<=expand("<cword>")\>/
omap  :%s/\<=expand("<cword>")\>/
snoremap <silent> <NL> i<Right>=TriggerSnippet()
map  :FirstExplorerWindow
map  :BottomExplorerWindow
nnoremap <silent>  :call UnCommentLine()
vnoremap <silent>  :call RangeUnCommentLine()
onoremap <silent>  :call UnCommentLine()
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")   
nmap e :cs find e =expand("<cword>")   
nmap t :cs find t =expand("<cword>")   
nmap c :cs find c =expand("<cword>")   
nmap g :cs find g =expand("<cword>")   
nmap s :cs find s =expand("<cword>")   
snoremap % b<BS>%
snoremap ' b<BS>'
map O O 
map QQ :qa!
map T :tabnew 
snoremap U b<BS>U
snoremap \ b<BS>\
map \rwp <Plug>RestoreWinPosn
map \swp <Plug>SaveWinPosn
nmap \ihn :IHN
nmap \is :IHS:A
nmap \ih :IHS
nmap \scp <Plug>SQLUCreateProcedure
nmap \scdt <Plug>SQLUGetColumnDataType
nmap \scd <Plug>SQLUGetColumnDef
nmap \scl <Plug>SQLUCreateColumnList
vmap \sf <Plug>SQLUFormatter
nmap \sf <Plug>SQLUFormatter
vmap \sfs <Plug>SQLUFormatter
nmap \sfs <Plug>SQLUFormatter
vmap \sfr <Plug>SQLUFormatStmts
nmap \sfr <Plug>SQLUFormatStmts
map \tt <Plug>AM_tt
map \tsq <Plug>AM_tsq
map \tsp <Plug>AM_tsp
map \tml <Plug>AM_tml
map \tab <Plug>AM_tab
map \m= <Plug>AM_m=
map \t@ <Plug>AM_t@
map \t~ <Plug>AM_t~
map \t? <Plug>AM_t?
map \w= <Plug>AM_w=
map \ts= <Plug>AM_ts=
map \ts< <Plug>AM_ts<
map \ts; <Plug>AM_ts;
map \ts: <Plug>AM_ts:
map \ts, <Plug>AM_ts,
map \t= <Plug>AM_t=
map \t< <Plug>AM_t<
map \t; <Plug>AM_t;
map \t: <Plug>AM_t:
map \t, <Plug>AM_t,
map \t# <Plug>AM_t#
map \t| <Plug>AM_t|
map \T~ <Plug>AM_T~
map \Tsp <Plug>AM_Tsp
map \Tab <Plug>AM_Tab
map \T@ <Plug>AM_T@
map \T? <Plug>AM_T?
map \T= <Plug>AM_T=
map \T< <Plug>AM_T<
map \T; <Plug>AM_T;
map \T: <Plug>AM_T:
map \Ts, <Plug>AM_Ts,
map \T, <Plug>AM_T,o
map \T# <Plug>AM_T#
map \T| <Plug>AM_T|
map \Htd <Plug>AM_Htd
map \anum <Plug>AM_aunum
map \aunum <Plug>AM_aenum
map \afnc <Plug>AM_afnc
map \adef <Plug>AM_adef
map \adec <Plug>AM_adec
map \ascom <Plug>AM_ascom
map \aocom <Plug>AM_aocom
map \adcom <Plug>AM_adcom
map \acom <Plug>AM_acom
map \abox <Plug>AM_abox
map \a( <Plug>AM_a(
map \a= <Plug>AM_a=
map \a< <Plug>AM_a<
map \a, <Plug>AM_a,
map \a? <Plug>AM_a?
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap gx <Plug>NetrwBrowseX
nmap wm :WMToggle
nmap <F8> :mksession! ~/.vim/session_adam.vim
omap <F4> :call Search_Word():copen
map <F2><F2> :call Add_CsTag()
nmap <F4><F4> :source ~/.vim/session_adam.vim
vmap <F4> :call Search_Word():copen
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
nmap <silent> <Plug>RestoreWinPosn :call RestoreWinPosn()
nmap <silent> <Plug>SaveWinPosn :call SaveWinPosn()
nmap <SNR>11_WE <Plug>AlignMapsWrapperEnd
map <SNR>11_WS <Plug>AlignMapsWrapperStart
nmap <C-PageUp> :tabprevious
nmap <C-PageDown> :tabnext
map <F12><F2> :call Add_CsTag()
map <F12> :call Do_CsTag()
nmap <F8><F8> :source ~/.vim/session_adam.vim
vmap <F8> :call Search_Word():copen
omap <F8> :call Search_Word():copen
map <F7><F7> :cp
map <F7> :cn
map <F6><F6> :ccl
map <F6> :cw
map <F5><F5> :make clean
map <F5> :make
nmap <F4> :vimgrep /\<=expand("<cword>")\>/ **/*.h **/*.cpp **/*.c **/*.cc
map <F3><F3> :TlistToggle
map <F3> :WMToggle
map <F2> :A
imap 	 <Plug>SuperTabForward
inoremap <silent> <NL> =TriggerSnippet()
imap  <Plug>SuperTabForward
imap  <Plug>SuperTabBackward
inoremap <silent> 	 =ShowAvailableSnips()
inoremap <expr>  omni#cpp#maycomplete#Complete()
inoremap <expr> . omni#cpp#maycomplete#Dot()
inoremap <expr> : omni#cpp#maycomplete#Scope()
inoremap <expr> > omni#cpp#maycomplete#Arrow()
imap \ihn :IHN
imap \is :IHS:A
imap \ih :IHS
let &cpo=s:cpo_save
unlet s:cpo_save
set backspace=indent,eol,start
set balloonexpr=BalloonDeclaration()
set completeopt=longest,menu
set expandtab
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set helplang=cn
set hlsearch
set langmenu=zh_CN.UTF-8
set laststatus=2
set omnifunc=omni#cpp#complete#Main
set path=.,/usr/include,,,./**,/home/crm20/tuxedo11gR1/include,/home/crm20/oracle/product/10.2.0/db_1/**,/crm20c_background/tools,/crm20c_background/tools/inc,/crm20c_background/tools/db,/crm20c_background/tools/rdb,/crm20c_background/dev/mpw.tydic.src/include,/crm20c_background/dev/src/include/**,/crm20c_background/dev/src/service/**
set printoptions=paper:a4
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=4
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P>
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set tags=tags;,~/.vim/systags,~/.vim/libtags,./tags
set wildignore=*.pyc
set winaltkeys=no
set nowrapscan
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/tmp/mysql-5.1.53
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +333 NERD_tree_1
badd +3248 sql/sql_parse.cc
badd +5108 sql/mysqld.cc
badd +1 /usr/include/asm-generic/signal.h
badd +31 /usr/include/asm/signal.h
badd +45 /usr/include/bits/signum.h
badd +1953 sql/sql_lex.h
badd +442 sql/gen_lex_hash.cc
badd +114 ~/Public/Dropbox/etc/.vim/session_adam.vim
badd +1214 client/mysql_priv.h
badd +2451 sql/sql_select.cc
badd +85 BUILD/SETUP.sh
badd +4812 client/log_event.cc
badd +657 client/log_event.h
badd +4364 client/mysql.cc
badd +587 client/mysqlimport.c
badd +964 dbug/dbug.c
badd +673 include/my_global.h
badd +1137 sql/sql_connect.cc
badd +51 extra/yassl/include/socket_wrapper.hpp
badd +78 /usr/include/sys/select.h
badd +114 dbug/dbug_long.h
badd +91 include/my_dbug.h
badd +41 include/my_no_pthread.h
badd +656 include/my_pthread.h
badd +33 sql/scheduler.h
badd +43 sql/scheduler.cc
badd +103 mysys/my_winthread.c
badd +288 libmysql/my_thr_init.c
badd +182 libmysql/my_vsnprintf.c
badd +1 ~/Public/Dropbox/bin/other/debug_mysql.sh
badd +240 ~/.vimrc
badd +415 include/mysql_com.h
badd +1156 libmysql/net.c
badd +65 include/violite.h
badd +44 libmysql/viosocket.c
badd +16626 /crm20c_background/dev/release/bin/metadata.in
badd +1 /crm20c_background/dev/release/bin/crmdem.fml32
badd +58 /crm20c_background/dev/src/service/csp/offerinfo/DCCrmOfferResQuery.cpp
badd +373 ~/tmp/mine.c
badd +186 storage/ndb/src/common/util/socket_io.cpp
badd +114 storage/ndb/src/common/portlib/NdbTCP.cpp
badd +156 sql/sql_select.h
badd +150 include/config-win.h
badd +198 extra/yassl/include/openssl/ssl.h
badd +71 storage/federated/ha_federated.cc
badd +5037 sql/sql_base.cc
badd +571 sql/sql_insert.cc
badd +544 storage/myisam/ha_myisam.cc
badd +36 storage/myisam/ha_myisam.h
badd +1161 sql/handler.h
badd +16 ~/tmp/adam.py
badd +4681 sql/handler.cc
silent! argdel *
edit sql/mysqld.cc
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nmap <buffer> <silent> \rh :call C_Hardcopy()
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \rka :call C_CodeCheckArguments()
map <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer>  =CodeComplete()=SwitchRegion()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>  =EchoFuncN()
inoremap <buffer> <silent>  =EchoFuncP()
inoremap <buffer> <silent> ( (=EchoFunc()
inoremap <buffer> <silent> ) =EchoFuncClear())
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \rka :call C_CodeCheckArguments()
imap <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 5101 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5101
normal! 014l
wincmd w
argglobal
edit sql/sql_connect.cc
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \rka :call C_CodeCheckArguments()
map <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer>  =CodeComplete()=SwitchRegion()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>  =EchoFuncN()
inoremap <buffer> <silent>  =EchoFuncP()
inoremap <buffer> <silent> ( (=EchoFunc()
inoremap <buffer> <silent> ) =EchoFuncClear())
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \rka :call C_CodeCheckArguments()
imap <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1123 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1123
normal! 09l
wincmd w
exe 'vert 1resize ' . ((&columns * 88 + 88) / 177)
exe 'vert 2resize ' . ((&columns * 88 + 88) / 177)
tabedit sql/sql_parse.cc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <S-F2> :A
imap <buffer> <silent> <S-F9> :call C_Arguments()
imap <buffer> <silent> <C-F9> :call C_Run()
imap <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
imap <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
nmap <buffer> <silent> <NL> i=C_JumpCtrlJ()
vnoremap <buffer> /* s/*  */<Left><Left><Left>p
nnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
nnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
nnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
nnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
nnoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \cx :call C_CommentToggle( )
nnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
nnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
nnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
nnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
nnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
nnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
nnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
nnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
nnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
nnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
nnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
nnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
nnoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
nnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
nnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
nnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
nnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
nnoremap <buffer> <silent> \in :call C_CodeFor("down")
nnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
nnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
nnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
nnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
nnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
nnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
nnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
nnoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
nnoremap <buffer> <silent> \np :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
nnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
nnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
nnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
nnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
nmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \hm :call C_Help("m")
map <buffer> <silent> \hp :call C_HelpCsupport()
map <buffer> <silent> \rka :call C_CodeCheckArguments()
map <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
map <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
map <buffer> <silent> \rx :call C_XtermSize()
vmap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rs :call C_Settings()
omap <buffer> <silent> \rh :call C_Hardcopy()
map <buffer> <silent> \rd :call C_Indent()
map <buffer> <silent> \rpa :call C_SplintArguments()
map <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
map <buffer> <silent> \rma :call C_MakeArguments()
map <buffer> <silent> \rme :call C_MakeExeToRun()
map <buffer> <silent> \rmc :call C_MakeClean()
map <buffer> <silent> \rm :call C_Make()
map <buffer> <silent> \ra :call C_Arguments()
map <buffer> <silent> \rr :call C_Run()
map <buffer> <silent> \rl :call C_Link():call C_HlMessage()
map <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
vnoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points", "v")
onoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
vnoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch", "v")
onoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
vnoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch", "v")
onoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
noremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
noremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
noremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
noremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
noremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
noremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
noremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
noremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
noremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
noremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
noremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
noremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
noremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
noremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
noremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
noremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
noremap <buffer> \nts :CStyle 
noremap <buffer> <silent> \ntr :call C_RereadTemplates()
noremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
noremap <buffer> <silent> \ns :call C_ProtoShow()
noremap <buffer> <silent> \nc :call C_ProtoClear()
noremap <buffer> <silent> \ni :call C_ProtoInsert()
vnoremap <buffer> <silent> \nm :call C_ProtoPick("method")
onoremap <buffer> <silent> \nm :call C_ProtoPick("method")
vnoremap <buffer> <silent> \nf :call C_ProtoPick("function")
onoremap <buffer> <silent> \nf :call C_ProtoPick("function")
vnoremap <buffer> <silent> \np :call C_ProtoPick("function")
onoremap <buffer> <silent> \np :call C_ProtoPick("function")
noremap <buffer> <silent> \ne :call C_CodeSnippet("e")
vnoremap <buffer> <silent> \nw :call C_CodeSnippet("wv")
onoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
noremap <buffer> <silent> \nr :call C_CodeSnippet("r")
vnoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file", "v")
onoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
vnoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file", "v")
onoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
vnoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert", "v")
onoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
vnoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof", "v")
onoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
noremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
noremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
noremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
noremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
vnoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union" , "v")
onoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
vnoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct", "v")
onoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
vnoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum"  , "v")
onoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
vnoremap <buffer> <silent> \in :call C_CodeFor("down")
onoremap <buffer> <silent> \in :call C_CodeFor("down")
vnoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
onoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )
vnoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main", "v")
onoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
vnoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static", "v")
onoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
vnoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function", "v")
onoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
noremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
noremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
noremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
noremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
noremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
vnoremap <buffer> <silent> \pi0 :call C_PPIf0("v")
onoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
vnoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif", "v")
vnoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif", "v")
vnoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif", "v")
vnoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif", "v")
onoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
onoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
onoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
onoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
noremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
noremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
noremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
noremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
noremap <buffer> \+pc :IncludeCppCLibrary 
noremap <buffer> \+ps :IncludeCppLibrary 
noremap <buffer> \pc :IncludeC99Library 
noremap <buffer> \ps :IncludeStdLibrary 
vnoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
vnoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block", "v")
onoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
noremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
vnoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch", "v")
onoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
vnoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block", "v")
onoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
noremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
vnoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block", "v")
onoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
vnoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else", "v")
onoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
vnoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else", "v")
onoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
vnoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block", "v")
onoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
noremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
vnoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block", "v")
onoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
noremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
vnoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while", "v")
onoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
noremap <buffer> \csc :SpecialComment 
noremap <buffer> \ckc :KeywordComment 
noremap <buffer> \chs :HFileSection 
noremap <buffer> \ccs :CFileSection 
vnoremap <buffer> <silent> \cx :call C_CommentToggle( )
onoremap <buffer> <silent> \cx :call C_CommentToggle( )
vnoremap <buffer> <silent> \ct s:call C_InsertDateAndTime('dt')a
onoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call C_InsertDateAndTime('d')a
onoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')
noremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
noremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
noremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
noremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
vnoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
onoremap <buffer> <silent> \co :call C_CommentToCode():nohlsearch
vnoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
onoremap <buffer> <silent> \cc :call C_CodeToCommentCpp():nohlsearchj
vnoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
onoremap <buffer> <silent> \c* :call C_CodeToCommentC():nohlsearchj
noremap <buffer> <silent> \cs :call C_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
nnoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()
vnoremap <buffer> <silent> \cl :call C_EndOfLineComment()
onoremap <buffer> <silent> \cl :call C_EndOfLineComment()
vnoremap <buffer> { S{}Pk=iB
map <buffer> <silent> <S-F2> :A
map <buffer> <silent> <S-F9> :call C_Arguments()
map <buffer> <silent> <C-F9> :call C_Run()
map <buffer> <silent> <F9> :call C_Link():call C_HlMessage()
map <buffer> <silent> <M-F9> :call C_Compile():call C_HlMessage()
inoremap <buffer>  =CodeComplete()=SwitchRegion()
imap <buffer> <silent> <NL> =C_JumpCtrlJ()
inoremap <buffer> <silent>  =EchoFuncN()
inoremap <buffer> <silent>  =EchoFuncP()
inoremap <buffer> <silent> ( (=EchoFunc()
inoremap <buffer> <silent> ) =EchoFuncClear())
inoremap <buffer> /* /*/kA 
inoremap <buffer> /* /*  */<Left><Left><Left>
imap <buffer> <silent> \hm :call C_Help("m")
imap <buffer> <silent> \hp :call C_HelpCsupport()
imap <buffer> <silent> \rka :call C_CodeCheckArguments()
imap <buffer> <silent> \rk :call C_CodeCheck():call C_HlMessage()
imap <buffer> <silent> \ro :call C_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rx :call C_XtermSize()
imap <buffer> <silent> \rs :call C_Settings()
imap <buffer> <silent> \rh :call C_Hardcopy()
imap <buffer> <silent> \rd :call C_Indent()
imap <buffer> <silent> \rpa :call C_SplintArguments()
imap <buffer> <silent> \rp :call C_SplintCheck():call C_HlMessage()
imap <buffer> <silent> \rma :call C_MakeArguments()
imap <buffer> <silent> \rme :call C_MakeExeToRun()
imap <buffer> <silent> \rmc :call C_MakeClean()
imap <buffer> <silent> \rm :call C_Make()
imap <buffer> <silent> \ra :call C_Arguments()
imap <buffer> <silent> \rr :call C_Run()
imap <buffer> <silent> \rl :call C_Link():call C_HlMessage()
imap <buffer> <silent> \rc :call C_Compile():call C_HlMessage()
inoremap <buffer> <silent> \+c. :call C_InsertTemplate("cpp.catch-points")
inoremap <buffer> <silent> \+ca :call C_InsertTemplate("cpp.catch")
inoremap <buffer> <silent> \+tr :call C_InsertTemplate("cpp.try-catch")
inoremap <buffer> <silent> \+ec :call C_InsertTemplate("cpp.error-class")
inoremap <buffer> <silent> \+tf :call C_InsertTemplate("cpp.template-function")
inoremap <buffer> <silent> \+tai :call C_InsertTemplate("cpp.template-accessor-implementation")
inoremap <buffer> <silent> \+tmi :call C_InsertTemplate("cpp.template-method-implementation")
inoremap <buffer> <silent> \+tcni :call C_InsertTemplate("cpp.template-class-using-new-implementation")
inoremap <buffer> <silent> \+tci :call C_InsertTemplate("cpp.template-class-implementation")
inoremap <buffer> <silent> \+tcn :call C_InsertTemplate("cpp.template-class-using-new-definition")
inoremap <buffer> <silent> \+tc :call C_InsertTemplate("cpp.template-class-definition")
inoremap <buffer> <silent> \+ai :call C_InsertTemplate("cpp.accessor-implementation")
inoremap <buffer> <silent> \+mi :call C_InsertTemplate("cpp.method-implementation")
inoremap <buffer> <silent> \+cni :call C_InsertTemplate("cpp.class-using-new-implementation")
inoremap <buffer> <silent> \+ci :call C_InsertTemplate("cpp.class-implementation")
inoremap <buffer> <silent> \+cn :call C_InsertTemplate("cpp.class-using-new-definition")
inoremap <buffer> <silent> \+c :call C_InsertTemplate("cpp.class-definition")
inoremap <buffer> <silent> \+co :call C_InsertTemplate("cpp.cout")
inoremap <buffer> <silent> \+" :call C_InsertTemplate("cpp.cout-operator")
inoremap <buffer> \nts :CStyle 
inoremap <buffer> <silent> \ntr :call C_RereadTemplates()
inoremap <buffer> <silent> \ntl :call C_BrowseTemplateFiles("Local")
inoremap <buffer> <silent> \ns :call C_ProtoShow()
inoremap <buffer> <silent> \nc :call C_ProtoClear()
inoremap <buffer> <silent> \ni :call C_ProtoInsert()
inoremap <buffer> <silent> \nm :call C_ProtoPick("method")
inoremap <buffer> <silent> \nf :call C_ProtoPick("function")
inoremap <buffer> <silent> \np :call C_ProtoPick("function")
inoremap <buffer> <silent> \ne :call C_CodeSnippet("e")
inoremap <buffer> <silent> \nw :call C_CodeSnippet("w")
inoremap <buffer> <silent> \nr :call C_CodeSnippet("r")
inoremap <buffer> <silent> \io :call C_InsertTemplate("idioms.open-output-file")
inoremap <buffer> <silent> \ii :call C_InsertTemplate("idioms.open-input-file")
inoremap <buffer> <silent> \ias :call C_InsertTemplate("idioms.assert")
inoremap <buffer> <silent> \isi :call C_InsertTemplate("idioms.sizeof")
inoremap <buffer> <silent> \ima :call C_InsertTemplate("idioms.malloc")
inoremap <buffer> <silent> \ica :call C_InsertTemplate("idioms.calloc")
inoremap <buffer> <silent> \isc :call C_InsertTemplate("idioms.scanf")
inoremap <buffer> <silent> \ip :call C_InsertTemplate("idioms.printf")
inoremap <buffer> <silent> \iu :call C_InsertTemplate("idioms.union")
inoremap <buffer> <silent> \is :call C_InsertTemplate("idioms.struct")
inoremap <buffer> <silent> \ie :call C_InsertTemplate("idioms.enum")
inoremap <buffer> <silent> \in :call C_CodeFor("down")i
inoremap <buffer> <silent> \i0 :call C_CodeFor("up"  )i
inoremap <buffer> <silent> \im :call C_InsertTemplate("idioms.main")
inoremap <buffer> <silent> \isf :call C_InsertTemplate("idioms.function-static")
inoremap <buffer> <silent> \if :call C_InsertTemplate("idioms.function")
inoremap <buffer> <silent> \igv :call C_InsertTemplate("idioms.GetValue")
inoremap <buffer> <silent> \pp :call C_InsertTemplate("preprocessor.pragma")
inoremap <buffer> <silent> \pl :call C_InsertTemplate("preprocessor.line")
inoremap <buffer> <silent> \pe :call C_InsertTemplate("preprocessor.error")
inoremap <buffer> <silent> \pr0 :call C_PPIf0Remove()
inoremap <buffer> <silent> \pi0 :call C_PPIf0("a")2ji
inoremap <buffer> <silent> \pind :call C_InsertTemplate("preprocessor.ifndef-def-endif")
inoremap <buffer> <silent> \pin :call C_InsertTemplate("preprocessor.ifndef-else-endif")
inoremap <buffer> <silent> \pid :call C_InsertTemplate("preprocessor.ifdef-else-endif")
inoremap <buffer> <silent> \pie :call C_InsertTemplate("preprocessor.if-else-endif")
inoremap <buffer> <silent> \pu :call C_InsertTemplate("preprocessor.undefine")
inoremap <buffer> <silent> \pd :call C_InsertTemplate("preprocessor.define")
inoremap <buffer> <silent> \p" :call C_InsertTemplate("preprocessor.include-local")
inoremap <buffer> <silent> \p< :call C_InsertTemplate("preprocessor.include-global")
inoremap <buffer> \+pc :IncludeCppC9Library 
inoremap <buffer> \+ps :IncludeCppLibrary 
inoremap <buffer> \pc :IncludeC99Library 
inoremap <buffer> \ps :IncludeStdLibrary 
inoremap <buffer> <silent> \sb :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \s{ :call C_InsertTemplate("statements.block")
inoremap <buffer> <silent> \sc :call C_InsertTemplate("statements.case")
inoremap <buffer> <silent> \ss :call C_InsertTemplate("statements.switch")
inoremap <buffer> <silent> \swh :call C_InsertTemplate("statements.while-block")
inoremap <buffer> <silent> \sw :call C_InsertTemplate("statements.while")
inoremap <buffer> <silent> \se :call C_InsertTemplate("statements.else-block")
inoremap <buffer> <silent> \sife :call C_InsertTemplate("statements.if-block-else")
inoremap <buffer> <silent> \sie :call C_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \sif :call C_InsertTemplate("statements.if-block")
inoremap <buffer> <silent> \si :call C_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call C_InsertTemplate("statements.for-block")
inoremap <buffer> <silent> \sf :call C_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sd :call C_InsertTemplate("statements.do-while")
inoremap <buffer> \csc :SpecialComment 
inoremap <buffer> \ckc :KeywordComment 
inoremap <buffer> \chs :HFileSection 
inoremap <buffer> \ccs :CFileSection 
inoremap <buffer> <silent> \cx :call C_CommentToggle( )
inoremap <buffer> <silent> \ct :call C_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call C_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cfdh :call C_InsertTemplate("comment.file-description-header")
inoremap <buffer> <silent> \cfdi :call C_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \ccl :call C_InsertTemplate("comment.class")
inoremap <buffer> <silent> \cme :call C_InsertTemplate("comment.method")
inoremap <buffer> <silent> \cfu :call C_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call C_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cj :call C_AdjustLineEndComm()a
inoremap <buffer> <silent> \cl :call C_EndOfLineComment()
inoremap <buffer> { {}O
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/c-support/wordlists/c-c++-keywords.list,~/.vim/c-support/wordlists/k+r.list,~/.vim/c-support/wordlists/stl_index.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 5097 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5097
normal! 0
tabedit ~/Public/Dropbox/bin/other/debug_mysql.sh
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
imap <buffer> <silent> <F9> :call BASH_Debugger():redraw!
nmap <buffer> <silent> <NL> i=BASH_JumpCtrlJ()
nnoremap <buffer> "" ciW""P
nnoremap <buffer> '' ciW''P
nnoremap <buffer> <silent> \cl :call BASH_LineEndComment()
nnoremap <buffer> <silent> \cj :call BASH_AdjustLineEndComm("a")
nnoremap <buffer> <silent> \cc :call BASH_CommentToggle()j
nnoremap <buffer> <silent> \cd :call BASH_InsertDateAndTime('d')
nnoremap <buffer> <silent> \ct :call BASH_InsertDateAndTime('dt')
nnoremap <buffer> <silent> \sf :call BASH_InsertTemplate("statements.for-in")
nnoremap <buffer> <silent> \sfo :call BASH_InsertTemplate("statements.for")
nnoremap <buffer> <silent> \si :call BASH_InsertTemplate("statements.if")
nnoremap <buffer> <silent> \sie :call BASH_InsertTemplate("statements.if-else")
nnoremap <buffer> <silent> \ss :call BASH_InsertTemplate("statements.select")
nnoremap <buffer> <silent> \st :call BASH_InsertTemplate("statements.until")
nnoremap <buffer> <silent> \sw :call BASH_InsertTemplate("statements.while")
nnoremap <buffer> <silent> \sfu :call BASH_InsertTemplate("statements.function")
nnoremap <buffer> <silent> \sp :call BASH_InsertTemplate("statements.printf")
nnoremap <buffer> <silent> \se :call BASH_InsertTemplate("statements.echo")
nnoremap <buffer> <silent> \sa a${[]}<Left><Left><Left>
nnoremap <buffer> <silent> \saa a${[@]}<Left><Left><Left><Left>
nnoremap <buffer> <silent> \sa1 a${[*]}<Left><Left><Left><Left>
nnoremap <buffer> <silent> \ssa a${[@]::}<Left><Left><Left><Left><Left><Left>
nnoremap <buffer> <silent> \san a${#[@]}<Left><Left><Left><Left>
nnoremap <buffer> <silent> \sai a${![*]}<Left><Left><Left><Left>
nnoremap <buffer> <silent> \nw :call BASH_CodeSnippets("w")
nmap <buffer> <silent> \rr :call BASH_Run("n")
nmap <buffer> <silent> \rh :call BASH_Hardcopy("n")
map <buffer> <silent> \ro :call BASH_Toggle_Gvim_Xterm()
map <buffer> <silent> \rs :call BASH_Settings()
vmap <buffer> <silent> \rh :call BASH_Hardcopy("v")
omap <buffer> <silent> \rh :call BASH_Hardcopy("n")
vmap <buffer> <silent> \rr :call BASH_Run("v")
map <buffer> <silent> \rd :call BASH_Debugger():redraw!
map <buffer> <silent> \re :call BASH_MakeScriptExecutable()
map <buffer> <silent> \rco :call BASH_SyntaxCheckOptionsLocal()
map <buffer> <silent> \rc :call BASH_SyntaxCheck()
map <buffer> <silent> \ra :call BASH_CmdLineArguments()
omap <buffer> <silent> \rr :call BASH_Run("n")
nnoremap <buffer> <silent> \t2 a[  -  ]<Left><Left><Left><Left><Left>
nnoremap <buffer> <silent> \t a[ -  ]<Left><Left><Left>
noremap <buffer> \nts :BashStyle 
noremap <buffer> <silent> \ntr :call BASH_RereadTemplates()
noremap <buffer> <silent> \ntg :call BASH_EditTemplates("global")
noremap <buffer> <silent> \ntl :call BASH_EditTemplates("local")
noremap <buffer> <silent> \ne :call BASH_CodeSnippets("e")
vnoremap <buffer> <silent> \nw :call BASH_CodeSnippets("wv")
onoremap <buffer> <silent> \nw :call BASH_CodeSnippets("w")
noremap <buffer> <silent> \nr :call BASH_CodeSnippets("r")
nnoremap <buffer> <silent> \px a[:xdigit:]
nnoremap <buffer> <silent> \pw a[:word:]
nnoremap <buffer> <silent> \pu a[:upper:]
nnoremap <buffer> <silent> \ps a[:space:]
nnoremap <buffer> <silent> \ppu a[:punct:]
nnoremap <buffer> <silent> \ppr a[:print:]
nnoremap <buffer> <silent> \pl a[:lower:]
nnoremap <buffer> <silent> \pg a[:graph:]
nnoremap <buffer> <silent> \pd a[:digit:]
nnoremap <buffer> <silent> \pc a[:cntrl:]
nnoremap <buffer> <silent> \pb a[:blank:]
nnoremap <buffer> <silent> \pas a[:ascii:]
nnoremap <buffer> <silent> \pal a[:alpha:]
nnoremap <buffer> <silent> \pan a[:alnum:]
nnoremap <buffer> <silent> \xm a[[  =~  ]]<Left><Left><Left><Left><Left><Left><Left>
vnoremap <buffer> <silent> \sai s${![*]}<Left><Left><Left>P
onoremap <buffer> <silent> \sai a${![*]}<Left><Left><Left><Left>
vnoremap <buffer> <silent> \san s${#[@]}<Left><Left><Left>P
onoremap <buffer> <silent> \san a${#[@]}<Left><Left><Left><Left>
vnoremap <buffer> <silent> \ssa s${[@]::}<Left><Left><Left><Left><Left>P
onoremap <buffer> <silent> \ssa a${[@]::}<Left><Left><Left><Left><Left><Left>
vnoremap <buffer> <silent> \sa1 s${[*]}<Left><Left><Left>P
onoremap <buffer> <silent> \sa1 a${[*]}<Left><Left><Left><Left>
vnoremap <buffer> <silent> \saa s${[@]}<Left><Left><Left>P
onoremap <buffer> <silent> \saa a${[@]}<Left><Left><Left><Left>
vnoremap <buffer> <silent> \sa s${[]}<Left><Left>P
onoremap <buffer> <silent> \sa a${[]}<Left><Left><Left>
vnoremap <buffer> <silent> \se :call BASH_InsertTemplate("statements.echo", "v")
onoremap <buffer> <silent> \se :call BASH_InsertTemplate("statements.echo")
vnoremap <buffer> <silent> \sp :call BASH_InsertTemplate("statements.printf", "v")
onoremap <buffer> <silent> \sp :call BASH_InsertTemplate("statements.printf")
vnoremap <buffer> <silent> \sfu :call BASH_InsertTemplate("statements.function", "v")
onoremap <buffer> <silent> \sfu :call BASH_InsertTemplate("statements.function")
vnoremap <buffer> <silent> \sw :call BASH_InsertTemplate("statements.while", "v")
vnoremap <buffer> <silent> \st :call BASH_InsertTemplate("statements.until", "v")
vnoremap <buffer> <silent> \ss :call BASH_InsertTemplate("statements.select", "v")
vnoremap <buffer> <silent> \sie :call BASH_InsertTemplate("statements.if-else", "v")
vnoremap <buffer> <silent> \si :call BASH_InsertTemplate("statements.if", "v")
vnoremap <buffer> <silent> \sfo :call BASH_InsertTemplate("statements.for", "v")
vnoremap <buffer> <silent> \sf :call BASH_InsertTemplate("statements.for-in", "v")
onoremap <buffer> <silent> \sw :call BASH_InsertTemplate("statements.while")
onoremap <buffer> <silent> \st :call BASH_InsertTemplate("statements.until")
onoremap <buffer> <silent> \ss :call BASH_InsertTemplate("statements.select")
onoremap <buffer> <silent> \sie :call BASH_InsertTemplate("statements.if-else")
onoremap <buffer> <silent> \si :call BASH_InsertTemplate("statements.if")
onoremap <buffer> <silent> \sfo :call BASH_InsertTemplate("statements.for")
onoremap <buffer> <silent> \sf :call BASH_InsertTemplate("statements.for-in")
noremap <buffer> <silent> \sei :call BASH_InsertTemplate("statements.elif")
noremap <buffer> <silent> \sc :call BASH_InsertTemplate("statements.case")
noremap <buffer> <silent> \cv :call BASH_CommentVimModeline()
noremap <buffer> <silent> \cr 0:s/^\s*echo\s\+\"// | s/\s*\"\s*$// | :normal ==j'
noremap <buffer> <silent> \ce ^iecho "<End>"j'
noremap <buffer> <silent> \ckn $:call BASH_InsertTemplate("comment.keyword-keyword")   
noremap <buffer> <silent> \cko $:call BASH_InsertTemplate("comment.keyword-workaround")
noremap <buffer> <silent> \ckw $:call BASH_InsertTemplate("comment.keyword-warning")   
noremap <buffer> <silent> \ckr $:call BASH_InsertTemplate("comment.keyword-tricky")    
noremap <buffer> <silent> \ckt $:call BASH_InsertTemplate("comment.keyword-todo")      
noremap <buffer> <silent> \ckb $:call BASH_InsertTemplate("comment.keyword-bug")       
vnoremap <buffer> <silent> \ct s:call BASH_InsertDateAndTime('dt')
onoremap <buffer> <silent> \ct :call BASH_InsertDateAndTime('dt')
vnoremap <buffer> <silent> \cd s:call BASH_InsertDateAndTime('d')
onoremap <buffer> <silent> \cd :call BASH_InsertDateAndTime('d')
vnoremap <buffer> <silent> \cc :call BASH_CommentToggleRange()j
onoremap <buffer> <silent> \cc :call BASH_CommentToggle()j
noremap <buffer> <silent> \ch :call BASH_InsertTemplate("comment.file-description")
noremap <buffer> <silent> \cfu :call BASH_InsertTemplate("comment.function")
noremap <buffer> <silent> \cfr :call BASH_InsertTemplate("comment.frame")
noremap <buffer> <silent> \cs :call BASH_GetLineEndCommCol()
vnoremap <buffer> <silent> \cj :call BASH_AdjustLineEndComm("v")
onoremap <buffer> <silent> \cj :call BASH_AdjustLineEndComm("a")
vnoremap <buffer> <silent> \cl :call BASH_MultiLineEndComments()a
onoremap <buffer> <silent> \cl :call BASH_LineEndComment()
noremap <buffer> <silent> \hbs :call BASH_HelpBASHsupport()
noremap <buffer> <silent> \hm :call BASH_help('m')
noremap <buffer> <silent> \hh :call BASH_help('h')
noremap <buffer> <silent> \hb :call BASH_help('b')
map <buffer> <silent> <F9> :call BASH_Debugger():redraw!
inoremap <buffer>  =CodeComplete()=SwitchRegion()
imap <buffer> <silent> <NL> =BASH_JumpCtrlJ()
inoremap <buffer> <silent>  =EchoFuncN()
inoremap <buffer> <silent>  =EchoFuncP()
inoremap <buffer> <silent> ( (=EchoFunc()
inoremap <buffer> <silent> ) =EchoFuncClear())
imap <buffer> <silent> \ro :call BASH_Toggle_Gvim_Xterm()
imap <buffer> <silent> \rs :call BASH_Settings()
imap <buffer> <silent> \rh :call BASH_Hardcopy("n")
imap <buffer> <silent> \rd :call BASH_Debugger():redraw!
imap <buffer> <silent> \re :call BASH_MakeScriptExecutable()
imap <buffer> <silent> \rco :call BASH_SyntaxCheckOptionsLocal()
imap <buffer> <silent> \rc :call BASH_SyntaxCheck()
imap <buffer> <silent> \ra :call BASH_CmdLineArguments()
imap <buffer> <silent> \rr :call BASH_Run("n")
inoremap <buffer> <silent> \t2 [  -  ]<Left><Left><Left><Left><Left>
inoremap <buffer> <silent> \t [ -  ]<Left><Left><Left>
inoremap <buffer> <silent> \px [:xdigit:]
inoremap <buffer> <silent> \pw [:word:]
inoremap <buffer> <silent> \pu [:upper:]
inoremap <buffer> <silent> \ps [:space:]
inoremap <buffer> <silent> \ppu [:punct:]
inoremap <buffer> <silent> \ppr [:print:]
inoremap <buffer> <silent> \pl [:lower:]
inoremap <buffer> <silent> \pg [:graph:]
inoremap <buffer> <silent> \pd [:digit:]
inoremap <buffer> <silent> \pc [:cntrl:]
inoremap <buffer> <silent> \pb [:blank:]
inoremap <buffer> <silent> \pas [:ascii:]
inoremap <buffer> <silent> \pal [:alpha:]
inoremap <buffer> <silent> \pan [:alnum:]
inoremap <buffer> <silent> \xm [[  =~  ]]<Left><Left><Left><Left><Left><Left><Left>
inoremap <buffer> <silent> \sai ${![*]}<Left><Left><Left><Left>
inoremap <buffer> <silent> \san ${#[@]}<Left><Left><Left><Left>
inoremap <buffer> <silent> \ssa ${[@]::}<Left><Left><Left><Left><Left><Left>
inoremap <buffer> <silent> \sa1 ${[*]}<Left><Left><Left><Left>
inoremap <buffer> <silent> \saa ${[@]}<Left><Left><Left><Left>
inoremap <buffer> <silent> \sa ${[]}<Left><Left><Left>
inoremap <buffer> <silent> \se :call BASH_InsertTemplate("statements.echo")
inoremap <buffer> <silent> \sp :call BASH_InsertTemplate("statements.printf")
inoremap <buffer> <silent> \sfu :call BASH_InsertTemplate("statements.function")
inoremap <buffer> <silent> \sw :call BASH_InsertTemplate("statements.while")
inoremap <buffer> <silent> \st :call BASH_InsertTemplate("statements.until")
inoremap <buffer> <silent> \ss :call BASH_InsertTemplate("statements.select")
inoremap <buffer> <silent> \sie :call BASH_InsertTemplate("statements.if-else")
inoremap <buffer> <silent> \si :call BASH_InsertTemplate("statements.if")
inoremap <buffer> <silent> \sfo :call BASH_InsertTemplate("statements.for")
inoremap <buffer> <silent> \sf :call BASH_InsertTemplate("statements.for-in")
inoremap <buffer> <silent> \sei :call BASH_InsertTemplate("statements.elif")
inoremap <buffer> <silent> \sc :call BASH_InsertTemplate("statements.case")
inoremap <buffer> <silent> \cv :call BASH_CommentVimModeline()
inoremap <buffer> <silent> \cr 0:s/^\s*echo\s\+\"// | s/\s*\"\s*$// | :normal ==j'
inoremap <buffer> <silent> \ce ^iecho "<End>"j'
inoremap <buffer> <silent> \ckn $:call BASH_InsertTemplate("comment.keyword-keyword")   
inoremap <buffer> <silent> \cko $:call BASH_InsertTemplate("comment.keyword-workaround")
inoremap <buffer> <silent> \ckw $:call BASH_InsertTemplate("comment.keyword-warning")   
inoremap <buffer> <silent> \ckr $:call BASH_InsertTemplate("comment.keyword-tricky")    
inoremap <buffer> <silent> \ckt $:call BASH_InsertTemplate("comment.keyword-todo")      
inoremap <buffer> <silent> \ckb $:call BASH_InsertTemplate("comment.keyword-bug")       
inoremap <buffer> <silent> \ct :call BASH_InsertDateAndTime('dt')a
inoremap <buffer> <silent> \cd :call BASH_InsertDateAndTime('d')a
inoremap <buffer> <silent> \cc :call BASH_CommentToggle()j
inoremap <buffer> <silent> \ch :call BASH_InsertTemplate("comment.file-description")
inoremap <buffer> <silent> \cfu :call BASH_InsertTemplate("comment.function")
inoremap <buffer> <silent> \cfr :call BASH_InsertTemplate("comment.frame")
inoremap <buffer> <silent> \cs :call BASH_GetLineEndCommCol()
inoremap <buffer> <silent> \cj :call BASH_AdjustLineEndComm("a")
inoremap <buffer> <silent> \cl :call BASH_LineEndComment()
inoremap <buffer> <silent> \hbs :call BASH_HelpBASHsupport()
inoremap <buffer> <silent> \hm :call BASH_help('m')
inoremap <buffer> <silent> \hh :call BASH_help('h')
inoremap <buffer> <silent> \hb :call BASH_help('b')
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=#%s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=~/.vim/bash-support/wordlists/bash.list
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal expandtab
if &filetype != 'sh'
setlocal filetype=sh
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetShIndent()
setlocal indentkeys=0{,0},!^F,o,O,e,0=then,0=do,0=else,0=elif,0=fi,0=esac,0=done,),0=;;,0=;&,0=fin,0=fil,0=fip,0=fir,0=fix
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=omni#cpp#complete#Main
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'sh'
setlocal syntax=sh
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
tabnext 2
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
