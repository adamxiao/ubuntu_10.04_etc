#!/bin/bash

echo ""
echo "Simple vimrc Installer"
echo ""

# Create destination folder
DESTINATION="$HOME/.vim"
mkdir -p ${DESTINATION}

# Find __ARCHIVE__ maker, read archive content and decompress it
ARCHIVE=$(awk '/^__ARCHIVE__/ {print NR + 1; exit 0; }' "${0}")
tail -n+${ARCHIVE} "${0}" | tar xpJv -C ${DESTINATION}

# Put your logic here (if you need)
mkdir -p $HOME/.vim_swap
# yum install -y ack ag, rg ctags git ?
# ctags => tagbar
# git => vim-gitgutter

echo ""
echo "Installation complete."
echo ""

# Exit from the script with success (0)
exit 0

__ARCHIVE__
