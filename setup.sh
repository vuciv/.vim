#!/bin/sh

# Install vim-plug on linux
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Make dir if doesn't exist and add config
mkdir -p ~/.config/nvim && cp init.vim ~/.config/nvim
cp -r colors ~/.config/nvim

vim +PlugInstall +qa
vim +PlugUpdate +qa
