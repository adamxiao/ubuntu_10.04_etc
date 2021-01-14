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
set background=dark
colorscheme gruvbox

" file type detect
au! BufRead,BufNewFile *.json set filetype=json
au BufRead,BufNewFile *.txt setlocal ft=txt

" shortcut command 
command! DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
		\ | wincmd p | diffthis

" key mapping
map <F3> :NERDTreeToggle<cr>
nmap <F4> :vimgrep /\<<C-R>=expand("<cword>")<CR>\>/ **/*
map <F6> :cp<CR>
map <F7> :cn<CR>
nmap <F8> :TagbarToggle<CR>
map <F12> :call Do_CsTag()<CR>
map <F12><F12> :call Add_CsTag()<CR>
" Clear search highlights.
map <silent> <Leader><Space> :noh<CR>
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


" FIXME: vimdiff should't restore last position
" restore last position
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \    exe "normal! g`\"" |
    \
