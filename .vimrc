""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 1. basic config
set nocp
syn on
" Nuts and Bolts config
set langmenu=zh_CN.UTF-8
set encoding=UTF-8
set termencoding=UTF-8
"language message zh_CN.UTF-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
" encoding config
set tabstop=4
set shiftwidth=0
let g:python_recommended_style = 0
"set list
set listchars=tab:▸-
set modeline
":%retab!
"set listchars=tab:▸-,eol:↩︎,trail:-
" indent config
set hlsearch
set incsearch
set ignorecase
set smartcase
" search config
set dir=~/.vim_swap
" swap file dir config
set laststatus=2
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P>
" status bar config
set foldmethod=manual
set diffopt=filler,vertical
set display=lastline
colorscheme desert

" file type detect
au! BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.txt setlocal ft=txt

" shortcut command 
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		\ | wincmd p | diffthis

" key mapping
"map <F2> :A<cr>
map <F3> :NERDTreeToggle<cr>
nmap <F4> :vimgrep /\<<C-R>=expand("<cword>")<CR>\>/ **/*
"nmap <F5> :make<CR>
"map <F6> :cw<CR>
"map <F6><F6> :ccl<CR>
map <F6> :cp<CR>
map <F7> :cn<CR>
nmap <F8> :TagbarToggle<CR>
map <F12> :call Do_CsTag()<CR>
map <F12><F12> :call Add_CsTag()<CR>
" basic key mapping

vnoremap <silent> * y/<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
vnoremap <silent> # y?<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR><CR>
nmap <C-H> :%s/\<<C-R>=expand("<cword>")<CR>\>/
vmap <C-H> y:%s/<C-R>=substitute(escape(@", '^$~.*\\/[]'), "\n", '\\n', 'g')<CR>/
"nmap ,a ggVG
map <S-q><S-q> :qa!<CR>
nmap <Up> gk
nmap <Down> gj
nmap <S-t> :tabnew <CR>
" other util key mapping

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>   
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>   
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" cscope key map


set path+=**/**
"set tags=tags;,~/.vim/systags,~/.vim/libtags
set tags=tags;
" taglist config

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ plugin config

"set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
" https://github.com/VundleVim/Vundle.vim.git
set rtp+=~/.fzf
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'VundleVim/Vundle.vim'
" let Vundle manage Vundle, required
Plugin 'zivyangll/git-blame.vim'
Plugin 'airblade/vim-gitgutter'
"Plugin 'vim-scripts/vcscommand.vim'
" git plugins
Plugin 'scrooloose/nerdcommenter'
" comment quickly
Plugin 'majutsushi/tagbar'
Plugin 'junegunn/fzf.vim'
" file(tag) fuzzy search
Plugin 'dense-analysis/ale'
" code static analysis
Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plugin 'junegunn/vim-easy-align'
"Plugin 'godlygeek/tabular'
" code easy align
Plugin 'skywind3000/asyncrun.vim'
" async plugin

Plugin 'vim-airline/vim-airline'
" status plugin

" TODO: plugin update
"Plugin 'scrooloose/nerdtree'
"" directory(file) tree
"Plugin 'vim-scripts/a.vim'
"" source header switch
"Plugin 'jlanzarotta/bufexplorer'
"" buffer files switch
"Plugin 'mbbill/fencview'
"" file encodings detect
"Plugin 'honza/vim-snippets'
"" code snippets
"Plugin 'vim-scripts/vcscommand.vim'
" git code manager
"Plugin 'Kris2k/matchit'
" match % out of date, 用的较少了
"Plugin 'dimasg/vim-mark'
" highlight keyword

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

filetype plugin on
filetype plugin indent on
" set plugin on

" ack grep map
"nmap <F4> :Ack --cpp -w <C-R>=expand("<cword>")<CR>

nmap <C-P> :Files<CR>
" file(tag) fuzzy search

if has('python')
  map <C-I> :pyf /usr/share/vim/addons/syntax/clang-format.py<cr>
elseif has('python3')
  map <C-I> :py3f /usr/share/vim/addons/syntax/clang-format.py<cr>
endif

nnoremap <Leader>s :<C-u>call gitblame#echo()<CR>
" git-blame plugin conf

let g:ycm_filetype_whitelist = {
			\ "c":1,
			\ "cpp":1, 
			\ }
let g:ycm_use_clangd = 1
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
let g:ycm_show_diagnostics_ui = 0
" disable syntax checker
let g:ycm_confirm_extra_conf = 0
" disable confirm extra ycm conf loaded
" refer https://www.cnblogs.com/chris-cp/p/4589249.html                                              
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
" YCM plugin

let g:ale_cpp_cpplint_options = "--verbose=5 --linelength=120 --filter=-copyright,-legal"
"let g:ale_cpp_cppcheck_options = ''
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_linters = {'cpp': ['cppcheck', 'cpplint']}
" ale plugin


let g:SuperTabDefaultCompletionType = "context"
" supertab plugin config


let g:alternateNoDefaultAlternate = 1
let g:alternateRelativeFiles = 1
"let g:alternateSearchPath = 'reg:#src/\([^/]*\)#src/include/\1##,reg:#include/\([^/]*\)#\1##,reg:#crmframe/\([^/]*\)#include/\1##,reg:#include/\([^/]*\)#crmframe/\1##'
"let g:alternateSearchPath = 'reg:#./#./include##,reg:reg:#./include#./##,reg'
let g:alternateSearchPath = 'wdr:include,sfr:../src,sfr:../include,sfr:..'
" a.vim plugin

let g:snips_author = 'Adam Xiao'
let g:snips_authorref = 'iefcu'
let g:snips_email = 'iefcuxy@gmail.com'
" snippet plugin

let g:tagbar_type_go = {  
    \ 'ctagstype' : 'go',  
    \ 'kinds'     : [  
        \ 'p:package',  
        \ 'i:imports:1',  
        \ 'c:constants',  
        \ 'v:variables',  
        \ 't:types',  
        \ 'n:interfaces',  
        \ 'w:fields',  
        \ 'e:embedded',  
        \ 'm:methods',  
        \ 'r:constructor',  
        \ 'f:functions'  
    \ ],  
    \ 'sro' : '.',  
    \ 'kind2scope' : {  
        \ 't' : 'ctype',  
        \ 'n' : 'ntype'  
    \ },  
    \ 'scope2kind' : {  
        \ 'ctype' : 't',  
        \ 'ntype' : 'n'  
    \ },  
    \ 'ctagsbin'  : 'gotags',  
    \ 'ctagsargs' : '-sort -silent'  
\ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ------ function definition

function! Do_CsTag()
	if MySys() == 'linux'
                silent! execute "AsyncRun ctags -R --fields=+iaS --extra=+q --languages=c,c++ --extra=+f '.'"
	elseif MySys() == 'windows'
		silent! execute "AsyncRun ctags -R ."
	endif
    if(executable('cscope') && has("cscope") )
        silent! execute "AsyncRun find -L `pwd` -name '*.h' -o -name '*.c' -o -name '*.cpp' -o -name '*.java' -o -name '*.cs' -o     -name '*.cxx' -o -name '*.hxx'> cscope.files -o -name '*.hpp' -o -name '*.py'"   
        silent! execute "AsyncRun cscope -bq"
	endif
    silent! execute "call Add_CsTag()"
endf

function! Add_CsTag()
    if filereadable("cscope.out")
        execute "cs add cscope.out"
        execute "set tags+=./tags"
    endif
endf

silent! execute "call Add_CsTag()"
" ------定义增加tags和cscope函数

" Platform
function! MySys()
  if has("win16") || has("win32") || has("win64") || has("win95")
    return "windows"
  else
    return "linux"
  endif
endfunction

"nnoremap <c-]> :call <SID>JumpToTag()<cr>
nnoremap <c-]> :call <SID>Tag()<cr>

"function! s:JumpToTag()
function! s:Tag()
  " try to find a word under the cursor
  let current_word = expand("<cword>")

  " check if there is one
  if current_word == ''
    echomsg "No word under the cursor"
    return
  endif

  " find all tags for the given word
  let tags = taglist('^'.current_word.'$')

  " if no tags are found, bail out
  if empty(tags)
    echomsg "No tags found for: ".current_word
    return
  endif

  let new_tags = []
  let index = 1
  for entry in tags
    call add(new_tags, {
          \ 'id':  index,
          \ 'filename': entry['filename'],
          \ 'kind': entry['kind'],
          \ })
    let index = index + 1
  endfor

  " take the first tag, or implement some more complicated logic here
  let new_tags = sort(new_tags, 'TagPriority')
  let choose_index = new_tags[0].id

  exec ':'.choose_index.'tag '.current_word
endfunction

function! TagPriority(i1, i2)
  let bufdir = expand('%:p:h')
  let file1 = fnamemodify( a:i1['filename'], ':p:h')
  let file2 = fnamemodify( a:i2['filename'], ':p:h')
  let file_priorityl1 = 0
  let file_priorityl2 = 0

  if a:i1['filename'] == expand('%:p')
    file_priorityl1 = 0
  elseif file1 == bufdir
    let file_priorityl1 = 1
  else
    let file_priorityl1 = 2
  endif

  if a:i2['filename'] == expand('%:p')
    let file_priorityl2 = 0
  elseif file2 == bufdir
    let file_priorityl2 = 1
  else
    let file_priorityl2 = 2
  endif

  " sort by file path priority
  "return file_priorityl1 == file_priorityl2 ? 0 : file_priorityl1 > file_priorityl2 ? 1 : -1
  if file_priorityl1 != file_priorityl2
    return file_priorityl1 > file_priorityl2 ? 1 : -1
  endif

  " XXX: sort by kind priority ?
  "let kind_priority = ['c', 't', 'p', 'f']
  return a:i1['kind'] == a:i2['kind'] ? 0 : a:i1['kind'] > a:i2['kind'] ? 1 : -1
endfunc

function! s:Tselect(...)
  let tagname = (a:0 > 0)? a:1 : expand('<cword>')
  let tags = taglist("^". tagname . "$")
  let tags = sort(tags, 'TagPriority')

  " Prepare them for inserting in the quickfix window
  let qf_taglist = []
  for entry in tags
    call add(qf_taglist, {
          \ 'pattern':  entry['cmd'],
          \ 'filename': entry['filename'],
          \ })
  endfor

  " Place the tags in the quickfix window, if possible
  if len(qf_taglist) > 0
    call setqflist(qf_taglist)
    copen
  else
    echo "No tags found for ".a:name
  endif
endfunc

command! -nargs=? Tselect call s:Tselect(<f-args>)
nnoremap <leader>q :call <SID>Tselect()<cr>

" restore last position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \    exe "normal! g`\"" |
    \ endif
