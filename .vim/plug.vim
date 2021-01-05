" 使用vim-plug管理vim插件
" 定义插件目录
"call plug#begin('~/.vim/plugged')
call plug#begin('~/.vim/bundle')

" colorscheme
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
" git plugins
Plug 'zivyangll/git-blame.vim'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/vcscommand.vim'
" comment quickly
Plug 'scrooloose/nerdcommenter'
" tag plugin
Plug 'majutsushi/tagbar'
" file(tag) fuzzy search
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" code static analysis
Plug 'dense-analysis/ale'
" complete plugin
"Plug 'Valloric/YouCompleteMe'
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" align plugin
Plug 'junegunn/vim-easy-align'
"Plug 'godlygeek/tabular'
" async plugin
Plug 'skywind3000/asyncrun.vim'
" directory(file) tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" status plugin
Plug 'vim-airline/vim-airline'
"" source header switch
Plug 'vim-scripts/a.vim'
"" buffer files switch
Plug 'jlanzarotta/bufexplorer'
"" file encodings detect
Plug 'mbbill/fencview'
"" code snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate' | Plug 'honza/vim-snippets'
"Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" match %
Plug 'Kris2k/matchit'
" highlight keyword
Plug 'dimasg/vim-mark'

" Initialize plugin system
call plug#end()