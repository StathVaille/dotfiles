#!/bin/bash

set -e
set -o pipefail

# Apt
sudo apt install -y vim curl netcat git zsh 

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Vim
mkdir -p ~/.vim/autoload ~/.vim/bundle 
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cp .vimrc ~/.vimrc

# ZSH
cp .zshrc ~/.zshrc

