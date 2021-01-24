" .....................
" scrooloose/nerdtree
" .....................
" refer https://github.com/nickjj/dotfiles/blob/6579639ceb4ae546355e93f94bde3c817ee4da15/.vimrc

let g:NERDTreeShowHidden=0
let g:NERDTreeAutoDeleteBuffer=1
let g:NERDTreeQuitOnOpen=0

" Open nerd tree at the current file or close nerd tree if pressed again.
nnoremap <silent> <expr> <Leader>a g:NERDTree.IsOpen() ? "\:NERDTreeClose<CR>" : bufexists(expand('%')) ? "\:NERDTreeFind<CR>" : "\:NERDTree<CR>"

nmap <Leader>t :Files<CR>
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


let g:alternateNoDefaultAlternate = 1
let g:alternateRelativeFiles = 1
let g:alternateSearchPath = 'wdr:include,sfr:../src,sfr:../include,sfr:..'
" a.vim plugin

let g:snips_author = 'Adam Xiao'
let g:snips_authorref = 'iefcu'
let g:snips_email = 'iefcuxy@gmail.com'
let g:snipMate = { 'snippet_version' : 1 }
imap <C-J> <Plug>snipMateNextOrTrigger
smap <C-J> <Plug>snipMateNextOrTrigger
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
