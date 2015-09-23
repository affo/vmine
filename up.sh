#!/bin/bash

# Prerequisites
sudo apt-get update && sudo apt-get -yq install git vim

# For colors and autojump
mkdir -p $HOME/.config
git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell
git clone https://github.com/wting/autojump.git $HOME/autojump

# Clone my repos
git clone https://github.com/affo/dotfiles.git
git clone https://github.com/affo/vim.git

# Move dotfiles in homedir
for df in `ls dotfiles`; do
    cp dotfiles/$df ./.$df
done

echo ""
echo ""
echo "[vim] If you need vim configuration: \`\$ cd vim; make\`"
echo ""
echo "[autojump] For autojump settings: \`\$ cd autojump; make; cd; source .bashrc\`"
echo ""
