" ------------------------------------------------------------------------------
"
" Vim filetype plugin file
"
"   Language :  C / C++
"     Plugin :  c.vim
" Maintainer :  Fritz Mehner <mehner@fh-swf.de>
"   Revision :  $Id: c.vim,v 1.69 2011/08/28 15:46:38 mehner Exp $
"
" ------------------------------------------------------------------------------
"
" Only do this when not done yet for this buffer
"
if exists("b:did_C_ftplugin")
  finish
endif
let b:did_C_ftplugin = 1
"
" ---------- system installation or local installation ----------
"
let s:installation				= 'local'
if match( expand("<sfile>"), escape( $VIM, ' \' ) ) == 0
	let s:installation						= 'system'
endif
"
" ---------- Do we have a mapleader other than '\' ? ------------
"
if exists("g:C_MapLeader")
  let maplocalleader  = g:C_MapLeader
endif
"
" ---------- C/C++ dictionary -----------------------------------
" This will enable keyword completion for C and C++
" using Vim's dictionary feature |i_CTRL-X_CTRL-K|.
" Set the new dictionaries in front of the existing ones
"
if exists("g:C_Dictionary_File")
  let save=&dictionary
  silent! exe 'setlocal dictionary='.g:C_Dictionary_File
  silent! exe 'setlocal dictionary+='.save
endif
"
" ---------- F-key mappings  ------------------------------------
"
"   Alt-F9   write buffer and compile
"       F9   compile and link
"  Ctrl-F9   run executable
" Shift-F9   command line arguments
"
 map  <buffer>  <silent>  <A-F9>       :call C_Compile()<CR>:call C_HlMessage()<CR>
imap  <buffer>  <silent>  <A-F9>  <C-C>:call C_Compile()<CR>:call C_HlMessage()<CR>
"
 map  <buffer>  <silent>    <F9>       :call C_Link()<CR>:call C_HlMessage()<CR>
imap  <buffer>  <silent>    <F9>  <C-C>:call C_Link()<CR>:call C_HlMessage()<CR>
"
 map  <buffer>  <silent>  <C-F9>       :call C_Run()<CR>
imap  <buffer>  <silent>  <C-F9>  <C-C>:call C_Run()<CR>
"
 map  <buffer>  <silent>  <S-F9>       :call C_Arguments()<CR>
imap  <buffer>  <silent>  <S-F9>  <C-C>:call C_Arguments()<CR>
"

" ---------- KEY MAPPINGS : MENU ENTRIES -------------------------------------
"
" ---------- run menu --------------------------------------------------------
"
 map    <buffer>  <silent>  <LocalLeader>rc         :call C_Compile()<CR>:call C_HlMessage()<CR>
 map    <buffer>  <silent>  <LocalLeader>rl         :call C_Link()<CR>:call C_HlMessage()<CR>
 map    <buffer>  <silent>  <LocalLeader>rr         :call C_Run()<CR>
 map    <buffer>  <silent>  <LocalLeader>ra         :call C_Arguments()<CR>
 map    <buffer>  <silent>  <LocalLeader>rm         :call C_Make()<CR>
 map    <buffer>  <silent>  <LocalLeader>rmc        :call C_MakeClean()<CR>
 map    <buffer>  <silent>  <LocalLeader>rme        :call C_MakeExeToRun()<CR>
 map    <buffer>  <silent>  <LocalLeader>rma        :call C_MakeArguments()<CR>
 map    <buffer>  <silent>  <LocalLeader>rp         :call C_SplintCheck()<CR>:call C_HlMessage()<CR>
 map    <buffer>  <silent>  <LocalLeader>rpa        :call C_SplintArguments()<CR>
"
"-------------------------------------------------------------------------------
" additional mapping : complete a classical C comment: '/* ' => '/* | */'
"-------------------------------------------------------------------------------
inoremap  <buffer>  /*       /*<Space><Space>*/<Left><Left><Left>
vnoremap  <buffer>  /*      s/*<Space><Space>*/<Left><Left><Left><Esc>p
"
"-------------------------------------------------------------------------------
" additional mapping : complete a classical C comment: '/*' => '/*! | */'
"-------------------------------------------------------------------------------
" added by adam 2012-09-25
vnoremap  <buffer>  /*<Space>      s/*!<<Space><Space>*/<Left><Left><Left><Esc>p
"
"-------------------------------------------------------------------------------
" additional mapping : complete a classical C multi-line comment:
"                      '/*<CR>' =>  /*
"                                    * |
"                                    */
"-------------------------------------------------------------------------------
inoremap  <buffer>  /*<CR>  /*!<CR><CR>/<Esc>kA<Space>
"
"-------------------------------------------------------------------------------
" additional mapping : {<CR> always opens a block
"-------------------------------------------------------------------------------
inoremap  <buffer>  {<CR>    {<CR>}<Esc>O
vnoremap  <buffer>  {<CR>   S{<CR>}<Esc>Pk=iB
"
