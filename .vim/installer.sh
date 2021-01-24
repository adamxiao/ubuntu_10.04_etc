#!/bin/bash

## 1. first prepare plugins
#vim -c 'PlugInstall|q'
## 2. tar data
##tar -cJf /tmp/data.bin .vim .fzf .tmux.conf .zshrc .oh-my-zsh README.md

echo ""
echo "Simple vimrc Installer"
echo ""

# Create destination folder
# backup origin config
[ -f $HOME/.tmux.conf ] && cp $HOME/.tmux.conf{,.org}

# Find __ARCHIVE__ maker, read archive content and decompress it
ARCHIVE=$(awk '/^__ARCHIVE__/ {print NR + 1; exit 0; }' "${0}")
tail -n+${ARCHIVE} "${0}" | tar xpJv -C $HOME

# Put your logic here (if you need)
ln -sf $HOME/.vim/vimrc-simple.vim $HOME/.vimrc
mkdir -p $HOME/.vim_swap
bash $HOME/.fzf/install
# yum install -y zsh tmux ack ag, rg ctags git ?
# ctags => tagbar
# git => vim-gitgutter

echo ""
echo "Installation complete."
echo ""

# Exit from the script with success (0)
exit 0

__ARCHIVE__
