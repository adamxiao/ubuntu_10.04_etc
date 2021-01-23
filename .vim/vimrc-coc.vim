" adam coc vim plugin configuration

" 插件管理
source ~/.vim/plug.vim
call plug#begin('~/.vim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" 插件配置
source ~/.vim/coc_conf.vim
source ~/.vim/plug_conf.vim

" 其他基本配置
source ~/.vim/basic.vim

