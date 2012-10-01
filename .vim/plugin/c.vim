"#################################################################################
"
"       Filename:  c.vim
"
"    Description:  C/C++-IDE. Write programs by inserting complete statements,
"                  comments, idioms, code snippets, templates and comments.
"                  Compile, link and run one-file-programs without a makefile.
"                  See also help file csupport.txt .
"
"   GVIM Version:  7.0+
"
"  Configuration:  There are some personal details which should be configured
"                   (see the files README.csupport and csupport.txt).
"
"         Author:  Dr.-Ing. Fritz Mehner, FH Südwestfalen, 58644 Iserlohn, Germany
"          Email:  mehner@fh-swf.de
"
"        Version:  see variable  g:C_Version  below
"        Created:  04.11.2000
"        License:  Copyright (c) 2000-2011, Fritz Mehner
"                  This program is free software; you can redistribute it and/or
"                  modify it under the terms of the GNU General Public License as
"                  published by the Free Software Foundation, version 2 of the
"                  License.
"                  This program is distributed in the hope that it will be
"                  useful, but WITHOUT ANY WARRANTY; without even the implied
"                  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR
"                  PURPOSE.
"                  See the GNU General Public License version 2 for more details.
"       Revision:  $Id: c.vim,v 1.146 2011/09/11 17:16:24 mehner Exp $
"
"------------------------------------------------------------------------------
"
if v:version < 700
  echohl WarningMsg | echo 'The plugin c-support.vim needs Vim version >= 7 .'| echohl None
  finish
endif
"
" Prevent duplicate loading:
"
if exists("g:C_Version") || &cp
 finish
endif
let g:C_Version= "5.15"  							" version number of this script; do not change
"
"#################################################################################
"
"  Global variables (with default values) which can be overridden.
"
" Platform specific items:  {{{1
" - root directory
" - characters that must be escaped for filenames
"
let s:MSWIN = has("win16") || has("win32")   || has("win64")    || has("win95")
let s:UNIX	= has("unix")  || has("macunix") || has("win32unix")
"
let s:installation				= 'local'
let s:vimfiles						= $VIM
let	s:sourced_script_file	= expand("<sfile>")
let s:C_GlobalTemplateFile= ''
let s:C_GlobalTemplateDir	= ''

if	s:MSWIN
  " ==========  MS Windows  ======================================================
	"
	if match( s:sourced_script_file, escape( s:vimfiles, ' \' ) ) == 0
		" system wide installation
		let s:installation					= 'system'
		let s:plugin_dir						= $VIM.'/vimfiles/'
		let s:C_GlobalTemplateDir		= s:plugin_dir.'c-support/templates'
		let s:C_GlobalTemplateFile  = s:C_GlobalTemplateDir.'/Templates'
	else
		" user installation assumed
		let s:plugin_dir  					= $HOME.'/vimfiles/'
	endif
	"
	let s:C_LocalTemplateFile     = $HOME.'/vimfiles/c-support/templates/Templates'
	let s:C_LocalTemplateDir      = fnamemodify( s:C_LocalTemplateFile, ":p:h" ).'/'
	let s:C_CodeSnippets  				= $HOME.'/vimfiles/c-support/codesnippets/'
	let s:C_IndentErrorLog				= $HOME.'/_indent.errorlog'
	"
  let s:escfilename 	= ''
	let s:C_Display     = ''
	"
else
  " ==========  Linux/Unix  ======================================================
	"
	if match( expand("<sfile>"), expand("$HOME") ) == 0
		" user installation assumed
		let s:plugin_dir  	= $HOME.'/.vim/'
	else
		" system wide installation
		let s:installation					= 'system'
		let s:plugin_dir						= $VIM.'/vimfiles/'
		let s:C_GlobalTemplateDir		= s:plugin_dir.'c-support/templates'
		let s:C_GlobalTemplateFile  = s:C_GlobalTemplateDir.'/Templates'
	endif
	"
	let s:C_LocalTemplateFile     = $HOME.'/.vim/c-support/templates/Templates'
	let s:C_LocalTemplateDir      = fnamemodify( s:C_LocalTemplateFile, ":p:h" ).'/'
	let s:C_CodeSnippets  				= $HOME.'/.vim/c-support/codesnippets/'
	let s:C_IndentErrorLog				= $HOME.'/.indent.errorlog'
	"
  let s:escfilename 	= ' \%#[]'
	let s:C_Display			= $DISPLAY
	"
endif
"
"  Modul global variables (with default values) which can be overridden. {{{1
"
if	s:MSWIN
	let s:C_CCompiler           = 'gcc.exe'  " the C   compiler
	let s:C_CplusCompiler       = 'g++.exe'  " the C++ compiler
	let s:C_ExeExtension        = '.exe'     " file extension for executables (leading point required)
	let s:C_ObjExtension        = '.obj'     " file extension for objects (leading point required)
	let s:C_Man                 = 'man.exe'  " the manual program
else
	let s:C_CCompiler           = 'gcc'      " the C   compiler
	let s:C_CplusCompiler       = 'g++'      " the C++ compiler
	let s:C_ExeExtension        = ''         " file extension for executables (leading point required)
	let s:C_ObjExtension        = '.o'       " file extension for objects (leading point required)
	let s:C_Man                 = 'man'      " the manual program
endif
let s:C_VimCompilerName				= 'gcc'      " the compiler name used by :compiler
"
let s:C_CExtension     				= 'c'                    " C file extension; everything else is C++
let s:C_CFlags         				= '-Wall -g -O0 -c'      " compiler flags: compile, don't optimize
let s:C_CodeCheckExeName      = 'check'
let s:C_CodeCheckOptions      = '-K13'
let s:C_LFlags         				= '-Wall -g -O0'         " compiler flags: link   , don't optimize
let s:C_Libs           				= '-lm'                  " libraries to use
let s:C_LineEndCommColDefault = 49
let s:C_LoadMenus      				= 'yes'
let s:C_MenuHeader     				= 'yes'
let s:C_OutputGvim            = 'vim'
let s:C_Printheader           = "%<%f%h%m%<  %=%{strftime('%x %X')}     Page %N"
let s:C_Root  	       				= '&C\/C\+\+.'           " the name of the root menu of this plugin
let s:C_TypeOfH               = 'cpp'
let s:C_Wrapper               = s:plugin_dir.'c-support/scripts/wrapper.sh'
let s:C_XtermDefaults         = '-fa courier -fs 12 -geometry 80x24'
let s:C_GuiSnippetBrowser     = 'gui'										" gui / commandline
let s:C_GuiTemplateBrowser    = 'gui'										" gui / explorer / commandline
"
let s:C_TemplateOverwrittenMsg= 'yes'
let s:C_Ctrl_j								= 'on'
"
let s:C_FormatDate						= '%x'
let s:C_FormatTime						= '%X'
let s:C_FormatYear						= '%Y'
let s:C_SourceCodeExtensions  = 'c cc cp cxx cpp CPP c++ C i ii'
"
"------------------------------------------------------------------------------
"
"  Look for global variables (if any), to override the defaults.
"
function! C_CheckGlobal ( name )
  if exists('g:'.a:name)
    exe 'let s:'.a:name.'  = g:'.a:name
  endif
endfunction    " ----------  end of function C_CheckGlobal ----------
"
call C_CheckGlobal('C_CCompiler              ')
call C_CheckGlobal('C_CExtension             ')
call C_CheckGlobal('C_CFlags                 ')
call C_CheckGlobal('C_CodeCheckExeName       ')
call C_CheckGlobal('C_CodeCheckOptions       ')
call C_CheckGlobal('C_CodeSnippets           ')
call C_CheckGlobal('C_CplusCompiler          ')
call C_CheckGlobal('C_Ctrl_j                 ')
call C_CheckGlobal('C_ExeExtension           ')
call C_CheckGlobal('C_FormatDate             ')
call C_CheckGlobal('C_FormatTime             ')
call C_CheckGlobal('C_FormatYear             ')
call C_CheckGlobal('C_GlobalTemplateFile     ')
call C_CheckGlobal('C_GuiSnippetBrowser      ')
call C_CheckGlobal('C_GuiTemplateBrowser     ')
call C_CheckGlobal('C_IndentErrorLog         ')
call C_CheckGlobal('C_LFlags                 ')
call C_CheckGlobal('C_Libs                   ')
call C_CheckGlobal('C_LineEndCommColDefault  ')
call C_CheckGlobal('C_LoadMenus              ')
call C_CheckGlobal('C_LocalTemplateFile      ')
call C_CheckGlobal('C_Man                    ')
call C_CheckGlobal('C_MenuHeader             ')
call C_CheckGlobal('C_ObjExtension           ')
call C_CheckGlobal('C_OutputGvim             ')
call C_CheckGlobal('C_Printheader            ')
call C_CheckGlobal('C_SourceCodeExtensions   ')
call C_CheckGlobal('C_TemplateOverwrittenMsg ')
call C_CheckGlobal('C_TypeOfH                ')
call C_CheckGlobal('C_VimCompilerName        ')
call C_CheckGlobal('C_XtermDefaults          ')

if exists('g:C_GlobalTemplateFile') && g:C_GlobalTemplateFile != ''
	let s:C_GlobalTemplateDir	= fnamemodify( s:C_GlobalTemplateFile, ":h" )
endif
"
"----- some variables for internal use only -----------------------------------
"
"
" set default geometry if not specified
"
if match( s:C_XtermDefaults, "-geometry\\s\\+\\d\\+x\\d\\+" ) < 0
	let s:C_XtermDefaults	= s:C_XtermDefaults." -geometry 80x24"
endif
"
" escape the printheader
"
let s:C_Printheader  = escape( s:C_Printheader, ' %' )
"
let s:C_HlMessage    = ""
"
" characters that must be escaped for filenames
"
let s:C_If0_Counter   = 0
let s:C_If0_Txt		 		= "If0Label_"
"
let s:C_SplintIsExecutable	= 0
if executable( "splint" )
	let s:C_SplintIsExecutable	= 1
endif
"
let s:C_CodeCheckIsExecutable	= 0
if executable( s:C_CodeCheckExeName )
	let s:C_CodeCheckIsExecutable	= 1
endif
"
"------------------------------------------------------------------------------
"  Control variables (not user configurable)
"------------------------------------------------------------------------------
let s:Attribute                = { 'below':'', 'above':'', 'start':'', 'append':'', 'insert':'' }
let s:C_Attribute              = {}
let s:C_ExpansionLimit         = 10
let s:C_FileVisited            = []
"
let s:C_MacroNameRegex         = '\([a-zA-Z][a-zA-Z0-9_]*\)'
let s:C_MacroLineRegex				 = '^\s*|'.s:C_MacroNameRegex.'|\s*=\s*\(.*\)'
let s:C_MacroCommentRegex			 = '^\$'
let s:C_ExpansionRegex				 = '|?'.s:C_MacroNameRegex.'\(:\a\)\?|'
let s:C_NonExpansionRegex			 = '|'.s:C_MacroNameRegex.'\(:\a\)\?|'
"
let s:C_TemplateNameDelimiter  = '-+_,\. '
let s:C_TemplateLineRegex			 = '^==\s*\([a-zA-Z][0-9a-zA-Z'.s:C_TemplateNameDelimiter
let s:C_TemplateLineRegex			.= ']\+\)\s*==\s*\([a-z]\+\s*==\)\?'
let s:C_TemplateIf						 = '^==\s*IF\s\+|STYLE|\s\+IS\s\+'.s:C_MacroNameRegex.'\s*=='
let s:C_TemplateEndif					 = '^==\s*ENDIF\s*=='
"
let s:C_Com1          				 = '/*'     " C-style : comment start
let s:C_Com2          				 = '*/'     " C-style : comment end
"
let s:C_ExpansionCounter       = {}
let s:C_TJT										 = '[ 0-9a-zA-Z_]*'
let s:C_TemplateJumpTarget1    = '<+'.s:C_TJT.'+>\|{+'.s:C_TJT.'+}'
let s:C_TemplateJumpTarget2    = '<-'.s:C_TJT.'->\|{-'.s:C_TJT.'-}'
let s:C_Macro                  = {'|AUTHOR|'         : 'first name surname',
											\						'|AUTHORREF|'      : '',
											\						'|EMAIL|'          : '',
											\						'|COMPANY|'        : '',
											\						'|PROJECT|'        : '',
											\						'|COPYRIGHTHOLDER|': '',
											\						'|STYLE|'          : ''
											\						}
let	s:C_MacroFlag								= {	':l' : 'lowercase'			,
											\							':u' : 'uppercase'			,
											\							':c' : 'capitalize'		,
											\							':L' : 'legalize name'	,
											\						}
let s:C_ActualStyle					= 'default'
let s:C_ActualStyleLast			= s:C_ActualStyle
let s:C_Template             = { 'default' : {} }

let s:C_ForTypes     = [
    \ 'char'                  ,
    \ 'int'                   ,
    \ 'long'                  ,
    \ 'long int'              ,
    \ 'long long'             ,
    \ 'long long int'         ,
    \ 'short'                 ,
    \ 'short int'             ,
    \ 'size_t'                ,
    \ 'unsigned'              , 
    \ 'unsigned char'         ,
    \ 'unsigned int'          ,
    \ 'unsigned long'         ,
    \ 'unsigned long int'     ,
    \ 'unsigned long long'    ,
    \ 'unsigned long long int',
    \ 'unsigned short'        ,
    \ 'unsigned short int'    ,
    \ ]

let s:C_ForTypes_Check_Order     = [
    \ 'char'                  ,
    \ 'int'                   ,
    \ 'long long int'         ,
    \ 'long long'             ,
    \ 'long int'              ,
    \ 'long'                  ,
    \ 'short int'             ,
    \ 'short'                 ,
    \ 'size_t'                ,
    \ 'unsigned short int'    ,
    \ 'unsigned short'        ,
    \ 'unsigned long long int',
    \ 'unsigned long long'    ,
    \ 'unsigned long int'     ,
    \ 'unsigned long'         ,
    \ 'unsigned int'          ,
    \ 'unsigned char'         ,
    \ 'unsigned'              ,
    \ ]

let s:MsgInsNotAvail	= "insertion not available for a fold" 
let s:MenuRun         = s:C_Root.'&Run'

"------------------------------------------------------------------------------

let s:C_SourceCodeExtensionsList	= split( s:C_SourceCodeExtensions, '\s\+' )

"------------------------------------------------------------------------------
"  C_Input: Input after a highlighted prompt     {{{1
"           3. argument : optional completion
"------------------------------------------------------------------------------
function! C_Input ( promp, text, ... )
	echohl Search																					" highlight prompt
	call inputsave()																			" preserve typeahead
	if a:0 == 0 || a:1 == ''
		let retval	=input( a:promp, a:text )
	else
		let retval	=input( a:promp, a:text, a:1 )
	endif
	call inputrestore()																		" restore typeahead
	echohl None																						" reset highlighting
	let retval  = substitute( retval, '^\s\+', "", "" )		" remove leading whitespaces
	let retval  = substitute( retval, '\s\+$', "", "" )		" remove trailing whitespaces
	return retval
endfunction    " ----------  end of function C_Input ----------
"------------------------------------------------------------------------------
"  C_Compile : C_Compile       {{{1
"------------------------------------------------------------------------------
"  The standard make program 'make' called by vim is set to the C or C++ compiler
"  and reset after the compilation  (setlocal makeprg=... ).
"  The errorfile created by the compiler will now be read by gvim and
"  the commands cl, cp, cn, ... can be used.
"------------------------------------------------------------------------------
let s:LastShellReturnCode	= 0			" for compile / link / run only

function! C_Compile ()

	let s:C_HlMessage = ""
	exe	":cclose"
	let	Sou		= expand("%:p")											" name of the file in the current buffer
	let	Obj		= expand("%:p:r").s:C_ObjExtension	" name of the object
	let SouEsc= escape( Sou, s:escfilename )
	let ObjEsc= escape( Obj, s:escfilename )
	if s:MSWIN
		let	SouEsc	= '"'.SouEsc.'"'
		let	ObjEsc	= '"'.ObjEsc.'"'
	endif

	" update : write source file if necessary
	exe	":update"

	" compilation if object does not exist or object exists and is older then the source
	if !filereadable(Obj) || (filereadable(Obj) && (getftime(Obj) < getftime(Sou)))
		" &makeprg can be a string containing blanks
		let makeprg_saved	= '"'.&makeprg.'"'
		if expand("%:e") == s:C_CExtension
			exe		"setlocal makeprg=".s:C_CCompiler
		else
			exe		"setlocal makeprg=".s:C_CplusCompiler
		endif
		"
		" COMPILATION
		"
		exe ":compiler ".s:C_VimCompilerName
		let v:statusmsg = ''
		let	s:LastShellReturnCode	= 0
		exe		"make ".s:C_CFlags." ".SouEsc." -o ".ObjEsc
		exe	"setlocal makeprg=".makeprg_saved
		if v:statusmsg == ''
			let s:C_HlMessage = "'".Obj."' : compilation successful"
		endif
		if v:shell_error != 0
			let	s:LastShellReturnCode	= v:shell_error
		endif
		"
		" open error window if necessary
		:redraw!
		exe	":botright cwindow"
	else
		let s:C_HlMessage = " '".Obj."' is up to date "
	endif

endfunction    " ----------  end of function C_Compile ----------

"===  FUNCTION  ================================================================
"          NAME:  C_CheckForMain
"   DESCRIPTION:  check if current buffer contains a main function
"    PARAMETERS:  
"       RETURNS:  0 : no main function
"===============================================================================
function! C_CheckForMain ()
	return  search( '^\(\s*int\s\+\)\=\s*main', "cnw" )
endfunction    " ----------  end of function C_CheckForMain  ----------
"
"------------------------------------------------------------------------------
"  C_Link : C_Link       {{{1
"------------------------------------------------------------------------------
"  The standard make program which is used by gvim is set to the compiler
"  (for linking) and reset after linking.
"
"  calls: C_Compile
"------------------------------------------------------------------------------
function! C_Link ()

	call	C_Compile()
	:redraw!
	if s:LastShellReturnCode != 0
		let	s:LastShellReturnCode	=  0
		return
	endif

	let s:C_HlMessage = ""
	let	Sou		= expand("%:p")						       		" name of the file (full path)
	let	Obj		= expand("%:p:r").s:C_ObjExtension	" name of the object file
	let	Exe		= expand("%:p:r").s:C_ExeExtension	" name of the executable
	let ObjEsc= escape( Obj, s:escfilename )
	let ExeEsc= escape( Exe, s:escfilename )
	if s:MSWIN
		let	ObjEsc	= '"'.ObjEsc.'"'
		let	ExeEsc	= '"'.ExeEsc.'"'
	endif

	if C_CheckForMain() == 0
		let s:C_HlMessage = "no main function in '".Sou."'"
		return
	endif

	" no linkage if:
	"   executable exists
	"   object exists
	"   source exists
	"   executable newer then object
	"   object newer then source

	if    filereadable(Exe)                &&
      \ filereadable(Obj)                &&
      \ filereadable(Sou)                &&
      \ (getftime(Exe) >= getftime(Obj)) &&
      \ (getftime(Obj) >= getftime(Sou))
		let s:C_HlMessage = " '".Exe."' is up to date "
		return
	endif

	" linkage if:
	"   object exists
	"   source exists
	"   object newer then source

	if filereadable(Obj) && (getftime(Obj) >= getftime(Sou))
		let makeprg_saved='"'.&makeprg.'"'
		if expand("%:e") == s:C_CExtension
			exe		"setlocal makeprg=".s:C_CCompiler
		else
			exe		"setlocal makeprg=".s:C_CplusCompiler
		endif
		exe ":compiler ".s:C_VimCompilerName
		let	s:LastShellReturnCode	= 0
		let v:statusmsg = ''
		silent exe "make ".s:C_LFlags." -o ".ExeEsc." ".ObjEsc." ".s:C_Libs
		if v:shell_error != 0
			let	s:LastShellReturnCode	= v:shell_error
		endif
		exe	"setlocal makeprg=".makeprg_saved
		"
		if v:statusmsg == ''
			let s:C_HlMessage = "'".Exe."' : linking successful"
		" open error window if necessary
		:redraw!
		exe	":botright cwindow"
		else
			exe ":botright copen"
		endif
	endif
endfunction    " ----------  end of function C_Link ----------
"
"------------------------------------------------------------------------------
"  C_Run : 	C_Run       {{{1
"  calls: C_Link
"------------------------------------------------------------------------------
"
let s:C_OutputBufferName   = "C-Output"
let s:C_OutputBufferNumber = -1
let s:C_RunMsg1						 ="' does not exist or is not executable or object/source older then executable"
let s:C_RunMsg2						 ="' does not exist or is not executable"
"
function! C_Run ()
"
	let s:C_HlMessage = ""
	let Sou  					= expand("%:p")											" name of the source file
	let Obj  					= expand("%:p:r").s:C_ObjExtension	" name of the object file
	let Exe  					= expand("%:p:r").s:C_ExeExtension	" name of the executable
	let ExeEsc  			= escape( Exe, s:escfilename )			" name of the executable, escaped
	let Quote					= ''
	if s:MSWIN
		let Quote					= '"'
	endif
	"
	let l:arguments     = exists("b:C_CmdLineArgs") ? b:C_CmdLineArgs : ''
	"
	let	l:currentbuffer	= bufname("%")
	"
	"==============================================================================
	"  run : run from the vim command line
	"==============================================================================
	if s:C_OutputGvim == "vim"
		"
		if s:C_MakeExecutableToRun !~ "^\s*$"
			call C_HlMessage( "executable : '".s:C_MakeExecutableToRun."'" )
			exe		'!'.Quote.s:C_MakeExecutableToRun.Quote.' '.l:arguments
		else

			silent call C_Link()
			if s:LastShellReturnCode == 0
				" clear the last linking message if any"
				let s:C_HlMessage = ""
				call C_HlMessage()
			endif
			"
			if	executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
				exe		"!".Quote.ExeEsc.Quote." ".l:arguments
			else
				echomsg "file '".Exe.s:C_RunMsg1
			endif
		endif

	endif
	"
	"==============================================================================
	"  run : redirect output to an output buffer
	"==============================================================================
	if s:C_OutputGvim == "buffer"
		let	l:currentbuffernr	= bufnr("%")
		"
		if s:C_MakeExecutableToRun =~ "^\s*$"
			call C_Link()
		endif
		if l:currentbuffer ==  bufname("%")
			"
			"
			if bufloaded(s:C_OutputBufferName) != 0 && bufwinnr(s:C_OutputBufferNumber)!=-1
				exe bufwinnr(s:C_OutputBufferNumber) . "wincmd w"
				" buffer number may have changed, e.g. after a 'save as'
				if bufnr("%") != s:C_OutputBufferNumber
					let s:C_OutputBufferNumber	= bufnr(s:C_OutputBufferName)
					exe ":bn ".s:C_OutputBufferNumber
				endif
			else
				silent exe ":new ".s:C_OutputBufferName
				let s:C_OutputBufferNumber=bufnr("%")
				setlocal buftype=nofile
				setlocal noswapfile
				setlocal syntax=none
				setlocal bufhidden=delete
				setlocal tabstop=8
			endif
			"
			" run programm
			"
			setlocal	modifiable
			if s:C_MakeExecutableToRun !~ "^\s*$"
				call C_HlMessage( "executable : '".s:C_MakeExecutableToRun."'" )
				exe		'%!'.Quote.s:C_MakeExecutableToRun.Quote.' '.l:arguments
				setlocal	nomodifiable
				"
				if winheight(winnr()) >= line("$")
					exe bufwinnr(l:currentbuffernr) . "wincmd w"
				endif
			else
				"
				if	executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
					exe		"%!".Quote.ExeEsc.Quote." ".l:arguments
					setlocal	nomodifiable
					"
					if winheight(winnr()) >= line("$")
						exe bufwinnr(l:currentbuffernr) . "wincmd w"
					endif
				else
					setlocal	nomodifiable
					:close
					echomsg "file '".Exe.s:C_RunMsg1
				endif
			endif
			"
		endif
	endif
	"
	"==============================================================================
	"  run : run in a detached xterm  (not available for MS Windows)
	"==============================================================================
	if s:C_OutputGvim == "xterm"
		"
		if s:C_MakeExecutableToRun !~ "^\s*$"
			if s:MSWIN
				exe		'!'.Quote.s:C_MakeExecutableToRun.Quote.' '.l:arguments
			else
				silent exe '!xterm -title '.s:C_MakeExecutableToRun.' '.s:C_XtermDefaults.' -e '.s:C_Wrapper.' '.s:C_MakeExecutableToRun.' '.l:arguments.' &'
				:redraw!
				call C_HlMessage( "executable : '".s:C_MakeExecutableToRun."'" )
			endif
		else

			silent call C_Link()
			"
			if	executable(Exe) && getftime(Exe) >= getftime(Obj) && getftime(Obj) >= getftime(Sou)
				if s:MSWIN
					exe		"!".Quote.ExeEsc.Quote." ".l:arguments
				else
					silent exe '!xterm -title '.ExeEsc.' '.s:C_XtermDefaults.' -e '.s:C_Wrapper.' '.ExeEsc.' '.l:arguments.' &'
					:redraw!
				endif
			else
				echomsg "file '".Exe.s:C_RunMsg1
			endif
		endif
	endif

endfunction    " ----------  end of function C_Run ----------
"
"------------------------------------------------------------------------------
"  C_Arguments : Arguments for the executable       {{{1
"------------------------------------------------------------------------------
function! C_Arguments ()
	let	Exe		  = expand("%:r").s:C_ExeExtension
  if Exe == ""
		redraw
		echohl WarningMsg | echo "no file name " | echohl None
		return
  endif
	let	prompt	= 'command line arguments for "'.Exe.'" : '
	if exists("b:C_CmdLineArgs")
		let	b:C_CmdLineArgs= C_Input( prompt, b:C_CmdLineArgs, 'file' )
	else
		let	b:C_CmdLineArgs= C_Input( prompt , "", 'file' )
	endif
endfunction    " ----------  end of function C_Arguments ----------
"------------------------------------------------------------------------------
"  C_MakeArguments : run make(1)       {{{1
"------------------------------------------------------------------------------

let s:C_MakeCmdLineArgs   	= ''   " command line arguments for Run-make; initially empty
let s:C_MakeExecutableToRun	= ''
"
function! C_Make()
	exe	":cclose"
	" update : write source file if necessary
	exe	":update"
	" run make
  exe ":compiler " . s:C_VimCompilerName
	let makeprg_saved	= '"'.&makeprg.'"'
	exe		"setlocal makeprg=make"
	exe	":make ".s:C_MakeCmdLineArgs
	exe	"setlocal makeprg=".makeprg_saved
	exe	":botright cwindow"
	"
endfunction    " ----------  end of function C_Make ----------
"
function! C_MakeClean()
	" run make clean
	exe		":!make clean"
endfunction    " ----------  end of function C_MakeClean ----------

function! C_MakeArguments ()
	let	s:C_MakeCmdLineArgs= C_Input( 'make command line arguments : ', s:C_MakeCmdLineArgs, 'file' )
endfunction    " ----------  end of function C_MakeArguments ----------

function! C_MakeExeToRun ()
	let	s:C_MakeExecutableToRun = C_Input( 'executable to run [tab compl.]: ', '', 'file' )
	if s:C_MakeExecutableToRun !~ "^\s*$"
		if s:MSWIN
			let s:C_MakeExecutableToRun = substitute(s:C_MakeExecutableToRun, '\\ ', ' ', 'g' )
		endif
		let	s:C_MakeExecutableToRun = escape( getcwd().'/', s:escfilename ).s:C_MakeExecutableToRun
	endif
endfunction    " ----------  end of function C_MakeExeToRun ----------
"
"------------------------------------------------------------------------------
"  C_SplintArguments : splint command line arguments       {{{1
"------------------------------------------------------------------------------
function! C_SplintArguments ()
	if s:C_SplintIsExecutable==0
		let s:C_HlMessage = ' Splint is not executable or not installed! '
	else
		let	prompt	= 'Splint command line arguments for "'.expand("%").'" : '
		if exists("b:C_SplintCmdLineArgs")
			let	b:C_SplintCmdLineArgs= C_Input( prompt, b:C_SplintCmdLineArgs )
		else
			let	b:C_SplintCmdLineArgs= C_Input( prompt , "" )
		endif
	endif
endfunction    " ----------  end of function C_SplintArguments ----------
"
"------------------------------------------------------------------------------
"  C_SplintCheck : run splint(1)        {{{1
"------------------------------------------------------------------------------
function! C_SplintCheck ()
	if s:C_SplintIsExecutable==0
		let s:C_HlMessage = ' Splint is not executable or not installed! '
		return
	endif
	let	l:currentbuffer=bufname("%")
	if &filetype != "c" && &filetype != "cpp"
		let s:C_HlMessage = ' "'.l:currentbuffer.'" seems not to be a C/C++ file '
		return
	endif
	let s:C_HlMessage = ""
	exe	":cclose"
	silent exe	":update"
	let makeprg_saved='"'.&makeprg.'"'
	" Windows seems to need this:
	if	s:MSWIN
		:compiler splint
	endif
	:setlocal makeprg=splint
	"
	let l:arguments  = exists("b:C_SplintCmdLineArgs") ? b:C_SplintCmdLineArgs : ' '
	silent exe	"make ".l:arguments." ".escape(l:currentbuffer,s:escfilename)
	exe	"setlocal makeprg=".makeprg_saved
	exe	":botright cwindow"
	"
	" message in case of success
	"
	if l:currentbuffer == bufname("%")
		let s:C_HlMessage = " Splint --- no warnings for : ".l:currentbuffer
	endif
endfunction    " ----------  end of function C_SplintCheck ----------
"
"------------------------------------------------------------------------------
"  C_HlMessage : indent message     {{{1
"------------------------------------------------------------------------------
function! C_HlMessage ( ... )
	redraw!
	echohl Search
	if a:0 == 0
		echo s:C_HlMessage
	else
		echo a:1
	endif
	echohl None
endfunction    " ----------  end of function C_HlMessage ----------
"
"------------------------------------------------------------------------------
